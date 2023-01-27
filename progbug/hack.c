#include<stdio.h>
#include<stdlib.h>
#include <string.h>

void randstack(int i){
  int j=random();
  if (i>0)
    randstack(i-1);
}

struct Cell {
  int value;
  struct Cell * next, * prev;
};

struct Cell *newCell(int value){
  struct Cell *p=malloc(sizeof *p);
  if (p==NULL) exit(2);
  p->value = value;
  return p;
}

struct Cell * append(struct Cell *list, struct Cell *newCell){
  struct Cell *p;
  if (list==NULL) return newCell;
  p=list;
  while(p->next != NULL) p=p->next;
  p->next = newCell;
  newCell -> prev = p;
  return list;
}

struct Cell *removeValue(struct Cell *list , int value){
  struct Cell *tmp;
  if (list==NULL) return NULL;
  if (list->value==value) {
    tmp=list->next;
    free(list);
    return removeValue(tmp,value);
  }
  list->next  = removeValue(list->next,value);
  return list;
}

struct Cell *reverseList(struct Cell *list){
  struct Cell *tmp;
  if (list==NULL) return NULL;  
  tmp = list->next;
  list->next = list->prev;
  list->prev=tmp;
  if (tmp==NULL)
    return list;
  else    
    return reverseList(tmp);
}

void print(struct Cell *l){
  if (l==NULL) {
    printf("\n"); 
    return;
  }
  printf("%d ",l->value);
  print(l->next);
}

void freeList(struct Cell *l){
  struct Cell *tmp;
  if (l==NULL) return;
  tmp=l->next;
  free(l);
  freeList(tmp);
}

int main(){
  struct Cell *list = NULL;
  int i;
  randstack(100);
  for(i=0;i<100;++i)
    list = append(list,newCell(i));
  print(list);
  for(i=10;i<50;i+=2)
    list = removeValue(list,i);
  print(list);
  list = reverseList(list);
  print(list);
  freeList(list);
  return EXIT_SUCCESS;
}
  
