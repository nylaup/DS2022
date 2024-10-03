#!/bin/bash

curl https://t3.ftcdn.net/jpg/01/02/64/28/360_F_102642850_Mca9lTRDH60DQin39YwCF5Jzd15lcdoo.jpg > skypic.jpg
aws s3 cp skypic.jpg s3://ds2022-mge9dn/

aws s3 presign --expires-in 604800 s3://ds2022-mge9dn/skypic.jpg


#https://ds2022-mge9dn.s3.us-east-1.amazonaws.com/skypic.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAU5LH5YXYTQNAFRFS%2F20241001%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241001T212435Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=8feb14b97c32c8a472e619e58a1972aa369498ba72cd2e11ce1ce84213961c88
