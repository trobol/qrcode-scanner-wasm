var cubeRotation = 0.0;
// will set to true when video can be copied to texture
var copyVideo = false;
var qrTansform;
main();

//
// Start here
//
function main() {
	const canvas = document.querySelector('#glcanvas');
	const gl = canvas.getContext('webgl');

	// If we don't have a GL context, give up now

	if (!gl) {
		alert('Unable to initialize WebGL. Your browser or machine may not support it.');
		return;
	}

	// Vertex shader program

	const cubeVertSource = `
    attribute vec4 aVertexPosition;
    attribute vec3 aVertexNormal;

    uniform mat4 uNormalMatrix;
    uniform mat4 uModelViewMatrix;
		uniform mat4 uProjectionMatrix;
		
    varying highp vec3 vLighting;

    void main(void) {
      gl_Position = uProjectionMatrix * uModelViewMatrix * aVertexPosition;

      // Apply lighting effect

      highp vec3 ambientLight = vec3(0.3, 0.3, 0.3);
      highp vec3 directionalLightColor = vec3(1, 1, 1);
      highp vec3 directionalVector = normalize(vec3(0.85, 0.8, 0.75));

      highp vec4 transformedNormal = uNormalMatrix * vec4(aVertexNormal, 1.0);

      highp float directional = max(dot(transformedNormal.xyz, directionalVector), 0.0);
      vLighting = ambientLight + (directionalLightColor * directional);
    }
  `;

	// Fragment shader program

	const cubeFragSource = `
    varying highp vec3 vLighting;

    void main(void) {
     
      gl_FragColor = vec4(vLighting, 1);
    }
	`;

	const backgroundVertSource = `
    attribute vec4 aVertexPosition;
		attribute vec2 aTextureCoord;

    varying highp vec2 vTextureCoord;


    void main(void) {
      gl_Position = aVertexPosition;
      vTextureCoord = aTextureCoord;
    }
	`;
	const backgroundFragSource = `
		varying highp vec2 vTextureCoord;

    uniform sampler2D uSampler;

    void main(void) {
      highp vec4 texelColor = texture2D(uSampler, vTextureCoord);

      gl_FragColor = texelColor;
    }
	`;

	// Initialize a shader program; this is where all the lighting
	// for the vertices and so forth is established.
	const cubeShaderProgram = initShaderProgram(gl, cubeVertSource, cubeFragSource);
	const backgroundShaderProgram = initShaderProgram(gl, backgroundVertSource, backgroundFragSource);

	// Collect all the info needed to use the shader program.
	// Look up which attributes our shader program is using
	// for aVertexPosition, aVertexNormal, aTextureCoord,
	// and look up uniform locations.
	const programInfo = {
		cubeProgram: cubeShaderProgram,
		backgroundProgram: backgroundShaderProgram,
		attribLocations: {
			vertexPosition: gl.getAttribLocation(cubeShaderProgram, 'aVertexPosition'),
			backgroundVertexPosition: gl.getAttribLocation(backgroundShaderProgram, 'aVertexPosition'),
			vertexNormal: gl.getAttribLocation(cubeShaderProgram, 'aVertexNormal'),
			textureCoord: gl.getAttribLocation(backgroundShaderProgram, 'aTextureCoord'),

		},
		uniformLocations: {
			projectionMatrix: gl.getUniformLocation(cubeShaderProgram, 'uProjectionMatrix'),
			backgroundProjectionMatrix: gl.getUniformLocation(backgroundShaderProgram, 'uProjectionMatrix'),
			modelViewMatrix: gl.getUniformLocation(cubeShaderProgram, 'uModelViewMatrix'),
			normalMatrix: gl.getUniformLocation(cubeShaderProgram, 'uNormalMatrix'),
			uSampler: gl.getUniformLocation(backgroundShaderProgram, 'uSampler'),
		},
	};

	// Here's where we call the routine that builds all the
	// objects we'll be drawing.
	const buffers = initBuffers(gl);

	const texture = initTexture(gl);

	const video = setupVideo();

	var then = 0;

	// Draw the scene repeatedly
	function render(now) {
		now *= 0.001;  // convert to seconds
		const deltaTime = now - then;
		then = now;

		if (copyVideo) {
			updateTexture(gl, texture, video);
			updateQrTransform(video);
		}

		drawScene(gl, programInfo, buffers, texture, deltaTime);

		requestAnimationFrame(render);
	}
	requestAnimationFrame(render);
}
var qrCanvas, qrctx;
function updateQrTransform(video) {

	qrctx.drawImage(video, 0, 0,
		video.videoWidth,
		video.videoHeight);
	try {
		qrTansform = qrcode.getLocation(qrCanvas, qrctx);
		console.log(qrTansform);
	} catch (msg) {
		console.log(msg);

		//qrTansform = null;
	}
}

