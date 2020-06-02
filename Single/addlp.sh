#!/bin/bash



for u in `seq  1 3`;
do
for i in `seq  1 8`;
do



cp "Single/Object1/material1/Test/dirs.lp" "Single/Object${u}/material${i}/Test/dirs.lp"
cp "Single/Object1/material1/Dome/dirs.lp" "Single/Object${u}/material${i}/Dome/dirs.lp"

cp "Single/Object1/material1/Test/dirs.lp" "Multi/Object${u}/material${i}/Test/dirs.lp"
cp "Single/Object1/material1/Dome/dirs.lp" "Multi/Object${u}/material${i}/Dome/dirs.lp"
done

done

