#include<stdio.h>
#include<string.h>
int main()
{
FILE *fp;
char write[50]="hello world";
fp= fopen("test.txt", "w");
if (fp== NULL)
{
printf("File failed to open");
}
else
{
printf("file opened.\n");
if ( strlen (write) > 0)
{
fputs(write, fp);
fputs("\n", fp);
}
fclose(fp); 
printf("Data successfully written in file Test.txt\n"); 
printf("The file is now closed.\n") ; 
} 
return 0;
}

