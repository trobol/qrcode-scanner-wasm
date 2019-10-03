
var copyVideo = false;

const vsSource = `
	attribute vec4 aVertexPosition;
	attribute vec2 aTextureCoord;

	varying highp vec2 vTextureCoord;

    void main() {
		vTextureCoord = aTextureCoord;
      	gl_Position = aVertexPosition;
    }
  `;

// Fragment shader program

const fsSource = `
	precision mediump float;
	varying highp vec2 vTextureCoord;

	uniform sampler2D uSampler;


	mediump vec3 getPixel(vec2 pos) {
		vec3 color = texture2D(uSampler, pos).rgb;
		return vec3(color.r * 0.33 + color.g *0.34 + color.b * 0.33);
	}
    void main() {

		float min = 1.;
		float max = 0.;
		vec3 texelColor = getPixel(vTextureCoord);

		
		for(float x = -0.25; x <= 0.25; x+= 0.05) {
			for(float y = -0.25; y <= 0.25; y+= 0.05) {
				float p = getPixel(vTextureCoord + vec2(x, y)).r;
				if(p < min)
					min = p;
				if(p > max)
					max = p;
			}
		}
		

		texelColor = vec3(step((min+max) / 2., texelColor.r));

      	gl_FragColor = vec4(texelColor, 1.);
    }
  `;



function WebGLCam() {
	if (!(this instanceof WebGLCam))
		return new WebGLCam();

	this.canvas = null;
	this.gl = null;
}



var canvas;
function main(c) {
	canvas = c;
	const gl = canvas.getContext('webgl');

	// If we don't have a GL context, give up now

	if (!gl) {
		alert('Unable to initialize WebGL. Your browser or machine may not support it.');
		return;
	}

	// Vertex shader program


	// Initialize a shader program; this is where all the lighting
	// for the vertices and so forth is established.
	const shaderProgram = initShaderProgram(gl, vsSource, fsSource);

	// Collect all the info needed to use the shader program.
	// Look up which attribute our shader program is using
	// for aVertexPosition and look up uniform locations.
	const programInfo = {
		program: shaderProgram,
		attribLocations: {
			vertexPosition: gl.getAttribLocation(shaderProgram, 'aVertexPosition'),
			textureCoord: gl.getAttribLocation(shaderProgram, 'aTextureCoord'),
		},
		uniformLocations: {
			uSampler: gl.getUniformLocation(shaderProgram, 'uSampler')
		},
	};

	// Here's where we call the routine that builds all the
	// objects we'll be drawing.
	const buffers = initBuffers(gl);

	const texture = initTexture(gl);

	const video = setupVideo();

	var then = 0;


	// Tell WebGL how to pull out the positions from the position
	// buffer into the vertexPosition attribute.
	{
		const numComponents = 2;
		const type = gl.FLOAT;
		const normalize = false;
		const stride = 0;
		const offset = 0;
		gl.bindBuffer(gl.ARRAY_BUFFER, buffers.position);
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
	// Tell WebGL to use our program when drawing

	gl.useProgram(programInfo.program);

	// Set the shader uniforms

	// Tell WebGL we want to affect texture unit 0
	gl.activeTexture(gl.TEXTURE0);

	// Bind the texture to texture unit 0
	gl.bindTexture(gl.TEXTURE_2D, texture);


	// Tell the shader we bound the texture to texture unit 0
	gl.uniform1i(programInfo.uniformLocations.uSampler, 0);

	// Draw the scene repeatedly
	function render(now) {
		now *= 0.001;  // convert to seconds
		const deltaTime = now - then;
		then = now;

		if (copyVideo) {
			updateTexture(gl, texture, video);
		}

		drawScene(gl, programInfo, buffers, texture, deltaTime);

		requestAnimationFrame(render);
	}
	requestAnimationFrame(render);
}


//
// initBuffers
//
// Initialize the buffers we'll need. For this demo, we just
// have one object -- a simple two-dimensional square.
//
function initBuffers(gl) {

	// Create a buffer for the square's positions.

	const positionBuffer = gl.createBuffer();

	// Select the positionBuffer as the one to apply buffer
	// operations to from here out.

	gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);

	// Now create an array of positions for the square.

	const positions = [
		1.0, 1.0,
		-1.0, 1.0,
		1.0, -1.0,
		-1.0, -1.0,
		-1.0, 1.0,
		1.0, -1.0,
	];

	// Now pass the list of positions into WebGL to build the
	// shape. We do this by creating a Float32Array from the
	// JavaScript array, then use it to fill the current buffer.

	gl.bufferData(gl.ARRAY_BUFFER,
		new Float32Array(positions),
		gl.STATIC_DRAW);


	// Create a buffer for the square's positions.

	const texCoordBuffer = gl.createBuffer();

	// Select the positionBuffer as the one to apply buffer
	// operations to from here out.

	gl.bindBuffer(gl.ARRAY_BUFFER, texCoordBuffer);

	// Now create an array of positions for the square.

	const texCoords = [
		1.0, 0.0,
		0.0, 0.0,
		1.0, 1.0,
		0.0, 1.0,
		0.0, 0.0,
		1.0, 1.0,
	];

	// Now pass the list of positions into WebGL to build the
	// shape. We do this by creating a Float32Array from the
	// JavaScript array, then use it to fill the current buffer.

	gl.bufferData(gl.ARRAY_BUFFER,
		new Float32Array(texCoords),
		gl.STATIC_DRAW);




	return {
		position: positionBuffer,
		textureCoord: texCoordBuffer
	};
}

