//
//  entry.swift
//  Ergonion
//
//  Created by Nick Wassom on 11/17/23.
//

import Foundation
import SwiftUI



class entry
{
    public var date: dateData
    @State private var isEntry: Bool
    private var events: [eventData]?
    
    
    init()
    {
        date =  dateData()
        isEntry = false
    }
    
    func isMade() -> Bool
    {
        return self.isEntry
    }
    
    func newEntry(methodOfEntry: Int) -> some View
    {
        switch methodOfEntry
        {
            case 1:
                print("Chose Text")
                return newTextEntry()
            case 2:
                print("Chose Voice")
                return newTextEntry()
            case 3:
                print("Chose Photo")
                return newTextEntry()
            default:
                return newTextEntry()
        }
    }
    
    func newTextEntry() -> some View
    {
        @State var newEvent: eventData
        @State var name: String = ""
        @State var hour: Int
        @State var minute: Int
        @State var meridian: Bool
        @State var time = Date()
        
        var newEntry: some View
        {
            VStack{
                HStack
                {
                    Text("Entry for \(date.printDate())")
                        .font(.custom("sf pro", size: 20))
                        .foregroundStyle(.white)
                        .padding([.top, .leading, .trailing])
                        .padding(.leading, 0)
                    Spacer()
                }
                
                HStack
                {
                    TextField("Enter an item", text: $name)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    DatePicker("Start Time", selection: $time, displayedComponents: .hourAndMinute)
                        .datePickerStyle(CompactDatePickerStyle())
                        .labelsHidden()
                        .padding()
                }
            }
        }
        
        self.isEntry = true
        return newEntry
    }
}
