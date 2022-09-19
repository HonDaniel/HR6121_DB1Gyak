#include <stdio.h>
#include <stdlib.h>
void feladat_2();
int main()
{

feladat_2("munka.txt","masol.txt");
return 0;
}

void feladat_2(char *fnev1, char *fnev2)
{
FILE *fp1, *fp2;
char ch;
int pos;

if ((fp1 = fopen(fnev1, "r")) == NULL){
printf("\nNem tudom megnyitni a fajlt.");
return;
}

else{
printf("\nMegnyitottam a fajlt\n ");
}

fp2 = fopen(fnev2, "w");
fseek(fp1, 0L, SEEK_END);
pos = ftell(fp1);
fseek(fp1, 0L, SEEK_SET);

while (pos--){
ch = fgetc(fp1);
fputc(ch, fp2);
}
fclose(fp1);
fclose(fp2);
}
