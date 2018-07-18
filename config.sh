#!/bin/bash

# to do
#- [ ] read this info from _config.yml

version="0.alpha"
dir_premissions="700"
file_premissions="400"
domain_dir="domain"
concept_dir="concept"
template_dir="template"
type_dir="type"
collection_dir="." # 3.7 value "ontology"
asset_dir="assets"
declare -a file_list=(
  "FORM.md"
  "index.md"
  "NOTE.md"
  "TODO.md"
  "CHANGELOG.md")
declare -a readme_list=(
  "SUPPORT.md"
  "LICENSE.md"
  "AUTHORS.md"
  "CONTRIBUTING.md"
  "README.md")
declare -a template_list=(
  "process"
  "procedure"
  "posts"
  "drafts"
  "being"
  "product"
  "service"
  "report"
  "module"
  "role"
  "user"
  "team")

#First var is used as data dump directory and will have format directories.
declare -a data_dir=(
  ".data"
  ".config"
  "_data"
  "_site")

declare -a root_file=(
  ".gitignore"
  "_config.yml"
  "index.md")

# Jekyll _config.yml
jekyllconfig="$(cat <<-EOF
# Where things are
source:          .
destination:     _site
#collections_dir: ontology
#plugins_dir:     _plugins
layouts_dir:     ./assets/_layouts
data_dir:        ./assets/_data
includes_dir:    ./assets/_includes

# Handling Reading
safe:                true
include:             [".data"]
exclude:             ["domain", "_site", "*.sh", "*.pst", "~*"]
keep_files:          [".git", ".data", ".config"]
encoding:            "utf-8"
markdown_ext:        "md"
strict_front_matter: true

# Filtering Content
show_drafts: false
limit_posts: 0
future:      true
unpublished: false

# Plugins
#whitelist: []
#plugins:   []

# Conversion
markdown:    kramdown
highlighter: rouge
lsi:         false
excerpt_separator: "\n\n"
incremental: false

# Outputting
permalink:     date
paginate_path: /page:num
timezone:      null

quiet:    false
verbose:  false

liquid:
  error_mode:       warn
  strict_filters:   false
  strict_variables: false

kramdown:
  auto_ids:      true
  entity_output: as_char
  toc_levels:    1..6
  smart_quotes:  lsquo,rsquo,ldquo,rdquo
  input:         GFM
  hard_wrap:     false
  footnote_nr:   1
  show_warnings: true

sass:
  sass_dir: ./assets/_sass
  style: compressed
###########################################################################
###                      Generated via gen.sh                           ###
###########################################################################
EOF
)"
