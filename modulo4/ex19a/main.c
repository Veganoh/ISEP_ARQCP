#include <string.h>  
#include "../../unity.h"
#include "asm.h" 


void call_func ( void (*f)(char c, int *p1, int *p2 ), char c, int *p1, int *p2 );  

void setUp(void) {
    // set stuff up here
}

void tearDown(void) {
    // clean stuff up here
}



void run_test(char ch, int *p, int num, int * expected)
{
    int  test_vec[100]; 
    int  out_vec[100]; 
    memset(test_vec, 0x55, sizeof test_vec);
    memset(out_vec, 0x55, sizeof out_vec);
    memcpy(test_vec+1,p,num*sizeof(int)); 

    call_func(add_byte,ch,test_vec+1,out_vec+1);
    if (num!=1)
	    TEST_ASSERT_EQUAL_INT_ARRAY(expected,out_vec+1,num); 
    TEST_ASSERT_EQUAL_INT(0x55555555,test_vec[0]); 
    TEST_ASSERT_EQUAL_INT(0x55555555,test_vec[num+1]); 
    TEST_ASSERT_EQUAL_INT(0x55555555,out_vec[0]); 
    TEST_ASSERT_EQUAL_INT(0x55555555,out_vec[num+1]); 
        
}


void test_Zero()
{ 
    run_test(0,(int[]){0},1,(int[]){}); 
}
void test_One()
{ 
    run_test(5,(int[]){6,0xffffffff,0xff,0xfffff0ff,0xfffff8ff,0,4},7,
	       (int[]){6,0xffffff04,0x04,0xfffff004,0xfffff804,5,9}); 
}

int main()
  { 

    UNITY_BEGIN();
    RUN_TEST(test_Zero);
    RUN_TEST(test_One);
    return UNITY_END();  

  } 






