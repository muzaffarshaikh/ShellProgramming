#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<stdlib.h>
#define LOL 8

int main() 
{ 
    pid_t pid;
    int arr[LOL]={1,2,3,4,5,6,7,8}, i, ans; 
    pid=fork();
    if( pid==0 ){
    ans=0;
    for(i=0; i<LOL; i++)
    {
    ans=ans+arr[i];
    printf("[CHILD PROCESS...] Sum of the array is %d\n", ans);
    sleep(1);
    }
    _exit(EXIT_SUCCESS);
    } //child node end
    if(pid<0){
    fprintf(stderr, "Failed");
    return EXIT_FAILURE;
    }
    ans=1;
    for(i=0; i<LOL; i++)
    {
        ans=ans*arr[i];
        printf("\n[PARENT PROCESS...] Product of the array is : %d\n",ans);
        sleep(2);
        
    }
    return EXIT_SUCCESS;
}