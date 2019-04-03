NUM_FILES="$(find . -maxdepth 1 -type f | wc -l)"

function guess_game(){
  read -p "How many files are in the current directory? insert a number: " user_number_files
  
  if [ "$user_number_files" -eq "$NUM_FILES" ]
  then
    echo "Yeah"
    exit 0
  fi
}

while
  guess_game
do echo "Nope, please try again."; done
