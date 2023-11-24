////
////  ContentView.swift
////  Ergonion
////
////  Created by Nick Wassom on 11/6/23.
////
//
//import SwiftUI
//
//
//
//struct ContentView: View {
//    
//    
//    @State private var userInput = ""
//    @State private var fibRes = "Res will be here"
//    @State private var isCalc = false
//    var body: some View {
//        VStack {
//            Text("Enter a number:")
//            TextField("Enter a number", text: $userInput)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//            
//            Button(action: {
//                if let number = Int(userInput){
//                    fibRes = fibDP(number)
//                    isCalc = true
//                }
//                else
//                {
//                    fibRes = "Invalid input"
//                }
//            }){
//                Text("Calculate Fib")
//            }
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            if isCalc == true{
//                Text("fibonacci of " + userInput + " is: " + fibRes)
//            }
//            
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//           
//    }
//}
//
//
///*
// Function that calculates fibonacci and returns it as a string
// */
//func fibDP(_ n: Int) -> String {
//    
//    if n <= 0 {
//        return "0"
//    }
//    
//    else if n == 1 {
//        return "1"
//    }
//    
//    var fib = [Int](repeating: 0, count: n + 1)
//    
//    fib[1] = 1
//    
//    for i in 2...n {
//        fib[i] = fib[i - 1] + fib[i - 2]
//    }
//    
//    let res = String(fib[n])
//    return res
//}
