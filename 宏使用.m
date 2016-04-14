//
//  main.m
//  12.4.2
//
//  Created by lordage on 4/10/16.
//  Copyright © 2016 lordage. All rights reserved.
//
#import <Foundation/Foundation.h>
#define MIN_Lor(num1,num2) ((num1) >= (num2) ? num2 : num1)
#define MAX_Lor(num1,num2) ((num1) >= (num2) ? num1 : num2)
#define MAX3(num1,num2,num3) (MAX_Lor(MAX_Lor(num1,num2),num3))
#define IS_UPPER_CASE(char) ((char)>='A'&&(char)<='Z' ? 1 : 0)
#define IS_LOWER_CASE(char) ((char)>='a'&&(char)<='z' ? 1 : 0)
#define IS_ALPHABETIC(char) ((IS_LOWER_CASE(char))||(IS_UPPER_CASE(char))? 1 : 0)   //宏调用宏
#define IS_DIGIT(num) (( (num)>='0'&&(num)<='9' ) ? 1 : 0)
#define IS_SPECIAL(char) ((IS_ALPHABETIC(char)||IS_DIGIT(char)) ? 1 : 0)
#define ABSOLUTE_VALUE(x) ((x)>=0 ? (x) : ((x)*(-1)))
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a,b,min;
        int num1 = 10,num2 = 11,num3 = 12;
        a = 10;
        b = 5;
        min = MIN_Lor(a,b);
        NSLog(@"the min is %i",min);
        NSLog(@"the MAX number is %i",MAX3(num1, num2, num3));
        NSLog(@"the Character is %i",IS_UPPER_CASE('A'));
        NSLog(@"if it's a character: %i",IS_ALPHABETIC('a'));
        NSLog(@"if it's a character: %i",IS_ALPHABETIC('0'));
        NSLog(@"if it's a special character: %i",IS_SPECIAL('a'));
        NSLog(@"if it's a special character: %i",IS_SPECIAL('0'));
        NSLog(@"if it's a special character: %i",IS_SPECIAL(']'));
        NSLog(@"absolute number: %i",ABSOLUTE_VALUE(-10+1000));
    }
    return 0;
}
