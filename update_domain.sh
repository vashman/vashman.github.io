#!/bin/bash
source config.sh

for site_name in "$@"; do
  for config in ${root_file[@]}; do
    if [ -f "./$domain_dir/$site_name/$config" ]; then
    chmod 600 "./$domain_dir/$site_name/$config"
    fi
  cp "./$config" "./$domain_dir/$site_name/$config"
  chmod "$file_premissions" "./$domain_dir/$site_name/$config"
  git --git-dir "./$domain_dir/$site_name/.git" --work-tree="./$domain_dir/$site_name" add "./$config"
  done

# copy root config files.
    if [ ! -d "./$domain_dir/$site_name/$root_config" ]; then
    mkdir "./$domain_dir/$site_name/$root_config"
    chmod "$dir_premissions" "./$domain_dir/$site_name/$root_config"
    fi

  for config in `ls ./$domain_dir/$site_name/$root_config`; do
  chmod 600 "./$domain_dir/$site_name/$root_config/$config"
  cp "./$root_config/$config" "./$domain_dir/$site_name/$root_config/"
  chmod "$file_premissions" "./$domain_dir/$site_name/$root_config/$config"
  git --git-dir "./$domain_dir/$site_name/.git" --work-tree="./$domain_dir/$site_name" add "./$root_config/$config"
  done

# copy presentation folders and files.
  for dir in "${presentation_dir[@]}"; do
    if [ ! -d "./$domain_dir/$site_name/$dir" ]; then
    mkdir "./$domain_dir/$site_name/$dir"
    chmod $dir_premissions "./$domain_dir/$site_name/$dir"
    fi
    for file in `ls ./$dir/`; do
      if [ -f "./$domain_dir/$site_name/$dir/$file" ]; then
      chmod 600 "./$domain_dir/$site_name/$dir/$file"
      else
      touch "./$domain_dir/$site_name/$dir/$file"
      fi
    cat "./$dir/$file" > "./$domain_dir/$site_name/$dir/$file"
    chmod "$file_premissions" "./$domain_dir/$site_name/$dir/$file"
    git --git-dir "./$domain_dir/$site_name/.git" --work-tree="./$domain_dir/$site_name" add "./$dir/$file"
    done
  done

root_name=`tail -n2 ./_data/about.yml | head -n1`
root_path=`ls ../`
git --git-dir "./$domain_dir/$site_name/.git" --work-tree="./$domain_dir/$site_name" commit -m "Auto-update from dir ./$root_path by $root_name, version: $version"
done
