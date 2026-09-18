aliases_file=$1

sed -i -e '/^{/ { N; /^{\n  switch (telescope_id) {/ r aliases_c_patch_1.c' -e '}' $aliases_file

sed -i -e '/char \*telescope,string\[80\];/ { N; /switch (telescope_id) {/ r aliases_c_patch_2.c' -e '}' $aliases_file

sed -i -e '/char \*backend, string\[80\];/ { N; /  switch (machine_id) {/ r aliases_c_patch_3.c' -e '}' $aliases_file
