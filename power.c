double Pow(double x, int y)
{
int i;
double number=1;
for(i=0;i<y;++i)
{
number*=x;
}
return number;
}


double Exp(int x)
{
int i;
double number=1;
for(i=0;i<x;i++)
{
number*=2.7182;
}
return number;
}
