#include <stdio.h>

#include "src/demo.h"

int main(int argc ,char *argv[])
{
  printf("argc:%d\n",argc);
  if(argc<2){
    printf("Usage:%s <message>\n",argv[0]);
    return 1;
  }
  demo_0(argc,argv);
  return 0;
}
