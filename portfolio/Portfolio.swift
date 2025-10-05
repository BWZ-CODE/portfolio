//
//  ContentView.swift
//  portfolio
//
//  Created by Miguel Angel Bohorquez on 4/10/25.
//

import SwiftUI

struct Portfolio: View {
    
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                    
                    Color.beige.edgesIgnoringSafeArea(.all)
                    VStack(spacing: 0){
                        ZStack{
                            Image(.head)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 400)
                                .frame(maxWidth: .infinity)
                                .clipped()//recorta la imagen para que no se salga del height que queremos
                                .opacity(0.6)
                                .overlay(//Hace como una capa encima de lo que tenemos, del mismo tamaño y propiedades
                                    Text("Miguel Angel Bohorquez")
                                            .font(.system(size: 48, weight: .heavy, design: .rounded))
                                            .multilineTextAlignment(.center)
                                            .padding(.horizontal, 20)
                                            .background(
                                                RoundedRectangle(cornerRadius: 12, style: .continuous)
                                                    .fill(.ultraThinMaterial)
                                                    .padding(.horizontal, -8)
                                                    .padding(.vertical, -4)
                                            )
                                            .foregroundStyle(Color.azul)
//                                            .padding(.top, -140)
                                    
                                    
                                )
                                .compositingGroup() // Necesario para que funcione el blend
                            
                            
                            
                        }
                        Spacer()
                        Section{
                            ZStack{
                                Color.azul.ignoresSafeArea(.all)
                                VStack{
                                    Text("About Me").modifier(Subtitles())
                                    Text("I'm a versatile iOS developer specializing in SwiftUI, UIKit, and iOS applications. Furthermore I have an special dedication in mobile app development and UI/UX design.").modifier(Parrafos())                                }
                            }
                            .clipShape(
                                UnevenRoundedRectangle(
                                    topLeadingRadius: 25,
                                    bottomLeadingRadius: 25,
                                    bottomTrailingRadius: 25,
                                    topTrailingRadius: 25,
                                    style: .continuous
                                )
                            )
                            .padding()
                            
                        }.shadow(radius: 5, x: 0, y: 10)
                        Spacer()
                        Section{
                            HStack{
                                Image(.confussion)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                ZStack{
                                    Color.azul.ignoresSafeArea(.all)
                                    VStack{
                                        Text("Bro, why iOS?")
                                            .modifier(Subtitles())
                                            
                                        Text("Honestly I started with web dev, but soon I descovered that design and develop app was I really felt passion for, and as a plus I loved the identity of Apple and that's how I fell in love with iOS.").modifier(Parrafos())
                                    }
                                }
                                .cornerRadius(20)
                                .shadow(radius: 5, x: 0, y: 10)
                                .padding()
                                    
                                
                            }
                        }
                        
                        
                    }
                }
                
                
                
            }
            .ignoresSafeArea(edges:.top)
        }
    }
}



private struct HeaderOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct Subtitles: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.largeTitle.bold()).foregroundStyle(Color.beige).multilineTextAlignment(.center)
            .padding(.trailing, .leastNormalMagnitude)
            .padding(.top, 20)
    }
}
struct Parrafos: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundStyle(Color.beige)
            .font(.callout)
        
    }
}


#Preview {
    Portfolio()
}

