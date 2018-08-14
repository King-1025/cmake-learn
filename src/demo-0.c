#include <stdio.h>

#include "demo.h"
#include "fun/fun.h"

int demo_0(int count,char *value[])
{
  if(count<0){
    return 1;
  }
  for(int i=0;i<count;i++)
  {
    printf("Message-%d is that %s\n",i,value[i]);
  }
  say_hello(value[count-1]);
  return 0;
}