function setupVideo(url) {
	const video = document.createElement('video');
	qrCanvas = document.createElement('canvas');
	qrctx = qrCanvas.getContext('2d');
	var playing = false;
	var timeupdate = false;


	// Waiting for these 2 events ensures
	// there is data in the video

	video.addEventListener('playing', function () {
		playing = true;
		checkReady();
	}, true);

	video.addEventListener('timeupdate', function () {
		timeupdate = true;
		checkReady();
	}, true);
	navigator.mediaDevices.getUserMedia({ audio: false, video: true }).then(function (stream) {
		console.log("got media");
		video.srcObject = stream;
		video.play();
	}, (err, msg) => console.log(new Error(err)));

	function checkReady() {
		if (playing && timeupdate) {
			copyVideo = true;
			qrCanvas.width = video.videoWidth;
			qrCanvas.height = video.videoHeight;
		}
	}

	return video;
}


function initBuffers(gl) {

	//setup background
	const backgroundTextureCoordBuffer = gl.createBuffer();
	gl.bindBuffer(gl.ARRAY_BUFFER, backgroundTextureCoordBuffer);

	const backgroundTextureCoordinates = [
		1.0, 1.0,
		0.0, 1.0,
		0.0, 0.0,
		1.0, 0.0,
	];

	gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(backgroundTextureCoordinates),
		gl.STATIC_DRAW);

	const backgroundPositionBuffer = gl.createBuffer();

	gl.bindBuffer(gl.ARRAY_BUFFER, backgroundPositionBuffer);

	const backgroundPositions = [
		// Front face
		-1.0, -1.0, 1.0,
		1.0, -1.0, 1.0,
		1.0, 1.0, 1.0,
		-1.0, 1.0, 1.0,
	];

	gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(backgroundPositions), gl.STATIC_DRAW);


	// Create a buffer for the cube's vertex positions.
	const cubePositionBuffer = gl.createBuffer();

	// Select the positionBuffer as the one to apply buffer
	// operations to from here out.
	gl.bindBuffer(gl.ARRAY_BUFFER, cubePositionBuffer);


	const positions = [
		// Front face
		-1.0, -1.0, 1.0,
		1.0, -1.0, 1.0,
		1.0, 1.0, 1.0,
		-1.0, 1.0, 1.0,

		// Back face
		-1.0, -1.0, -1.0,
		-1.0, 1.0, -1.0,
		1.0, 1.0, -1.0,
		1.0, -1.0, -1.0,

		// Top face
		-1.0, 1.0, -1.0,
		-1.0, 1.0, 1.0,
		1.0, 1.0, 1.0,
		1.0, 1.0, -1.0,

		// Bottom face
		-1.0, -1.0, -1.0,
		1.0, -1.0, -1.0,
		1.0, -1.0, 1.0,
		-1.0, -1.0, 1.0,

		// Right face
		1.0, -1.0, -1.0,
		1.0, 1.0, -1.0,
		1.0, 1.0, 1.0,
		1.0, -1.0, 1.0,

		// Left face
		-1.0, -1.0, -1.0,
		-1.0, -1.0, 1.0,
		-1.0, 1.0, 1.0,
		-1.0, 1.0, -1.0,
	];

	// Now pass the list of positions into WebGL to build the
	// shape. We do this by creating a Float32Array from the
	// JavaScript array, then use it to fill the current buffer.

	gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(positions), gl.STATIC_DRAW);

	// Set up the normals for the vertices, so that we can compute lighting.

	const normalBuffer = gl.createBuffer();
	gl.bindBuffer(gl.ARRAY_BUFFER, normalBuffer);

	const vertexNormals = [
		// Front
		0.0, 0.0, 1.0,
		0.0, 0.0, 1.0,
		0.0, 0.0, 1.0,
		0.0, 0.0, 1.0,

		// Back
		0.0, 0.0, -1.0,
		0.0, 0.0, -1.0,
		0.0, 0.0, -1.0,
		0.0, 0.0, -1.0,

		// Top
		0.0, 1.0, 0.0,
		0.0, 1.0, 0.0,
		0.0, 1.0, 0.0,
		0.0, 1.0, 0.0,

		// Bottom
		0.0, -1.0, 0.0,
		0.0, -1.0, 0.0,
		0.0, -1.0, 0.0,
		0.0, -1.0, 0.0,

		// Right
		1.0, 0.0, 0.0,
		1.0, 0.0, 0.0,
		1.0, 0.0, 0.0,
		1.0, 0.0, 0.0,

		// Left
		-1.0, 0.0, 0.0,
		-1.0, 0.0, 0.0,
		-1.0, 0.0, 0.0,
		-1.0, 0.0, 0.0,
	];

	gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(vertexNormals),
		gl.STATIC_DRAW);



	// Build the element array buffer; this specifies the indices
	// into the vertex arrays for each face's vertices.

	const indexBuffer = gl.createBuffer();
	gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, indexBuffer);

	// This array defines each face as two triangles, using the
	// indices into the vertex array to specify each triangle's
	// position.

	const indices = [
		0, 1, 2, 0, 2, 3,    // front
		4, 5, 6, 4, 6, 7,    // back
		8, 9, 10, 8, 10, 11,   // top
		12, 13, 14, 12, 14, 15,   // bottom
		16, 17, 18, 16, 18, 19,   // right
		20, 21, 22, 20, 22, 23,   // left
	];

	// Now send the element array to GL

	gl.bufferData(gl.ELEMENT_ARRAY_BUFFER,
		new Uint16Array(indices), gl.STATIC_DRAW);

	return {
		cubePosition: cubePositionBuffer,
		backgroundPosition: backgroundPositionBuffer,
		normal: normalBuffer,
		textureCoord: backgroundTextureCoordBuffer,
		indices: indexBuffer,

	};
}

