#!/bin/bash
source config.sh

# ensure there are no clashes before making any changes.
for site_name in "$@"; do
  if [ -d "./$domain_dir/$site_name" ]; then
  echo "Error: site already exists; $site_name"
  exit 1
  fi
done

for site_name in "$@"; do
mkdir "./$domain_dir/$site_name"
git --git-dir "./$domain_dir/$site_name/.git" --work-tree="./$domain_dir/$site_name" init
cp "./.gitignore" "./$domain_dir/$site_name/.gitignore"
chmod "$file_premissions" "./$domain_dir/$site_name/.gitignore"
chmod "$dir_premissions" "./$domain_dir/$site_name"

# Make Readme file
touch "./$domain_dir/$site_name/readme.md"
echo "---" >> "./$domain_dir/$site_name/readme.md"
echo "version" >> "./$domain_dir/$site_name/readme.md"
echo " : $version" >> "./$domain_dir/$site_name/readme.md"
echo "---" >> "./$domain_dir/$site_name/readme.md"
echo "$site_name" >> "./$domain_dir/$site_name/readme.md"
echo "===========================================================================" >> "./$domain_dir/$site_name/readme.md"
chmod 600 "./$domain_dir/$site_name/readme.md"

# Make data directories.
  for dir in "${data_dir[@]}"; do
  mkdir "./$domain_dir/$site_name/$dir"
  chmod "$dir_premissions" "./$domain_dir/$site_name/$dir"
  done

  for dir in "${format_dir[@]}"; do
  mkdir "./$domain_dir/$site_name/.data/$dir"
  chmod "$dir_premissions" "./$domain_dir/$site_name/.data/$dir"
  done

# Make template directories.
  for dir in "${template_dir[@]}"; do
  mkdir "./$domain_dir/$site_name/$dir"
  # Make template file.
  touch "./$domain_dir/$site_name/$dir/template.md"
  echo "---" >> "./$domain_dir/$site_name/$dir/template.md"
  echo "---" >> "./$domain_dir/$site_name/$dir/template.md"
  echo "$dir: \`instance name\`" >> "./$domain_dir/$site_name/$dir/template.md"
  echo "===========================================================================" >> "./$domain_dir/$site_name/$dir/template.md"
  chmod "$file_premissions" "./$domain_dir/$site_name/$dir/template.md"
  git --git-dir "./$domain_dir/$site_name/.git" --work-tree="./$domain_dir/$site_name" add "./$dir/template.md"
  done

# Add about information.
echo "---" >> "./$domain_dir/$site_name/_data/about.yml"
echo "name" >> "./$domain_dir/$site_name/_data/about.yml"
echo " : $site_name" >> "./$domain_dir/$site_name/_data/about.yml"
echo "---" >> "./$domain_dir/$site_name/_data/about.yml"
chmod "$file_premissions" "./$domain_dir/$site_name/_data/about.yml"

git --git-dir "./$domain_dir/$site_name/.git" --work-tree="./$domain_dir/$site_name" add ".gitignore"
git --git-dir "./$domain_dir/$site_name/.git" --work-tree="./$domain_dir/$site_name" commit -m "Auto-update: inital commit."
done

source ./update_domain.sh "$@"
