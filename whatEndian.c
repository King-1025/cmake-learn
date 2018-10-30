#include <stdio.h>

#define BIG_ENDAIN 0x00
#define LITTLE_ENDAIN 0x01

int main(void)
{
 int check();
 switch(check())
 {
   case BIG_ENDAIN:
        printf("支持大端字节序列.\n");
        break;
   case LITTLE_ENDAIN:
        printf("支持小端字节序列.\n");
        break;
 }

 return 0;
}

int check()
//如果字节序为big-endian，返回true;
//反之为little-endian，返回false
{
    unsigned short test = 0x1122;
   
    if(*((unsigned char*) &test) == 0x11)
        return BIG_ENDAIN;
    else
        return LITTLE_ENDAIN; 
}


