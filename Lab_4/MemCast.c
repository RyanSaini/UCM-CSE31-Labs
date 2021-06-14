#include <stdio.h>

int main() {
	int i;
	int four_ints[4];
	char* four_c;

	for(i=0; i<4; i++)
        four_ints[i] = 2;

	printf("%x\n", four_ints[0]);
	
    four_c = (char*)four_ints;

	for(i=0; i<4; i++)
        four_c[i] = 'A'; // ASCII value of 'A' is 65 or 0x41 in Hex.
    
    // Add your code for the exercises here:
	
    printf("four_ints[0] %x \n", four_ints[0]);
    printf("four_ints[0] %x \n", four_ints[1]);
	
    printf("four_ints, four_c %p, %p \n", four_ints, four_c);
    
    for (int i=0; i<4;i++){
        printf("address: %x, value: %x\n", &four_ints[i], four_ints[i] );
    }
    
    printf("four_c: \n");
    for (int i=0; i<4;i++){
           printf("address: %x, value: %x\n", &four_c[i], four_c[i] );
       }
    
	return 0;

}
