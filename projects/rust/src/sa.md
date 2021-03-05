# Short Answer 

I would suggest looking at the notes found in /notes/06-security.md

## Q1

```C
#include <stdio.h>
#include <stdlib.h>

int main(int argv, char** argc){
  char c;
  int pos;
  int count = 0;
  char  pass[9];
  char  passin[9];
  strcpy(pass,"password");
  while(count < 3){
    pos = 0;
    printf("password: ");
    while((c=getchar()) != '\n' && c != EOF){
      passin[pos++] = c; 
    }
    passin[8] = '\0';
    if(strcmp(pass,passin) == 0){
      printf("success!\n");    
      return 0;
    }
    count++;
  }
  printf("failed\n");
  return 1;
}
```

### What type of attack is this? 

### What makes it dangerous?

### How can you exploit it?

### Fix it

This doesn't have to do exactly what the original code does, but has to 
not have the original vulnerability and explain how this fixes the problem. 

```Rust

```

## Q2

```C
struct Node{
	int value = 0;
	struct Node* next = NULL;
}

struct Node *head = malloc(sizeof(struct Node);
struct Node *tail	= malloc(sizeof(struct Node);
head->value = 10;
tail->value = 14;

head->next = tail;
free(tail);
tail = NULL;
tail = malloc(sizeof(struct Node);
//comment 1
if (head->next->value != 10)
	do_something();
```

### What type of attack is this? 

### What makes it dangerous?

### How can you exploit it?

### Fix it

This doesn't have to do exactly what the original code does, but has to 
not have the original vulnerability and explain how this fixes the problem. 

```Rust

```

## Q3

```c
	char buffer[1028];
	int id = fork();
	if (id > 1){
		if (access("file", R_OK) != 0) {
			 printf("cannot access file \n")
			 exit(1);
		}
		//comment 1
		fd = open("file", R_WRONLY);
		read(fd, buffer, 1023);
	}
```

### What type of attack is this? 

### What makes it dangerous?

### How can you exploit it?

### Fix it

This doesn't have to do exactly what the original code does, but has to 
not have the original vulnerability and explain how this fixes the problem. 

```Rust

```
