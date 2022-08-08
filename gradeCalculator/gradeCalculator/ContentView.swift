//
//  ContentView.swift
//  gradeCalculator
//
//  Created by Alya Mallik on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var finalGrade = ""
    @State var gradeDes = ""
    @State var pic1 = ""
    
    var body: some View {
        ZStack{
            Image("back")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 900)
        
        Image(systemName: "battery.75")
                .offset(x: 150, y: -400)
            
            Image(systemName: "wifi")
                .offset(x: 115, y: -400)
            
            Text("6:00")
                .offset(x: -135, y: -400)
                .font(.headline)
            
            VStack{
                            
            Text("حاسبة الدرجات")
                .font(.largeTitle)
                .offset(x: 0, y: -130)
                        
            Image("calc")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 105)
                .offset(x: 0, y: -100)
            
            TextField("Enter you grade here" , text: $finalGrade)
                .background(.white)
                .font(.title2)
                .frame(width: 350, height: 50)
                .textFieldStyle(.roundedBorder)
            
                
            Text("احسب درجتك")
                .frame(width: 120, height: 30)
                .background(.gray)
                .onTapGesture {
                    if (Double(finalGrade) ?? 0) >= 90 {
                        gradeDes = "امتياز"
                        pic1 = "m1"
                            }
                    else if (Double(finalGrade) ?? 0) >= 80 {
                        gradeDes = "جيد جدا"
                        pic1 = "m2"
                    }
                    else if (Double(finalGrade) ?? 0) >= 70 {
                        gradeDes = "جيد"
                        pic1 = "m3"
                    }
                    else if (Double(finalGrade) ?? 0) >= 60 {
                        gradeDes = "مقبول"
                        pic1 = "m4"
                    }
                    else if (Double(finalGrade) ?? 0) < 60 {
                        gradeDes = "راسب"
                        pic1 = "m5"
                    }
                                }
                
            
            Text("التقدير")
                .font(.title3)
            
            Text(gradeDes)
                .offset(x: 0, y: 100)
                .font(.largeTitle)
                
               Image(pic1)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .offset(x: 0, y: 150)
            }
            
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
