#include <stdio.h>

void* add1(void* a){
	*(int*)a = (*(int*)a + 1);
	return a;
}

void* apply(void * fun (void*), void* a){
	return fun(a);
}

int main(){
	int value = 7;
	apply(add1, &value);
	printf("Value is: %d\n", value);
	return 0;
}
