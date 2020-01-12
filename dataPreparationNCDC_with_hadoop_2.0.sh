#!/bin/bash

# NLineInputFormat gives a single line: key is offset, value is the s3 URI
read offset s3file

# retrieve file from s3 to local disk
echo "reporter:status:retrieving $s3file" >&2
hadoop fs -get $s3file .
