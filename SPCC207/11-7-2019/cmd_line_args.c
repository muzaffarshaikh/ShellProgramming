#include<stdio.h>
int main(){
FILE *fp; fp = fopen("new.txt","w+");
fputs("Master of Science in Information Technology",fp);
fseek(fp,3,SEEK_SET);
fputs("This is me", fp);
fclose(fp);
return(0);
}