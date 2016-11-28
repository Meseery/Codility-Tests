//
//  BinaryGap.m
//  Codility-Tests
//
//  Created by Mohamed EL Meseery on 11/28/16.
//
//

#import <Foundation/Foundation.h>

/**
    Refer to BinaryGap challenge file for description.
 **/

int solution(int N){
    
    int maxGap = 0;
    
    // int to binary in String representation
    NSString *binary = @"" ;
    NSUInteger x = N ;
    do {
        binary = [[NSString stringWithFormat: @"%lu", x&1] stringByAppendingString:binary];
    } while (x >>= 1);
    
    if (N<5 || [binary length] < 3) {
        return maxGap;
    }
    
    
    bool started = false;
    int zeroCount = 0;

    for (int i = 0; i<binary.length; i++) {
        char  b = [binary characterAtIndex:i];
        
        if (b == '0' && !started){
            continue;
        }else if( b =='1'){
            started = true;
            maxGap = maxGap > zeroCount ? maxGap : zeroCount;
            zeroCount = 0;
        }else {
            zeroCount += 1;
        }
    }
    return maxGap;
}
