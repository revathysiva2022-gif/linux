#!/bin/bash
# 1. Create /tmp just in case (though it usually always exists)
  mkdir -p /tmp

  # 2. Start the conveyor belt (Loop)
  # We add a space after -name
  for FILE in $(find /tmp -name "*.log" 2>/dev/null); do

	  # 3. Rename the file by adding .old to the end
	  # Using the curly brackets {} protects the variable name
	  mv "$FILE" "${FILE}.old"
	   
	  # 4. Give feedback to the user
	  echo "Renamed: $FILE -> ${FILE}.old"


  done	  

