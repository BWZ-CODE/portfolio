//
//  appDetailView.swift
//  portfolio
//
//  Created by Miguel Angel Bohorquez on 6/10/25.
//

import SwiftUI

struct appDetailView: View {
    @State private var appear = false
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                            .modifier(closeButton())
                            .symbolEffect(.rotate, value: appear ? 360 : 0)
                            .symbolEffect(.bounce, value: appear)
                            .onAppear{
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    self.appear.toggle()
                                }
                            }
                        
                    }
                    
                }
                Spacer()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Image(.confussion)
                            .resizable()
                            .modifier(imageExample_Previews())
                        Image(.confussion)
                            .resizable()
                            .modifier(imageExample_Previews())
                        Image(.confussion)
                            .resizable()
                            .modifier(imageExample_Previews())
                        Image(.confussion)
                            .resizable()
                            .modifier(imageExample_Previews())
                    }
                    
                }.padding()
               
                Text("App name")
                    .font(.headline)
                    .fontDesign(.rounded)
                    Spacer()
                Text("example text here example text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text hereexample text here")
                    .padding()
                Spacer()
                Button {
                    
                } label: {
                    Text("Ir a repositorio")
                        .frame(width: 200, height: 40)
                        .background(Color.azul)
                        .foregroundColor(Color.beige)
                        .fontWeight(.bold)
                        .clipShape(Capsule())
                        
                }.padding()

                

                
            }
        }
    }
}

#Preview {
    appDetailView()
}

struct imageExample_Previews: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 150, height: 150)
            .background(Color.azul)
            .clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, bottomLeadingRadius: 20, bottomTrailingRadius: 20, topTrailingRadius: 20))
    }
    
    
}
struct closeButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color(.label))
            .imageScale(.large)
            .padding(.horizontal, 40)
    }
}
