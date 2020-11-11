#include<stdio.h>
#include<unistd.h>
void id()
{
fork();
printf("Hello world\n");
if(fork()<0){
printf("Child Process Creation failed!");
}
else if(fork()>0){
printf("The process ID of Child process is :", getpid());
}
if(fork()==0){
printf("The Process ID of Parent process is : ", getppid());
}
}
int main()
{
id();
return 0;
}