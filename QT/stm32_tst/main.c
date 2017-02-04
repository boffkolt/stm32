#include  "stm32f10x.h"




void InitAll (void)

{

RCC->CR |= 0x00004683 ;
RCC->CFGR = 0x000000; 	
RCC->APB2ENR = 0x00000004;
GPIOA->CRL = 0x44444411;


}


int main(void)
{

InitAll();


while(1)
{
 int i;

 
 GPIOA->BSRR =GPIO_BSRR_BS1;
 
 for(i=0; i<100000; i++)
 	{
 
 	}

  GPIOA->BSRR =GPIO_BSRR_BR1;
   for(i=0; i<100000; i++)
 	{
 
	 }
 GPIOA->BSRR =GPIO_BSRR_BS0;
 
 for(i=0; i<100000; i++)
 	{
 
 	}

  GPIOA->BSRR =GPIO_BSRR_BR0;
   for(i=0; i<100000; i++)
 	{
 
     }
}
}
 