//
// Initialize a texture.
//
function initTexture(gl, url) {
	const texture = gl.createTexture();
	gl.bindTexture(gl.TEXTURE_2D, texture);

	// Because video havs to be download over the internet
	// they might take a moment until it's ready so
	// put a single pixel in the texture so we can
	// use it immediately.
	const level = 0;
	const internalFormat = gl.RGBA;
	const width = 1;
	const height = 1;
	const border = 0;
	const srcFormat = gl.RGBA;
	const srcType = gl.UNSIGNED_BYTE;
	const pixel = new Uint8Array([0, 0, 255, 255]);  // opaque blue
	gl.texImage2D(gl.TEXTURE_2D, level, internalFormat,
		width, height, border, srcFormat, srcType,
		pixel);

	// Turn off mips and set  wrapping to clamp to edge so it
	// will work regardless of the dimensions of the video.
	gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
	gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
	gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR);

	return texture;
}

//
// copy the video texture
//
function updateTexture(gl, texture, video) {
	const level = 0;
	const internalFormat = gl.RGBA;
	const srcFormat = gl.RGBA;
	const srcType = gl.UNSIGNED_BYTE;
	gl.bindTexture(gl.TEXTURE_2D, texture);
	gl.texImage2D(gl.TEXTURE_2D, level, internalFormat,
		srcFormat, srcType, video);
}

