#ifndef VECTOR_H
#define VECTOR_H

typedef struct {
  unsigned size;
  double * values;
} vector_t;

vector_t make_vector(unsigned s);

double v_get(vector_t v, unsigned i);

void v_set(vector_t v, unsigned i, double x);

void v_add(vector_t v, unsigned i, double x);

double scalar_prod(vector_t v1, vector_t v2);

void v_print_h(vector_t v);

void v_print(vector_t v);

#endif