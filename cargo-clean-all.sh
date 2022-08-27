#!/bin/bash

for proj in $(find . -type f -name 'Cargo.toml'); do
	d=$(dirname $proj)
	echo "cleaning ${d}..."
	(
		cd $d
		cargo clean
	)
done
