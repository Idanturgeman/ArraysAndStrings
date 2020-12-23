#ifndef PREV
#define PREV -1
#endif

void shift_element(int* arr, int i){
  int tmp = *(arr+i);
  for( ; 0 < i; i--){
    *(arr+i) = *(arr+i PREV);
  }
  *arr = tmp;
}