function isPowerOf2(value) {
	return (value & (value - 1)) == 0;
}

//
// DRAW THE SCENE
//
function drawScene(gl, programInfo, buffers, texture, deltaTime) {
	gl.clearColor(0.0, 0.0, 0.0, 1.0);  // Clear to black, fully opaque
	gl.clearDepth(1.0);                 // Clear everything
	gl.enable(gl.DEPTH_TEST);           // Enable depth testing
	gl.depthFunc(gl.LEQUAL);            // Near things obscure far things

	// Clear the canvas before we start drawing on it.

	gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);


	//DRAW BACKGROUND

	{
		const numComponents = 3;
		const type = gl.FLOAT;
		const normalize = false;
		const stride = 0;
		const offset = 0;
		gl.bindBuffer(gl.ARRAY_BUFFER, buffers.backgroundPosition);
		gl.vertexAttribPointer(
			programInfo.attribLocations.backgroundVertexPosition,
			numComponents,
			type,
			normalize,
			stride,
			offset);
		gl.enableVertexAttribArray(
			programInfo.attribLocations.backgroundVertexPosition);
	}

	// Tell WebGL how to pull out the texture coordinates from
	// the texture coordinate buffer into the textureCoord attribute.
	{
		const numComponents = 2;
		const type = gl.FLOAT;
		const normalize = false;
		const stride = 0;
		const offset = 0;
		gl.bindBuffer(gl.ARRAY_BUFFER, buffers.textureCoord);
		gl.vertexAttribPointer(
			programInfo.attribLocations.textureCoord,
			numComponents,
			type,
			normalize,
			stride,
			offset);
		gl.enableVertexAttribArray(
			programInfo.attribLocations.textureCoord);
	}

	gl.useProgram(programInfo.backgroundProgram);
	// Tell WebGL we want to affect texture unit 0
	gl.activeTexture(gl.TEXTURE0);

	// Bind the texture to texture unit 0
	gl.bindTexture(gl.TEXTURE_2D, texture);

	// Tell the shader we bound the texture to texture unit 0
	gl.uniform1i(programInfo.uniformLocations.uSampler, 0);

	{
		const vertexCount = 6;
		const type = gl.UNSIGNED_SHORT;
		const offset = 0;
		gl.drawElements(gl.TRIANGLES, vertexCount, type, offset);
	}

	if (qrTansform) {
		// Create a perspective matrix, a special matrix that is
		// used to simulate the distortion of perspective in a camera.
		// Our field of view is 45 degrees, with a width/height
		// ratio that matches the display size of the canvas
		// and we only want to see objects between 0.1 units
		// and 100 units away from the camera.

		const fieldOfView = 45 * Math.PI / 180;   // in radians
		const aspect = gl.canvas.clientWidth / gl.canvas.clientHeight;
		const zNear = 0.1;
		const zFar = 100.0;
		const projectionMatrix = mat4.create();
		/*
	
		*/

		// note: glmatrix.js always has the first argument
		// as the destination to receive the result.

		mat4.perspective(projectionMatrix,
			fieldOfView,
			aspect,
			zNear,
			zFar);

		// Set the drawing position to the "identity" point, which is
		// the center of the scene.
		const modelViewMatrix = mat4.fromValues(qrTansform.a11, qrTansform.a12, qrTansform.a13, 0,
			qrTansform.a21, qrTansform.a22, qrTansform.a23, 0,
			qrTansform.a31, qrTansform.a32, qrTansform.a33, 0,
			0, 0, 0, 1);


		// Now move the drawing position a bit to where we want to
		// start drawing the square.
		var scaleValue = 1 / 21;
		mat4.scale(modelViewMatrix, modelViewMatrix, [scaleValue, scaleValue, 1]);
		console.log(modelViewMatrix);

		mat4.translate(modelViewMatrix,     // destination matrix
			modelViewMatrix,     // matrix to translate
			[-0.0, 0.0, -20.0]);  // amount to translate
		/*
		mat4.rotate(modelViewMatrix,  // destination matrix
			modelViewMatrix,  // matrix to rotate
			cubeRotation,     // amount to rotate in radians
			[0, 0, 1]);       // axis to rotate around (Z)
		
			mat4.rotate(modelViewMatrix,  // destination matrix
				modelViewMatrix,  // matrix to rotate
				cubeRotation * .7,// amount to rotate in radians
				[0, 0, 1]);       // axis to rotate around (X)
		*/
		const normalMatrix = mat4.create();
		mat4.invert(normalMatrix, modelViewMatrix);
		mat4.transpose(normalMatrix, normalMatrix);

		// Tell WebGL how to pull out the positions from the position
		// buffer into the vertexPosition attribute
		{
			const numComponents = 3;
			const type = gl.FLOAT;
			const normalize = false;
			const stride = 0;
			const offset = 0;
			gl.bindBuffer(gl.ARRAY_BUFFER, buffers.cubePosition);
			gl.vertexAttribPointer(
				programInfo.attribLocations.vertexPosition,
				numComponents,
				type,
				normalize,
				stride,
				offset);
			gl.enableVertexAttribArray(
				programInfo.attribLocations.vertexPosition);
		}



		// Tell WebGL how to pull out the normals from
		// the normal buffer into the vertexNormal attribute.
		{
			const numComponents = 3;
			const type = gl.FLOAT;
			const normalize = false;
			const stride = 0;
			const offset = 0;
			gl.bindBuffer(gl.ARRAY_BUFFER, buffers.normal);
			gl.vertexAttribPointer(
				programInfo.attribLocations.vertexNormal,
				numComponents,
				type,
				normalize,
				stride,
				offset);
			gl.enableVertexAttribArray(
				programInfo.attribLocations.vertexNormal);
		}

		// Tell WebGL which indices to use to index the vertices
		gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, buffers.indices);

		// Tell WebGL to use our program when drawing

		gl.useProgram(programInfo.cubeProgram);

		// Set the shader uniforms

		gl.uniformMatrix4fv(
			programInfo.uniformLocations.projectionMatrix,
			false,
			projectionMatrix);
		gl.uniformMatrix4fv(
			programInfo.uniformLocations.modelViewMatrix,
			false,
			modelViewMatrix);
		gl.uniformMatrix4fv(
			programInfo.uniformLocations.normalMatrix,
			false,
			normalMatrix);

		// Specify the texture to map onto the faces.

		{
			const vertexCount = 36;
			const type = gl.UNSIGNED_SHORT;
			const offset = 0;
			gl.drawElements(gl.TRIANGLES, vertexCount, type, offset);
		}

		// Update the rotation for the next draw

	}

}

