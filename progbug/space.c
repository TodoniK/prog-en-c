#include<stdio.h>
#include<stdlib.h>
#include <string.h>

void randstack(int i){
  int j=random();
  if (i>0)
    randstack(i-1);
}

char *getStr(int size){
  static char memBuffer[4096];
  static int id=0;
  char *tmp=memBuffer+id;
  id+=size;
  return tmp;
}


char *toUpper(char *str){
  int i;
  char *buffer=getStr(strlen(str));
  for(i=0;i<strlen(str);++i){
    buffer[i]=toupper(str[i]);
  }
  return buffer;  
}

int main(){
  char *a,*b;
  randstack(100);
  a=toUpper("hello");
  b=toUpper("world!");
  printf("%s %s \n",a,b);
  
  return EXIT_SUCCESS;
}
