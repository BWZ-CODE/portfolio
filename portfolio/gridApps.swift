//
//  gridApps.swift
//  portfolio
//
//  Created by Miguel Angel Bohorquez on 6/10/25.
//

import SwiftUI

struct gridApps: View {
    let columns : [GridItem] = [
        GridItem(.adaptive(minimum: 100, maximum: 200) ),GridItem(.flexible())]
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    gridApps()
}

struct FrameworkGridApps: View {
    let info : Framework
    
    var body: some View {
        VStack{
            Image(info.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(.circle)
            Text(info.name)
                .font(.headline)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}
