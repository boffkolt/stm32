#include    "stm32f10x.h"
#include    "init_all.c"







int main(void)
{
//    int i;
    //int a=0;

InitAll();
//int arr_pwm[]={65536,58982,52428,45875,39321,32768,26214,19660,13107,6553,0,0};
int x;
x=0;
x*=2;
while(1)
    
{
 //GPIOA->ODR=0x00000001;
GPIOA->BSRR =GPIO_BSRR_BR0;
/*GPIOA->BSRR =GPIO_BSRR_BR1;
GPIOA->BSRR =GPIO_BSRR_BR2;
GPIOA->BSRR =GPIO_BSRR_BR3;
GPIOA->BSRR =GPIO_BSRR_BR4;
GPIOA->BSRR =GPIO_BSRR_BR5;
GPIOA->BSRR =GPIO_BSRR_BR6;
GPIOA->BSRR =GPIO_BSRR_BR7;


GPIOA->BSRR =GPIO_BSRR_BS11;
GPIOA->BSRR =GPIO_BSRR_BS12;
GPIOA->BSRR =GPIO_BSRR_BS13;
GPIOA->BSRR =GPIO_BSRR_BS14;
GPIOA->BSRR =GPIO_BSRR_BS15;*/

}
}

/*for (i=0;i<=65536;i+=100) 
{TIM2->CCR1=i;
   for (a=0;a<1000;a++)
    {x++;} }
    
     for (i=65536;i>=0;i-=100) 
{TIM2->CCR1=i;
   for (a=0;a<1000;a++)
    {} }   
   
 
 for (i=0;i<=65536;i+=100) 
{TIM2->CCR2=i;
for (a=0;a<1000;a++)
    {} 
   }
 
     for (i=65536;i>=0;i-=100) 
{TIM2->CCR2=i;
   for (a=0;a<1000;a++)
    {}}   


   */
    

    


   

    
 
 
    /*
{

 
 //for(i=0; i<100000; i++)
 	//{
      //  a+=i;
 	//}

 // GPIOA->BSRR =GPIO_BSRR_BR1;
   //for(i=0; i<100000; i++)
 	//{
 //a+=i;
        
//GPIOA->BSRR =GPIO_BSRR_BS0;
 
// for(i=0; i<100; i++)
 //	{
 
 	//}

 // GPIOA->BSRR =GPIO_BSRR_BR0;
   //for(i=0; i<100; i++)
 	//{
 
     //}
      //GPIOA->ODR=0x0000;
int a,b,v;
//asm("NOP");

}
}


 

*/