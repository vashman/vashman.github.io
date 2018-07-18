#!/bin/sh
# Creates jeyll config file for collection list.
# Adds / Updates default options to all collections.
source config.sh
mkdir -p "${asset_dir}"
mkdir -p "${domain_dir}"
mkdir -p "${concept_dir}"
mkdir -p "${template_dir}"
mkdir -p "${type_dir}"
echo $jekyllconfig > _config.yml

# Output collection section
echo "collections:" >> _config.yml
  for collection in "${template_list[@]}"; do
  echo "  ${collection}:" >> _config.yml
  echo "    output: true" >> _config.yml
  done

default_thing="$(cat <<-EOF
  - scope:
      path: "" # an empty string here means all files in project.
    values:
      layout: "default"
# Concept
  - scope:
      path: "concept"
    values:
      layout: "concept"
      label: concept
# Template
  - scope:
      path: "template"
    values:
      layout: "template"
      label: template
# Type
  - scope:
      path: "type"
    values:
      layout: "type"
      label: type
EOF
)"

# Output defaults
echo "defaults:" >> _config.yml
echo $default_thing >> _config.yml
  for collection in "${template_list[@]}"; do
  echo "##########         ${collection}         ##########" >> _config.yml
  echo "  - scope:" >> _config.yml
  echo "      path:\"\"" >> _config.yml
  echo "      type:\"${collection}\"" >> _config.yml
  echo "    values:" >> _config.yml
  echo "      layout: \"${collection}\"" >> _config.yml
  echo "      label: ${collection}" >> _config.yml
  done

# Create any missing files and directories
for collection in "${template_list[@]}"; do
mkdir -p "${collection_dir}/_${collection}"
chmod ${dir_premissions} "${collection_dir}/_${collection}"
  for file in "${file_list[@]}"; do
  if [ -f "${collection_dir}/_${collection}/${file}" ]; then
  touch "${collection_dir}/_${collection}/${file}"
  chmod ${file_premissions} "${collection_dir}/_${collection}/${file}"
  fi
  done
done

# Build the new site
#jekyll clean
#jekyll build
