#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<assert.h>
#include<matrix.h>

int main() {
  vector_t v,w;
  int i,j;
  double pi=3.14159265;
  matrix_t m = make_rotation_matrix(pi/6);
  v= make_vector(2);
  v_set(v, 0, 1);
  v_set(v, 1, -1);
  w = apply(m, v);
  m_print(m);
  v_print(w);
  vector_t nv_vec = make_vector(7);
  printf("taille mémoire vecteur %d\n",sizeof(vector_t)+sizeof(double)*7);
  free_matrix(m);
  free_vector(v);
  free_vector(w);
  return EXIT_SUCCESS;
}