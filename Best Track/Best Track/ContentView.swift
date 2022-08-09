//
//  ContentView.swift
//  Best Track
//
//  Created by Alya Mallik on 09/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var pic = "?"
    @State var ios = "ios"

    var body: some View {
        VStack{
        Image("back")
                .resizable()
                .scaledToFill()
                .frame(width: 450, height: 844.0)
                .offset(x: 0, y: 245)
            
            Image(systemName: "wifi")
                .offset(x: 116, y: -590)
            
            Image(systemName: "battery.75")
                .offset(x: 150, y: -605)
            
            Image(systemName: "moon.fill")
                .offset(x: -110, y: -619)
            
            Text("3:00")
                .offset(x: -150, y: -638)
            
            Text("What's your favorite track ?")
                .font(.title)
                .offset(x: 0, y: -620)
            
            ZStack{
            VStack{
                
                Image(pic)
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: -590)
                    .frame(width: 150, height: 150)
                
                Text("IOS")
                    .frame(width: 280.0, height: 50)
                    .background(Color.indigo)
                    .offset(x: 0, y: -500)
                    .onTapGesture {
                        pic = "ios"
                    }
                    .onLongPressGesture {
                        pic = "?"
                    }
                
                Text("Android")
                    .frame(width: 280.0, height: 50)
                    .background(Color.red)
                    .offset(x: 0, y: -500)
                    .onTapGesture {
                        pic = "android"
                    }
                    .onLongPressGesture {
                        pic = "?"
                    }
                
                Text("Web Dev")
                    .frame(width: 280.0, height: 50)
                    .background(Color.mint)
                    .offset(x: 0, y: -500)
                    .onTapGesture {
                        pic = "web"
                    }
                    .onLongPressGesture {
                        pic = "?"
                    }
                
                Text("Game Dev")
                    .frame(width: 280.0, height: 50)
                    .background(Color.cyan)
                    .offset(x: 0, y: -500)
                    .onTapGesture {
                        pic = "game"
                        
                    }
                    .onLongPressGesture {
                        pic = "?"
                    }
                                    
            }
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
