//
//  ContentView.swift
//  MathEquationApp
//
//  Created by Boccio, Anna on 12/30/19.
//  Copyright © 2019 TB Associates. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var equation: String = "y = ax2 + bx + c"
    @State var xintercept1: Float = 0.0
    @State var xintercept2: Float = 0.0
    @State var yintercept: Float = 0.0
    @State var slope: Float = 0.0
    @State var aValue = arc4random_uniform(9) + 1
    @State var bValue = arc4random_uniform(9) + 1
    @State var cValue = arc4random_uniform(9) + 1
    @State var elements:(equ: String, a: UInt32, b: UInt32, c:UInt32 ) = ("y = ax2 + bx + c", 1,1,1)
    
    func equationGenerator() -> (equ: String, a: UInt32, b: UInt32, c:UInt32  ) {
        // generate new equation here
        
        let aValue = arc4random_uniform(9) + 1
        let bValue = arc4random_uniform(9) + 1
        let cValue = arc4random_uniform(9) + 1
        let newEquation = "y = " + String(aValue) + "x2 + " + String(bValue) + "x + " + String(cValue)
        let elements:(equ: String, a: UInt32, b: UInt32, c:UInt32 )  = (newEquation, aValue, bValue, cValue)
        //return (newEquation, aValue, bValue, cValue)
        return elements
    }
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Random quadratic equation generator")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .background(Color.blue)
            
            Button (action: {
                //self.aValue = arc4random_uniform(9) + 1
                //self.bValue = arc4random_uniform(9) + 1
                //self.cValue = arc4random_uniform(9) + 1
                //self.equation = "y = " + String(self.aValue)
                //    + "x2 + " + String(self.bValue)
                //    + "x + " + String(self.cValue)
                self.elements = self.equationGenerator()
            }) {
                Text("Generate New Equation")
                    .font(Font.system(.headline, design: .rounded))
                    .foregroundColor(.primary)
                    .padding([.leading, .trailing], 10)
                    .padding([.top, .bottom], 5)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            //Text("\(self.equation) a: \(self.aValue) b: \(self.bValue) c: \(self.cValue)" )
            //Text("\(self.equation)" )
            Text("\(self.elements.equ) a: \(self.elements.a) b: \(self.elements.b) c: \(self.elements.c)")
            
            HStack {
                Button(action: { print("Calculate X intercepts")  } ) {
                    VStack {
                        Text("Calculate X intercepts")
                            .font(Font.system(.headline, design: .rounded))
                            .foregroundColor(.primary)
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    }
                }
                Text("print x intercepts for a: \(self.elements.a) b: \(self.elements.b) c:\(self.elements.c)")
                //Text("print x intercepts here")
            }
            
            
            HStack {
                Button(action: { print("Calculate Y intercept")  } ) {
                    VStack {
                        Text("Calculate Y intercept")
                            .font(Font.system(.headline, design: .rounded))
                            .foregroundColor(.primary)
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                    }
                }
                Text("print y intercept here")
            }
            
            
            HStack {
                Button(action: { print("Calculate slope")  } ) {
                    VStack {
                        Text("Calculate slope")
                            .font(Font.system(.headline, design: .rounded))
                            .foregroundColor(.primary)
                            .padding([.leading, .trailing], 10)
                            .padding([.top, .bottom], 5)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    }
                }
                Text("print slope here")
            }
            Spacer()
        }
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
