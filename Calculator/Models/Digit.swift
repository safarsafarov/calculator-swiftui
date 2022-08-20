//
//  Digit.swift
//  Calculator
//
//  Created by Safar Safarov on 20/08/22.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
    
    enum ButtonType: Hashable, CustomStringConvertible {
        case digit(_ digit: Digit)
        case operation(_ operation: ArithmeticOperation)
        case negative
        case percent
        case decimal
        case equals
        case allClear
        case clear
        
        var description: String {
            switch self {
            case .digit(let digit):
                return digit.description
            case .operation(let operation):
                return operation.description
            case .negative:
                return "±"
            case .percent:
                return "%"
            case .decimal:
                return "."
            case .equals:
                return "="
            case .allClear:
                return "AC"
            case .clear:
                return "C"
            }
        }
    }
}




