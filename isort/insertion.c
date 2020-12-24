#ifndef PREV
#define PREV -1
#endif

#include "insertion.h" 

void shift_element(int* arr, int i){
  int tmp = *(arr+i);
  for( ; 0 < i; i--){
    *(arr+i) = *(arr+i PREV);
  }
  *arr = tmp;
}

void insertion_sort(int* arr , int len){
  for(int sortIndex = 0; sortIndex < len; sortIndex++){
    int minIndex = findMin(arr, len, sortIndex);
    shift_element(arr+sortIndex, minIndex-sortIndex);
  }
}

int findMin(int* arr , int len, int from){
  int min = from;
  from++;
  while (from < len) {
    if(*(arr+from) < *(arr+min))
      min = from;
    from++;
  }
  return min;
}