//
//  entry.swift
//  Ergonion
//
//  Created by Nick Wassom on 11/17/23.
//

import Foundation

class entry
{
    public var date: dateData
    public var events: eventData
    
    init(methodOfEntry: Int)
    {
         date =  dateData()
         events = eventData()
        
        switch methodOfEntry
        {
            case 1:
                print("Chose Text")
               // loadScheduleText()
            case 2:
                print("Chose Voice")
               // loadScheduleVoice()
            case 3:
                print("Chose Photo")
              //  loadSchedulePhoto()
            default:
                print("methodOfEntry is an invalid value within jEntry")
        }
    }
}
