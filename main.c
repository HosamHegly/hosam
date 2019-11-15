#include <stdio.h>
#include "myMath.h"


int main( int argc , char **argv)
{
double number;
double x;

printf("enter x:\n");
scanf("%lf",&x);
number=sub(add(Exp((int)x),Pow(x,3)),2);
printf("f(x)=e^x + x^3 -2 = ");
printf("%.4lf\n",number);
printf("f(x)=3x+2x^2 = ");
number=add(mul(x,3),mul(Pow(x,2),2));
printf("%.4lf\n",number);
printf("f(X)= (4x^3)/5-2x = ");
number=sub(div(mul(Pow(x,3),4),5),mul(x,2));
printf("%.4lf\n",number);
return 0;
}




