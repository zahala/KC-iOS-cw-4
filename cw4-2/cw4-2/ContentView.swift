//
//  ContentView.swift
//  cw4-2
//
//  Created by Zahraa Jassem on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var finalGrade = ""
    @State var gradedes = ""
    var body: some View {
        ZStack{
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
            
            
            VStack{
                
                Text("حاسبه الدرجات")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    
                Spacer()
                Image("zahraa2")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                TextField("Enter your grade",
                          text:
                            $finalGrade)
                .background(.white)
                .textFieldStyle(.roundedBorder)
                Text("احسب درجتي")
                    .frame(width: 150, height: 40)
                    .background(.yellow)
                    .onTapGesture {
                        if (Double(finalGrade) ??
                            0) >= 90 {
                            gradedes = "امتياز"
                        }
                        else{
                            gradedes = "رسوب"
                            
                        }
                    }
                
                Text("لقد حسلت علي درجه ")
                
                Spacer()
                Text(gradedes)
                    .font(.largeTitle)
                
            }.padding()
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
