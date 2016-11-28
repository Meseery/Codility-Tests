//
//  WholeSquare.swift
//  Codility-Tests
//
//  Created by Mohamed EL Meseery on 11/29/16.
//
//

import Foundation

/**
    Refer to WholeSquare challenge file for description.
 **/

public func solution(_ A : Int, _ B : Int) -> Int {
    var count = 0
    var range = 0...0
    
    if A>B {
        range = B...A
    }else{
        range = A...B
    }
    
    for i in range {
        let square = sqrt(Double(i))
        if  square == Double(Int(square)){
            count = count + 1
        }
    }
    return count
}
    
