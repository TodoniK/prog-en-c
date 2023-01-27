#include<stdio.h>


int homer(int);

int bart(int value){
  if (value==1) return 1;
  return homer(value-2)+1;
}

int homer(int value){
  if (value==0) return 1;
  return bart(value-1)+3;
}


int main(){
  homer(10);
}
