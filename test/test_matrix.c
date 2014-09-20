#include "syscall.h"

#define PAGE_SIZE 128
#define MATRIX_SIZE 32
#define INIT_SIZE PAGE_SIZE * 16

inline
int valueAt(int i, int j) {
  return 37 * i + j;
}

int add_stack(int depth) {
  int a[MATRIX_SIZE][MATRIX_SIZE];
  int i, j;
  for(j = 0;j < MATRIX_SIZE;++j)
	  for(i = 0;i < MATRIX_SIZE;++i)
		  a[i][j] = valueAt(i, j);
  if (depth > 1)
    if(add_stack(depth - 1) == -1)
		return -1;
  for(j = 0;j < MATRIX_SIZE;++j)
	  for(i = 0;i < MATRIX_SIZE;++i)
		  if(!a[i][j] == valueAt(i, j)) {
			  printf("value incorrect!\n");
			  return -1;
		  }
}

int main() {

  char a[PAGE_SIZE * 16];
  int i;
  for (i = 0; i < INIT_SIZE; i += PAGE_SIZE)
    a[i] = 1;
  if(add_stack(1) == -1)
	  return -1;
  return 0;
}
