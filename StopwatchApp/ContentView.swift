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
                    
                    Group{
                        HStack {
                            Text("Lap 5")
                            
                            Spacer()
                            
                            Text("00:00.98")
                        }
                        
                        HStack {
                            Text("Lap 4")
                                .foregroundColor(.red)
                            
                            Spacer()
                            
                            Text("00:04.08")
                                .foregroundColor(.red)
                        }
                        HStack {
                            Text("Lap 3")
                                .foregroundColor(.green)
                            Spacer()
                            
                            Text("00:00.96")
                                .foregroundColor(.green)
                        }
                        HStack {
                            Text("Lap 2")
                            
                            Spacer()
                            
                            Text("00:02.76")
                        }
                        HStack {
                            Text("Lap 1")
                            
                            Spacer()
                            
                            Text("00:01.16")
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

                }
                .frame(height: 300)
                .listStyle(.plain)

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
