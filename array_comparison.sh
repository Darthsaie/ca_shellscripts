# Declare arrays
a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

# Initialize result array
result=()

# Loop through elements in array a
for element in ${a[@]}
do
  # Check if element exists in arrays b and c
  if [[ " ${b[@]} " =~ " ${element} " ]] && [[ " ${c[@]} " =~ " ${element} " ]]
  then
    # If element exists in both arrays b and c, add it to result array
    result+=($element)
  fi
done

# Print result array
echo "${result[@]}"
