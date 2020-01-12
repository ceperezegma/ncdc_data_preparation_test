#!/bin/bash

# NLineInputFormat gives a single line: key is offset, value is the s3 URI
read offset s3file

# local directory used to copy the data files from s3
directoryBase=/user/carlos/ncdc-dataset-sample/

# retrieve file from s3 to local disk
echo "reporter:status:retrieving $s3file" >&2
hadoop fs -get $s3file $directoryBase