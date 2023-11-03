//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Edna Sung on 2023-10-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            
            VStack {
                
                Spacer()
                
                Text("00:09.96")
                    .foregroundColor(.white)
                    .font(.system(size: 90, weight: .thin))
                
                HStack {
                    
                    CircleButtonView(buttonColour: Color("Dark Grey"),
                                     label: "Reset",
                                     labelColour: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColour: Color("Dark Green"),
                                     label: "Start",
                                     labelColour: .green)
                }
                
                List{
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                    Text("5")
                }
                .frame(height: 300)

            }
            .padding()
        }
    }
}

#Preview {
    TabView {
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
        }
        .accentColor(.orange)
        .preferredColorScheme(.dark)
    }
