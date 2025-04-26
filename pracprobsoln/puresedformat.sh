#!/bin/bash

while IFS=: read -r name roll; do
    sed "s/student_name/$name/g; s/roll_no/$roll/g" $2 >> output.txt
    echo "" >> output.txt   # add extra line between paragraphs
done < $1

cat output.txt > paragraph.txt
rm output.txt
