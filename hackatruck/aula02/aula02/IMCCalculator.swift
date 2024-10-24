//
//  IMCCalculator.swift
//  aula02
//
//  Created by Turma01-9 on 24/10/24.
//

import SwiftUI
import UIKit

struct IMCCalculator: View {
    @State private var peso: String = ""
    @State private var altura: String = ""
    
    var body: some View {
        VStack{
            Text("Calculadora de IMC")
            TextField("Digite seu peso",text: $peso).frame(width: 300, height: 50).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
            TextField("Digite sua altura(cm)", text:$altura).frame(width: 300, height: 50).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
            
            var peso = (peso as NSString).doubleValue
            var altura = (altura as NSString).doubleValue
            
            var calculo = peso/(altura*altura)
     
            func showResult(){
                
            }
            
            Button("Calcular", action: showResult)
            
            Text("\(calculo)")
            
            
            
            Spacer()
        }
        
    }
}

#Preview {
    IMCCalculator()
}
