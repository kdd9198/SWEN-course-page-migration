#!/bin/bash

source_repo="https://github.com/kdd9198/SWEN-course-page-migration"
working_repo="/home/fall2020/kdd9198/test-working"
publish_dir="/home/fall2020/kdd9198/public_html"
cache_dir="/home/fall2020/kdd9198/hugo-cache"

# two versions of courses. first one has all courses, second can be modified
courses=("swen-601" "swen-614" "swen-711" "swen-732" "swen-746" "swen-755" "swen-777" "swen-640" "swen-610")
# courses=("")

for course in "${courses[@]}"; do
  echo "building site: $course"
  git clone -b $course $source_repo $working_repo
  # build draft pages for now, since this is for testing
  hugo --buildDrafts --cacheDir $cache_dir -d $publish_dir/$course -s $working_repo/site
  echo "cleaning up"
  rm -rf $working_repo
  # rm -rf $cache_dir
  echo "setting permissions (755) on site"
  chmod -R 755 $publish_dir/$course
  echo "finished building $course"
done
