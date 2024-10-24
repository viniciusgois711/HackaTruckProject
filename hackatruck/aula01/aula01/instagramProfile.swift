import SwiftUI

struct instagramProfile: View {
    var body: some View {
        VStack(spacing: 1){
            HStack{
                Text("username")
                    .padding(.leading, 20)
                    .bold()
                Spacer()
                Image(systemName: "paperplane").padding(.trailing,10)
                Image(systemName: "ellipsis").padding(.trailing,20)
                
                
            }.padding(.bottom, 30)
            HStack{
                Image(.girassol)
                    .resizable()
                    .clipShape(Circle())
                
                    .frame(width: 130, height: 130)
                    .overlay(Image(systemName: "plus.circle.fill").resizable().frame(width: 30, height: 30).offset(x:50,y:50))
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
            VStack{
                HStack{
                    Text("Nome Sobrenome").padding(.leading,20).padding(.top,15)
                    Spacer()
                }
                HStack{
                    Text("Biografia Biografia Biografia").padding(.leading,20)
                    Spacer()
                }
            }
            HStack{
                Spacer()
                Image(systemName: "square.grid.3x3.fill").padding(.top, 80)
                Spacer()
                Spacer()
                Image(systemName: "person.crop.rectangle").padding(.top,80)
                Spacer()
            }.padding(.bottom, 10)
            HStack(spacing:1){
                
                Text("").frame(width: 140, height: 140).background(.gray)
                    
                Text("").frame(width: 140, height: 140).background(.gray)
                    
                Text("").frame(width: 140, height: 140).background(.gray)
                
            }
            HStack(spacing:1){
                
                Text("").frame(width: 140, height: 140).background(.gray)
                    
                Text("").frame(width: 140, height: 140).background(.gray)
                    
                Text("").frame(width: 140, height: 140).background(.gray)
                
            }
            
            
            }
            Spacer()
            
        }
    }

#Preview {
    instagramProfile()
}
