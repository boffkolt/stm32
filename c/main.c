#include <stdio.h>

int main(int argc, char **argv)
{
    char x,s=0;
    enum seg {A,B,C};
    s=A;
    switch (s)
    {
    case A : x=2; break;
    case B : x=3; break;
    case C : x=4; break;
    }
	//printf("%c hello world\n",x);
	return 0;
}
