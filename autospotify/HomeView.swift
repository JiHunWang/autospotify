//
//  HomeView.swift
//  autospotify
//
//  Created by Ji Hun Wang on 2022/09/18.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            Text("Tap to listen!")
                .font(.system(size: 30).weight(.regular))
            
            
            Button(action: {
                print("tapped")
            }) {
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 110, height: 120)
                    .padding(EdgeInsets(top: 40, leading: 50, bottom: 40, trailing: 35))
                    .background(LinearGradient(gradient: Gradient(colors: [Color("Quepal_start"), Color("Quepal_end")]), startPoint: .leading, endPoint: .trailing))
                    .clipShape(Circle())
                    .shadow(radius: 10, y: 5)
                    .foregroundColor(.white)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
