#include <stdio.h>
int main(){
	int x=0; 
	int y=0;
	int *px = 0;
	int *py = 0;
	int arr[10];
	arr[0] = 12; // just to see if both this and the for loop print the same.
	printf("%p", &x);
	printf("%p", &y);
	printf("\n");
	printf("%d", arr[0]);
	printf("\n");
	px=&x;
	py=&y;
	printf("%p", px);
	printf("%p", py);
	printf("\n");

	for (int i =0; i<10;i++){ //Loop using array as pointer.
	  

	printf("%d", *(arr + i));
	printf("\n");

	}


	printf("%p", &arr);
	
	return 0;
}
