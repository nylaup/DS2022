
#!/usr/bin/python3

import boto3
import urllib
s3 = boto3.client('s3', region_name="us-east-1")

pic_url = "https://www.shutterstock.com/image-photo/rainstorm-over-beautiful-landscape-260nw-167600330.jpg"
s3_key = "rainimage.jpg"

bucket_name = "ds2022-mge9dn"
object_name = "rainimage.jpg"
expires_in = 604800

urllib.request.urlretrieve(pic_url, object_name)

s3.upload_file(object_name, bucket_name, s3_key)

response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
)
