#!/bin/bash

for file in *; do sudo mv "$file" `echo $file | tr ' ' '_'`; done
