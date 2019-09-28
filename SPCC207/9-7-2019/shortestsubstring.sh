#${string#substring}
#Following syntax deletes the shortest match of $substring from back of $string
filename="bash.string.txt"
echo ${filename#*.}
echo ${filename%.*}
#In the first echo statement substring ‘*.’ matches the characters and a dot, and # strips from the front of the string, so it strips the substring “bash.” from the variable called filename. In second echo statement substring ‘.*’ matches the substring starts with dot, and % strips from back of the string, so it deletes the substring ‘.txt’