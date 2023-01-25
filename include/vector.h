/** @file vector.h
 *  @brief A small vector library
 *
 * This library provide a few functions for the computation with vectors.
 */

#ifndef VECTOR_H
#define VECTOR_H

/** @brief Definition of vector_t type  */ 
typedef struct {
  /** the size of the vector */
  unsigned size;
  /** a pointer to the array of entries */
  double * values;
} vector_t;

/** @brief Vector factory
 *
 * This function builds a null vector of size s;
 * the array is dynamically allocated and must be freed with the function
 * free_vector
 * @param s: the size of the vector must be >0
 * @return a vector of size s initialized to 0
 * @see free_vector
 */

vector_t make_vector(unsigned s);

/** @brief Vector factory
 *
 * This function delete in memory the dynamic array of the vector stucture;
 * @param v: the vector you want to free, must not be null.
 */

void free_vector(vector_t v);

/** @brief Vector factory
 *
 * This function return you the value contained in at the i index of his value array;
 * @param v, i: the vector v you want to get value (not null) and i the index (not null).
 * @return a double, corresponding to the value contained at i index in the array.
 */

double v_get(vector_t v, unsigned i);

/** @brief Vector factory
 *
 * This function set at the value indexed i, the value x you passed in parameter;
 * @param v, i, x: the vector v you want to set value (not null) and i the index (not null) and x double you want to set.
 */

void v_set(vector_t v, unsigned i, double x);

/** @brief Vector factory
 *
 * This function insert your value v at the index i of the vector;
 * @param v, i, x: the vector v you want to add value and i the index and x double you want to set.
 */

void v_add(vector_t v, unsigned i, double x);

/** @brief Vector factory
 *
 * This function do the scalar product of two vectors;
 * @param v1, v2: two vector you want to multiply (not null)
 * @return the product of scalar product.
 */

double scalar_prod(vector_t v1, vector_t v2);

/** @brief Vector factory
 *
 * This function print the vector into an horizontal array.
 * @param v: vector you want to display.
 */

void v_print_h(vector_t v);

/** @brief Vector factory
 *
 * This function print the vector into a vertical array.
 * @param v: vector you want to display.
 */

void v_print(vector_t v);

#endif
