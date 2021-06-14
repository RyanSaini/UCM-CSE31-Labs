#include<stdio.h>
#include<string.h>
#include<stdlib.h>
void printArr(int *a, int size)
{

//Your code here

printf("printArr: ");
for(int i =0; i<size; i++){
  printf("%d", *a);
  a=a+1;
}

}
int* arrCopy(int *a, int size)
{

//Your code here 

int *arr1 = (int*) malloc(size*sizeof(int));
	for(int i =0; i<size; i++){
	*arr1 = *a;
	arr1= arr1+1;
	a= a + 1;
	}
	arr1=arr1-size;
  return arr1;
}

int main()
{   
 int n;    
int *arr;    
int *arr_copy;    
int i;    
printf("Enter size of array:\n");    
scanf("%d",&n);    


//Dynamically create an int array of n items    
//Your code here    

arr = (int*) malloc(n * sizeof(int));
	

//Ask user to input content of array
//Your code here

for(int i =0;i<n;i++){

	printf("Enter array content: %d \n" , i + 1); 
	scanf("%d", arr);
	arr= arr +1;

}

arr=arr-n;



/*************** YOU MUST NOT MAKE CHANGES BEYOND THIS LINE! ***********/

//Print original array    
printArr(arr, n);
//Copy array    
arr_copy = arrCopy(arr, n);
//Print new array    
printArr(arr_copy, n);    
return 0;}
