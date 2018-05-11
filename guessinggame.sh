# Guessinggame.sh script

# Create and execute a function that calculates the number of files 
# in the current directory. Sub-directories and temporary files (which
# have "~" in their names) are excluded not count.

function number_of_files {
  local num_files=$(ls -l|grep "^-[^~]*$"|wc -l)
  echo $num_files
}

num_files=$(number_of_files)

# Ask the user about the number of files
# and iterate until the correct anser is provided

while [[ $x -ne $num_files ]] 
do
  echo "How many files are in the current directory?"
  read x
  
  if [[ $x -gt $num_files ]] 
  then
    echo "Your guess is too high. Please try again."
  elif [[ $x -lt $num_files ]] 
  then 
    echo "Your guess is too low. Please try again."
  else
    echo "Your guess is correct. Congratulations!"
  fi
done
