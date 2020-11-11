#include<stdio.h>
#include<stdlib.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<stdio.h>
#include<sys/fcntl.h>
int main()
{
int fd;
fd=creat("TestFile.txt", S_IREAD | S_IWRITE);
if(fd==-1){
printf("Error in opening file");
}
else{
printf("TestFile.txt open for read and write...\n");
printf("TestFile.txt is currently empty!\n");
}
exit(0);
}