//
// Draw the scene.
//
function drawScene(gl) {
	gl.clearColor(0.0, 0.0, 0.0, 1.0);  // Clear to black, fully opaque


	// Clear the canvas before we start drawing on it.

	gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
	{
		const offset = 0;
		const vertexCount = 6;
		gl.drawArrays(gl.TRIANGLES, offset, vertexCount);
	}
}

function setupVideo() {
	const video = document.createElement('video');

	var playing = false;
	var timeupdate = false;

	video.autoplay = true;
	video.muted = true;
	video.loop = true;


	navigator.mediaDevices.getUserMedia({
		audio: false,
		video: {
			facingMode: 'environment',
			aspectRatio: canvas.clientWidth / canvas.clientHeight
		}
	})
		.then((stream) => {
			video.srcObject = stream;

		})

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

	video.onloadedmetadata = () => {
		canvas.width = video.videoWidth;
		canvas.height = video.videoHeight;
		canvas.style.width = video.videoWidth + 'px';
		canvas.style.height = video.videoHeight + 'px';

	}

	video.play();

	function checkReady() {
		if (playing && timeupdate) {
			copyVideo = true;
		}
	}

	return video;
}


//
// copy the video texture
//
function updateTexture(gl, texture, video) {
	gl.viewport(0, 0, video.videoWidth, video.videoHeight);
	const level = 0;
	const internalFormat = gl.RGBA;
	const srcFormat = gl.RGBA;
	const srcType = gl.UNSIGNED_BYTE;
	gl.bindTexture(gl.TEXTURE_2D, texture);
	gl.texImage2D(gl.TEXTURE_2D, level, internalFormat,
		srcFormat, srcType, video);
	//gl.texSubImage2D(
	//	gl.TEXTURE_2D, level, 0, 0, srcFormat,
	//	srcType, video);

}



//
// Initialize a texture.
//
function initTexture(gl) {
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
	const pixel = new Uint8Array([0, 0, 0, 255]);  // opaque black
	gl.texImage2D(gl.TEXTURE_2D, level, internalFormat,
		width, height, border, srcFormat, srcType,
		pixel);

	gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
	gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
	gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.NEAREST);

	return texture;
}


//
// Initialize a shader program,
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
