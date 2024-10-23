//
//  instagramProfile.swift
//  aula01
//
//  Created by Turma01-9 on 23/10/24.
//

import SwiftUI

struct instagramProfile: View {
    var body: some View {
        VStack{
            HStack{
                Text("username")
                    .padding(.leading, 30)
                    .padding(.bottom, 30)
                
                
                Spacer()
            }
            HStack{
                Image(.girassol)
                    .resizable()
                    .clipShape(Circle())
                
                    .frame(width: 130, height: 130)
                VStack{
                    HStack{
                        VStack{
                            Text("8")
                            Text("Posts")
                        }
                        VStack{
                            Text("12k")
                            Text("Followers")
                        }
                        VStack{
                            Text("2k")
                            Text("Following")
                        }
                    }.padding(.leading,15)
                    Text("Follow").frame(width:220, height: 30).background(.gray).cornerRadius(5)
                }
            }
            HStack{
                VStack{
                    
                    Text("Nome Sobrenome")
                    
                }
                
            }
            Spacer()
            
        }
    }
}

#Preview {
    instagramProfile()
}
