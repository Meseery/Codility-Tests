//
//  BinaryGap.swift
//  Codility-Tests
//
//  Created by Mohamed EL Meseery on 11/28/16.
//
//

import Foundation

/**
    Refer to BinaryGap challenge file for description.
 **/

public func solution(_ N : Int) -> Int {
        var maxGap = 0
            // int to binary in String representation
        let binary = String(N, radix:2)
        
        if N<5 || binary.characters.count < 3 {
            return maxGap
        }
        var started = false
        var zeroCount = 0
        for b in binary.characters {
            if b == "0" && !started{
                continue
            }else if b == "1"{
                started = true
                maxGap = maxGap > zeroCount ? maxGap : zeroCount
                zeroCount = 0
            }else {
                zeroCount = zeroCount + 1
            }
        }
    return maxGap
}

