/** @file matrix.h
 *  @brief A small matrix library
 *
 * This library provide a few functions for the computation with matrixs.
 */

#ifndef MATRIX_H
#define MATRIX_H
#include<vector.h>

/** @brief Definition of vector_t type  */ 
typedef struct {
  /** the row number of the matrix */
  unsigned row_size;
  /** the column number of the matrix */
  unsigned col_size;
  /** a pointer to the array of entries */
  double * values;
} matrix_t;

/** @brief Matrix factory
 *
 * This function builds a null matrix of size s;
 * the array is dynamically allocated and must be freed with the function
 * free_matrix
 * @param r,c: number of row (r) and columns (c) must be >0
 * @return a matrix of size s initialized to 0
 * @see free_matrix
 */

matrix_t make_matrix(unsigned r, unsigned c);

/** @brief Matrix factory
 *
 * This function delete in memory the dynamic array of the matrix stucture;
 * @param m: the matrix you want to free, must not be null.
 */

void free_matrix(matrix_t m);

/** @brief Matrix factory
 *
 * This function return you the value contained in at the i index of his value array;
 * @param m,i,j: the matrix m you want to get value (not null) and i the index of row (not null), j the index of column (not null).
 * @return a double, corresponding to the value contained at i,j index in the array.
 */

double m_get(matrix_t m, unsigned i, unsigned j);

/** @brief Matrix factory
 *
 * This function set at the value indexed i,j, the value x you passed in parameter;
 * @param m, i, j, x: the vector v you want to set value (not null) and i the index (not null) and x double you want to set.
 */

void m_set(matrix_t m, unsigned i, unsigned j, double x);

/** @brief Matrix factory
 *
 * This function insert your value x at the index i,j of the matrix;
 * @param m, i, j, x: the vector v you want to add value and i the index and x double you want to set.
 */

void m_add(matrix_t m, unsigned i, unsigned j, double x);

void peek_row(const matrix_t *m, unsigned i, vector_t *v);

vector_t apply(matrix_t m, vector_t v);

/** @brief Matrix factory
 *
 * This function print the matrix.
 * @param m: matrix you want to display.
 */

void m_print(matrix_t m);

/** @brief Matrix factory
 *
 * This function return your matrix rotated by alpha degree;
 * @param alpha: degree you want to rotate your matrix.
 * @return your matrix.
 */

matrix_t make_rotation_matrix(double alpha);

#endif