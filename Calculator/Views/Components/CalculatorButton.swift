//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Safar Safarov on 20/08/22.
//

import Foundation
import SwiftUI

extension CalculatorView {
    struct CalculatorButton: View {
        
        let buttonType: ButtonType
        
        var body: some View {
            Button(buttonType.description) { }
                .buttonStyle(CalculatorButtonStyle(
                    size: 80, // <- We'll calculate in the next step
                    backgroundColor: buttonType.backgroundColor,
                    foregroundColor: buttonType.foregroundColor)
                )
        }
    }
}
