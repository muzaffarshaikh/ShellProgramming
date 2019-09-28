#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

int to_initcap_file(FILE *); 
void main(int argc, char * argv[])
{
    FILE *fp1;
    char fp[10];
    int p;
    fp1 = fopen("cap.txt", "r+");
    if (fp1 == NULL)
    {
        printf("cannot open the file ");
        exit(0);
    }
    p = capital(fp1);
    if (p == 1)    
    {
        printf("Done!");
    }
    else
    {
        printf("Fail!");
    }
    fclose(fp1);
}
/* capitalizes first letter of every word */
int capital(FILE *fp)
{
    char c;
    c = fgetc(fp);
    if (c >= 'a' && c <= 'z')
    {
        fseek(fp, -1L, 1);
        fputc(c - 32, fp);
    }
    while(c != EOF)    
    {
        if (c == '.')
        {
            c = fgetc(fp);
            if (c >= 'a' && c <= 'z')
            {
                fseek(fp, -1L, 1);
                fputc(c - 32, fp);
            }
        }
        else
        {
            c = fgetc(fp);
        }
    }
    return 1;
}