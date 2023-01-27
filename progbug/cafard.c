#include<stdio.h>
#include<stdlib.h>

int strcmp_rec(char *s,char *t){
  if ((s[0]=='\0') && (t[0]=='\0'))
    return 0;
  if (s[0]<t[0]) return -1;
  else {
    if (strcmp_rec(s+1,t+1)==0)
      return 0;
    return 1;
  }
}

int main(int argc, char **argv){
  char s[]="helloa";
  char t[]="hello";
  switch(strcmp_rec(s,t)){
    case 0:
      puts("equal");
      break;
    case 1:
      puts("greater");
      break;
    case 2:
      puts("smaller");
      break;
    }
  return EXIT_SUCCESS;
   
}
