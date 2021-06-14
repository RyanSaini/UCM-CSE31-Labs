#include <stdio.h>

int maxBars(int n, int price, int money);
int newBars(int nLeft, int n);

int main(){

int price;
int numWraps; //number of candy bar wrappers
int money;

printf("Welcome to BobCat Candy, home to the famous BobCat Bars! \n");

printf("Enter the price of each BobCat Bar: ");
scanf("%d", &price);
printf("\n");

printf("Enter the number of wrappers needed to exchange for new bar: ");
scanf("%d", &numWraps);
printf("\n");

printf("How much money do you have? ");
scanf("%d", &money);
printf("\n");

if(money < price){
    printf("No candy can be bought bud gg")
}
    
else{
    
    int max = maxBars(numWraps, price, money); //calculates maximum amount of bars given the information, recursive

    printf("%d", max);
}
}

int maxBars(int numWraps, int price, int money){

int numBars = (money / price);

printf("First, you buy ");
printf("%d", numBars);

int new = newBars(numBars, numWraps);

return 0;

int newBars(int nLeft, int n){
    
    if (nLeft > n){
        nLeft = nLeft / n;
        printf("Then you get: ")
        
        new = newBars(numBars, numWraps);
    }
    
    else{
        fin
    }

}
