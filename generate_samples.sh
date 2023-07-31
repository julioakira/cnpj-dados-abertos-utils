#!/bin/bash

FILES=$(ls *.csv)
echo "Creating sample folder"
echo "-----------------"
mkdir -p samples
for f in $FILES
do
  echo "Extracting the first 100 lines of $f"
  head -n 100 $f > samples/sample_$f
  echo "Sample file created in /samples/$f"
  echo "-----------------"
done
