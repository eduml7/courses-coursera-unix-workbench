NUM_FILES="$(find . -maxdepth 1 -type f | wc -l)"

function guess_game(){
  read -p "How many files are in the current directory? insert a number: " user_number_files
  
  if [ "$user_number_files" -eq "$NUM_FILES" ]
  then
    echo "Yeah"
    exit 0
  fi
}

function incorrect_response(){
  local high_low_answer=$([ "$user_number_files" -gt "$NUM_FILES" ] && echo "high" || echo "low")
  echo "Nope, please try again. Your answer is too $high_low_answer"
}

while
  guess_game
do incorrect_response
done
