#Following syntax deletes the longest match of $substring from front of $string
#${string##substring}
#Following syntax deletes the longest match of $substring from back of $string
#${string%%substring}
filename="bash.string.txt"
echo "After deletion of longest match from front:" ${filename##*.}
echo "After deletion of longest match from back:" ${filename%%.*}
#In the above example, ##*. strips longest match for ‘*.’ which matches “bash.string.” so after striping this, it prints the remaining txt. And %%.* strips the longest match for .* from back which matches “.string.txt”, after striping  it returns “bash”.