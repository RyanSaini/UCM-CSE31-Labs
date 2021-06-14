#include <stdio.h>
int main()
{
int one;
int two;
printf("Enter the number of lines for punishment: ");
scanf("%d", &one);

if(one <=0)
{
  printf("You entered an incorrect value for the line type!");
   return 0;
}

printf("enter the line for which we want to make a typo: ");
scanf("%d", &two);

if(two <=0)
{
  printf("You entered an incorrect value for the number of lines!");
   return 0;
}

for(int i =0; i<one; i++)
{
	if(two == i)
	{
  	  printf("C programming language is the bet!");
	}
	else if 
	{
  	  printf("C programming language is the best!");
	}

}


}

