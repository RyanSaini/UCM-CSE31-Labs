#include <stdio.h>
int main()
{

int pos=0;
int neg=0;
int poscount=0;
int negcount=0;
int arr1=1;

while(arr1!=0){
  printf("Please enter an integer: ");
  scanf("%d", &arr1);

	if(arr1[i]<0){
	  neg += arr1;
	  negcount++;
	}

	if(arr1[i]>0){
	  pos += arr1[i];
	  poscount++;
	}


	if(arr1[i] == 0){
	  printf("Positive Average: %d\n", (pos/poscount));
	  printf("Negative Average: %d\n", (neg/negcount));
	   return 0;
	}

}
}
