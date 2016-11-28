//
//  WholeSquare.m
//  Codility-Tests
//
//  Created by Mohamed EL Meseery on 11/29/16.
//
//

#import <Foundation/Foundation.h>

/**
    Refer to WholeSquare challenge file for description.
 **/

int solution(int A, int B)  {
    
    int count = 0;
    NSMutableArray * range = [NSMutableArray array];
    
    int lower = A<B ? A : B;
    int upper = A>B ? A : B;
    
    for (int i = lower; i<=upper; i++) {
        [range addObject:@(i)];
    }
    
    for (NSNumber *i in range){
        double square = sqrt(i.doubleValue);
        int sq = (int)square;
        if (square == (double)sq) {
            count++;
        }
    }
    
    return count;
}
