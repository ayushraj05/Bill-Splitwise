//
//  SplitBrain.swift
//  Bill Splitwise
//
//  Created by Ayush Rajpal on 23/05/24.
//

import Foundation

struct SplitBrain {
    
    var TipPerC: Int = 0
    var BillAmount: String = ""
    var NumberOfPeople: Int = 2
    var ResultAmount: Float = 0.0
    
    mutating func getBill() ->Float{
        let TipAmount = (Float(BillAmount)!/100.00) * (Float(TipPerC))
        let TotalAmount = (Float(BillAmount)!) + TipAmount
        ResultAmount = TotalAmount / Float(NumberOfPeople)
        return ResultAmount
    }
}

