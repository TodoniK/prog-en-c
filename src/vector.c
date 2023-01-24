#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<assert.h>
#include<vector.h>

vector_t make_vector(unsigned s) {
  unsigned i;
  vector_t v;
  assert(s!=0);
  v.values = (double*) calloc(s,sizeof(double));
  v.size = s;
  return v;
}

double v_get(vector_t v, unsigned i) {
  assert(i<v.size);
  return v.values[i];
}

void v_set(vector_t v, unsigned i, double x) {
  assert(i<v.size);
  v.values[i] = x;
}

void v_add(vector_t v, unsigned i, double x) {
  assert(i<v.size);
  v.values[i] += x;
}

double scalar_prod(vector_t v1, vector_t v2) {
  int i;
  double r=0;
  assert(v1.size==v2.size);
  for(i=0; i<v1.size; i++)
    r+=v_get(v1, i)*v_get(v2, i);
  return r;
}

void v_print_h(vector_t v) {
  unsigned i;
  putchar('[');
  for(i=0; i<v.size; i++)
    printf(" %.2f", v_get(v,i));
  printf(" ]\n");
}

void v_print(vector_t v) {
  unsigned i;
  for(i=0; i<v.size; i++)
    printf("[ %.2f ]\n", v_get(v,i));
}

void free_vector(vector_t v){
  free(v.values);
}