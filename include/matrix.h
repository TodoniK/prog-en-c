#ifndef MATRIX_H
#define MATRIX_H
#include<vector.h>

typedef struct {
  unsigned row_size;
  unsigned col_size;
  double * values;
} matrix_t;

matrix_t make_matrix(unsigned r, unsigned c);

double m_get(matrix_t m, unsigned i, unsigned j);

void m_set(matrix_t m, unsigned i, unsigned j, double x);

void m_add(matrix_t m, unsigned i, unsigned j, double x);

void peek_row(const matrix_t *m, unsigned i, vector_t *v);

vector_t apply(matrix_t m, vector_t v);

void m_print(matrix_t m);

matrix_t make_rotation_matrix(double alpha);

#endif