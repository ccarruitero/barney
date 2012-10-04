#! /usr/bin/env bash

# Convert ThisIsACamelizedWord to this_is_a_camelized_word
#
# Usage:
#   underscore ThisIsACamelizedWord
underscore() {
  echo "$@" | sed -e 's/\([A-Z\d]\)\([A-Z][a-z]\)/\1_\2/g' -e 's/\([a-z\d]\)\([A-Z]\)/\1_\2/g' | tr "A-Z-" "a-z_";
}

# Rename the Rails app in the current directory. Both the new and old names must
# be provided in CamelCase. The script will find CamelCase and unders_scored
# words to replace.
#
# Usage:
#   rename_rails_app "OldName" "NewName"
rename_rails_app() {
  local old_name="$1";
  local new_name="$2";

  local underscored_old_name=$(underscore $old_name);
  local underscored_new_name=$(underscore $new_name);

  find_and_replace_app_name() {
    for file in $(find .); do
      sed -i "" -e "s/$1/$2/g" $file 2>/dev/null;
    done
  }

  find_and_replace_app_name $old_name $new_name;
  find_and_replace_app_name $underscored_old_name $underscored_new_name;

  return 0;
}

# Change the Rails app secret.
#
# Usage:
#   change_rails_app_secret
change_rails_app_secret() {
  local new_secret=$(rake secret);
  sed -i "" -e "s/'.*'/'$new_secret'/" "config/initializers/secret_token.rb"
}

case $1 in
  -h | --help)
    usage
    ;;
  *)
    name="$1"
    dir=$(underscore $name)
    ;;
esac

app_name=`dirname $0`
cd "$app_name" &>/dev/null

underscore_app_name=$(underscore $app_name)

rm -rf .git
mv "app/assets/javascripts/barney.js" "app/assets/javascripts/${underscore_app_name}.js"

echo "✓ Renaming the app to \"${app_name}\"."
rename_rails_app Barney $app_name

echo "✓ Installing gems."
bundle

echo "✓ Creating the database."
rake db:create

echo "✓ Changing the app secret."
change_rails_app_secret

echo "✓ Setting the right README."
mv README_APP.md README.md

echo "✓ Removing init.sh"
rm -f init.sh

echo "✓ Initializing git."
(git init; git add .; git commit -m "initial commit") &>/dev/null

echo "✓ We hate camelCase right? Renaming directory to \"${underscore_app_name}\"."
cd ".." &>/dev/null
mv $app_name $underscore_app_name

echo "✓ Ready to profit."
