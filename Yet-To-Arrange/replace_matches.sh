#Replace all the matches
#${string//pattern/replacement}
#It replaces all the matches of pattern with replacement.
#! /bin/bash

filename="Path of the bash is /bin/bash"

echo "After Replacement:" ${filename//bash/sh}

#$ ./allmatch.sh
#After Replacement: Path of the sh is /bin/sh
