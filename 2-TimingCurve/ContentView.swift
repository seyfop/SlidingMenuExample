//
//  ContentView.swift
//  2-TimingCurve
//
//  Created by Seyfo on 23.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var show = false // True olduğunda menü alanı görülecek
    
    var body: some View {
        
        ZStack{
            Color(.lightGray).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                Text("Custom Timing Curve").font(.largeTitle)
                Text("Menu Example").foregroundColor(.gray)
                
                Spacer()
                GeometryReader{ gr in
                    HStack{
                        HStack(spacing: 30){
                            
                            Button {} label: { Image(systemName: "wand.and.rays.inverse")}.padding(.leading, 30)
                            Button {} label: { Image(systemName: "dial.fill")}
                            Button {} label: { Image(systemName: "paintbrush.fill")}
                            Button {} label: { Image(systemName: "bandage.fill")}
                            
                            Button(action: { self.show.toggle( )}, label: {Image(systemName: "line.horizontal.3.decrease")}).rotationEffect(Angle(degrees: -90))

                        } // Asıl yatay menü alanını temsil edecek
                    }
                    .font(.largeTitle)
                    .padding(2)
                    .background(Capsule())
                    .offset(x: show ? -20 : -gr.size.width+70)
                    .animation(.timingCurve(0.5, -0.5, 0.5, 1.5,duration: 0.8))
                    Spacer()
                    
                }
                
                
                
                
            } // VStack End
            .font(.title).accentColor(.red)
            
            
        }// ZStack End
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
