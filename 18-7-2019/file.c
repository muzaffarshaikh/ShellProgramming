#include <stdio.h>
#include <stdlib.h>
int main()
{
    FILE *fptr;
    char path[100];
    printf("Enter path of source file: ");
    scanf("%s", path);
    fptr = fopen(path, "r");
FILE *dest=fptr;
    char ch=path;
    // Temporary file to store result
    dest = fopen("toggle.tmp", "w");
    // If unable to create temporary file
    if (dest == NULL)
    {
printf("Unable to toggle case.");
fclose(fptr);
exit(EXIT_FAILURE);
    }
//Repeat till end of file.
    while ( (ch = fgetc(fptr)) != EOF)
    {
//If current character is uppercase then toggle it to lowercase and vice versa.
        if (isupper(ch))
            ch = tolower(ch);
        else if (islower(ch))
            ch = toupper(ch);
        // Print toggled character to destination file.
        fputc(ch, dest);
    }
 printf("\nConverted characters.\n");
    /* Close all files to release resource */
    fclose(fptr);
    fclose(dest);
    /* Delete original source file */
    remove(path);
    /* Rename temporary file as original file */
    rename("toggle.tmp", path);
}