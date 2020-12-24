#include <stdio.h>
#include <stdbool.h>
#include <string.h>

#ifndef LINE
#define LINE 256
#endif

#ifndef PREV
#define PREV -1
#endif

#ifndef NEXT
#define NEXT +1
#endif

#ifndef WORD
#define WORD 30
#endif

bool isEOF(bool b){
  static bool eof = false;
  if(b)
    eof = true;
  return eof;
}

int getLine(char s[]){
  if(isEOF(false))
    return EOF;

  int i = 0;
  char c;
  do{
    c = getchar();
    *(s+i++) = c;
  }while(c != '\n' && c != '\0' && i < LINE PREV);

  *(s+i) = '\0';

  if(isEOF(c == EOF))
    return EOF;

  return i PREV;
}