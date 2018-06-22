#!/bin/bash

# to do
#- [ ] read this info from _config.yml

version="0.alpha"
domain_dir="domain"

#First var is used as data dump directory and will have format directories.
declare -a data_dir=(
  ".data"
  ".config"
  "_data"
  "_site")

declare -a format_dir=(
  "image"
  "audio"
  "movie"
  "document"
  "binary"
  "srouce")

declare -a template_dir=(
  "concept"
  "template"
  "ontology"
  "_posts"
  "_drafts"
  "_process"
  "_procedure"
  "_report"
  "_product"
  "_module"
  "_service"
  "_worksheet"
  "_group"
  "_role"
  "_user")

declare -a presentation_dir=(
  "_layouts"
  "_sass"
  "_includes"
  "css"
  "js")

root_config=".config/.root_config"

declare -a root_file=(
  ".gitignore"
  "_config.yml"
  "index.md")

dir_premissions="700"
file_premissions="400"
