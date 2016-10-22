#! /bin/bash

rm .directory;

# update files on github
git status;
git add *
git commit;
git push;

# create work directory
echo "copying files to a tmp directory ...";
cp ../minetest-texturepack-nature-test-master/ /tmp/minetest-texturepack-nature-test-master -rf &&
echo "finished [ok]";

# optimizing images
echo "compressing with optipng, output as zip";
cd /tmp;
optipng minetest-texturepack-nature-test-master/* &&
rm /home/mbb/minetest/nature-test-master.zip;
zip -r ~/minetest/nature-test-master.zip  minetest-texturepack-nature-test-master/*;
sync;
rm -rf /tmp/minetest-texturepack-nature-test-master
echo "now your pack is compressed! What about uploading it to the minetest forums?"
