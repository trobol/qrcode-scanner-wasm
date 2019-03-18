#include "wasm.h"

i8* imageData;
i8* imageCaptureData;
i32 length;
i32 width;
i32 height;

export i8* decode(i32 w, i32 h) {
	i8 values[length];

    for (int i=0; i<length; i++) {
        values[i] = imageCaptureData[i] * 2;
    }

    return &(values[0]);
}

export i8* allocateCap(i32 l) {
	i8 a[l];
	length = l;
	imageCaptureData = a;
	return imageCaptureData;
}

export i8* allocate(i32 l) {
	i8 a[l];
	imageData = a;
	return imageData;
}

i8 getPixel(i32 x, i32 y) {
	if (width < x) {
		//error
	}
	if (height < y) {
		//error
	}
	i32 point = (x * 4) + (y * width * 4);
	i8 p = (imageCaptureData[point]*33 + imageCaptureData[point + 1]*34 + imageCaptureData[point + 2]*33)/100;
	return p;
}

i8* grayscale() {
	i8 rect[width * height];

	for (i32 y = 0; y < height; y++)
	  {
		  for (i32 x = 0; x < width; x++)
		  {
			  i8 gray = getPixel(x, y);
  
			  rect[x+y*width] = gray;
		  }
	}
	imageData = rect;
	return imageData;
}

void grayScaleToBitmap()
  {
	  i8* middle = getMiddleBrightnessPerArea(grayScale);
	  var sqrtNumArea = middle.length;
	  var areaWidth = Math.floor(qrcode.width / sqrtNumArea);
	  var areaHeight = Math.floor(qrcode.height / sqrtNumArea);
	  var bitmap = new Array(qrcode.height*qrcode.width);
  
	  for (var ay = 0; ay < sqrtNumArea; ay++)
	  {
		  for (var ax = 0; ax < sqrtNumArea; ax++)
		  {
			  for (var dy = 0; dy < areaHeight; dy++)
			  {
				  for (var dx = 0; dx < areaWidth; dx++)
				  {
					  bitmap[areaWidth * ax + dx+ (areaHeight * ay + dy)*qrcode.width] = (grayScale[areaWidth * ax + dx+ (areaHeight * ay + dy)*qrcode.width] < middle[ax][ay])?true:false;
				  }
			  }
		  }
	  }
	  return bitmap;
  }
  
i8* getMiddleBrightnessPerArea()
  {
	  i32 numSqrtArea = 4;
	  //obtain middle brightness((min + max) / 2) per area
	  i32 areaWidth = width / numSqrtArea;
	  i32 areaHeight = height / numSqrtArea;
	  i32* minmax = new i32[numSqrtArea][numSqrtArea];
	  for (i32 i = 0; i < numSqrtArea; i++)
	  {
		  minmax[i] = new i8[numSqrtArea];
		  for (i32 i2 = 0; i2 < numSqrtArea; i2++)
		  {
			  minmax[i][i2] = new Array(0,0);
		  }
	  }
	  for (var ay = 0; ay < numSqrtArea; ay++)
	  {
		  for (var ax = 0; ax < numSqrtArea; ax++)
		  {
			  minmax[ax][ay][0] = 0xFF;
			  for (var dy = 0; dy < areaHeight; dy++)
			  {
				  for (var dx = 0; dx < areaWidth; dx++)
				  {
					  var target = image[areaWidth * ax + dx+(areaHeight * ay + dy)*qrcode.width];
					  if (target < minmax[ax][ay][0])
						  minmax[ax][ay][0] = target;
					  if (target > minmax[ax][ay][1])
						  minmax[ax][ay][1] = target;
				  }
			  }
			  //minmax[ax][ay][0] = (minmax[ax][ay][0] + minmax[ax][ay][1]) / 2;
		  }
	  }
	  var middle = new Array(numSqrtArea);
	  for (var i3 = 0; i3 < numSqrtArea; i3++)
	  {
		  middle[i3] = new Array(numSqrtArea);
	  }
	  for (var ay = 0; ay < numSqrtArea; ay++)
	  {
		  for (var ax = 0; ax < numSqrtArea; ax++)
		  {
			  middle[ax][ay] = Math.floor((minmax[ax][ay][0] + minmax[ax][ay][1]) / 2);
			  //Console.out.print(middle[ax][ay] + ",");
		  }
		  //Console.out.println("");
	  }
	  //Console.out.println("");
  
	  return middle;
  }