//Jared Soltas WB26170
//Prints the board making it look nice. 

#include <stdio.h>

int drawBoard(int moves[15]){
    int position = 0;

    printf("\n");
    for(int i = 0; i < 4; i++){
        printf(" ");
        for(int k = 0; k < 4; k++){
            if(moves[position] == 0)
                printf(" ");
            else
                printf("%c", moves[position]);
            if(k < 3)
                printf(" | ");
            position++;
        }
        if(i < 3)
            printf("\n---------------\n");
    }
    printf("\n");
    

    return 0;
}