//
// Initialize a shader program, so WebGL knows how to draw our data
//
function initShaderProgram(gl, vsSource, fsSource) {
	const vertexShader = loadShader(gl, gl.VERTEX_SHADER, vsSource);
	const fragmentShader = loadShader(gl, gl.FRAGMENT_SHADER, fsSource);

	// Create the shader program

	const shaderProgram = gl.createProgram();
	gl.attachShader(shaderProgram, vertexShader);
	gl.attachShader(shaderProgram, fragmentShader);
	gl.linkProgram(shaderProgram);

	// If creating the shader program failed, alert

	if (!gl.getProgramParameter(shaderProgram, gl.LINK_STATUS)) {
		alert('Unable to initialize the shader program: ' + gl.getProgramInfoLog(shaderProgram));
		return null;
	}

	return shaderProgram;
}

//
// creates a shader of the given type, uploads the source and
// compiles it.
//
function loadShader(gl, type, source) {
	const shader = gl.createShader(type);

	// Send the source to the shader object

	gl.shaderSource(shader, source);

	// Compile the shader program

	gl.compileShader(shader);

	// See if it compiled successfully

	if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
		alert('An error occurred compiling the shaders: ' + gl.getShaderInfoLog(shader));
		gl.deleteShader(shader);
		return null;
	}

	return shader;
}
