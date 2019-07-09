var="Star Wars : A phantom Menace"
echo ${#var}

echo ${var:15}
echo ${var:15:4}

#${string:position:length}

#Extract $length of characters substring from $string starting from $position. In the below example, first echo statement returns the substring starting from 15th position. Second echo statement returns the 4 characters starting from 15th position. Length must be the number greater than or equal to zero.