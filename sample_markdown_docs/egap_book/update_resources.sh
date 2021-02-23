#!/bin/sh

set -e

#git config --global user.email "jake@jakebowers.org"
#git config --global user.name "Jake Bowers"

# cd ..
# rm -rf guide-output
git clone --single-branch --branch gh-pages git@github.com:egap/learningdays-guide.git guide-output
cd guide-output
# cp -r ../Guide/_guide/* ./
# cp -r ../Guide/Resources ./
mkdir -p Resources
mkdir -p Resources/Slides
rsync -auvzr ../Guide/Resources/Agendas ./Resources/
rsync -auvzr ../Guide/Resources/Exercises ./Resources/
rsync -auvzr ../Guide/Resources/Images ./Resources/
rsync -auvzr ../Guide/Resources/Slides/*.pdf ./Resources/Slides/
rsync -auvzr ../Guide/Resources/Slides/*.html ./Resources/Slides/
rsync -auvzr ../Guide/Resources/Slides/*.Rmd ./Resources/Slides/
rsync -auvzr ../Guide/Resources/Slides/*-slides_files ./Resources/Slides/
git add --all *
git commit -m "Update the Resources and Images etc" || true
git push -q origin gh-pages
#cd ../Guide
#git checkout master

