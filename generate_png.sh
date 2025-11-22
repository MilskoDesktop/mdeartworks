#!/bin/sh
cd icons/scalable
for i in 128 64 32 16; do
	echo "-- ${i}x${i}"
	for j in *.svg; do
		echo "$j"
		rsvg-convert --height=$i -o ../${i}x${i}/`echo $j | cut -d. -f1`.png $j
	done
done
