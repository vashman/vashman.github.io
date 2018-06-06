# [Ontology](htttps://www.wikipedia.com/Ontology)

# Process: Creating a new site.
Sites are created from a template.
```sh
#!/bin/sh
domain_path="./Domain"
declare -a template_dirs
=(".Data"
  "Concept"
  "Template"
  "Ontology"
  "_site"
  "_data")

for site_name in "$@" do
mkdir $domain_path "$var"

  for template_folder in "${template_dirs[@]}" do
  mkdir $domain_path $var "/$template_folder"
  touch $domain_path $var "/$template_folder/readme.md"
  done
done

# Run Process for updating existing sites.
./bin/sh/.Data/Process/Updating_existing_sites.sh
```

# Process: Updating existing sites.
```sh
#!/bin/sh
domain_path="./Domain"
declare -a update_dirs
=("_includes"
  "_layouts"
  "_scss"
  "")

# Must copy without removing new files.
# Will overwrite existing files with the same name.
for directory in "${update_dir}" do
cp -r "./$directory" "/"
done
```

# Process: Merge 2 existing Sites
[Condition]
  : No name clashes exist between sites.
  : [Error] : exit immediately

1. Check for clashes.
2. Swap alias names.
3. Copy or Move data over.
