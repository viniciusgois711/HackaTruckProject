import SwiftUI
import UIKit

struct IMCCalculator: View {
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var nomeImagem: String = ""
    @State private var novoPeso: Double = 0
    @State private var novaAltura: Double = 0
    @State private var calculo: Double = 0
    @State private var cor: Color = .white
    @State private var resultado: String = ""
    var body: some View {
        ZStack{
            cor
                .ignoresSafeArea()
            VStack{
                
                Text("Calculadora de IMC").font(.system(size: 40)).bold().padding(.bottom, 40)
                TextField("Digite seu peso",text: $peso).frame(width: 300, height: 50).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
                TextField("Digite sua altura(cm)", text:$altura).frame(width: 300, height: 50).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
                
                
                Button(action: {
                    novoPeso = (peso as NSString).doubleValue
                    novaAltura = (altura as NSString).doubleValue
                    
                    calculo = novoPeso/(novaAltura*novaAltura)
                    if calculo<18.5{
                        cor = Color(.baixoPeso)
                        resultado = "Baixo Peso"
                    }else if calculo>=18.5 && calculo<=24.99{
                        cor = Color(.pesoNormal)
                        resultado = "Normal"
                    }else if calculo>=25 && calculo<=29.99{
                        cor = Color(.sobrePeso)
                        resultado = "Sobrepeso"
                    }else {
                        cor = Color(.obesidade)
                        resultado = "Obesidade"
                    }
                }, label: {
                    Text("Calcular")
                }).foregroundColor(.white).frame(width: 250, height: 60).background(.blue).cornerRadius(20).padding(.top, 20)
                                Spacer()
                Text(resultado).font(.system(size: 40)).bold().padding(.bottom, 40)
                Spacer()
                Image(.imc).resizable().frame(width: 400,height: 200)
            
            }
        }
    }
        
    }

#Preview {
    IMCCalculator()
}
