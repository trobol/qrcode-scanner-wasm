#include "qrcode.h"

QRCode qrcode;


export u8 *decode()
{

	qrcode.grayscale();
	draw(false);
	qrcode.grayScaleToBitmap();
	draw(true);


	return qrcode.imageData;
}

export u8 *setImageData(i32 w, i32 h)
{
	_free(qrcode.imageData);

	qrcode.width = w;
	qrcode.height = h;
	qrcode.length = w * h;

	qrcode.imageData = (u8 *)_malloc(qrcode.length * sizeof(u8));

	return qrcode.imageData;
}
export u8 *getImageData()
{
	return qrcode.imageData;
}

import void draw(bool grayscale);