//
//  eventData.swift
//  Ergonion
//
//  Created by Nick Wassom on 11/17/23.
//

import Foundation

class eventData
{
    fileprivate var startTime:time?
    fileprivate var endTime: time?
    var eventName: String?
    
    init()
    {
        
    }
    
    func nameChange(newName:String)
    {
        self.eventName = newName
    }
    
//    func startChange(newStart: Int)
//    {
//        startTime
//    }
    
}

/*
    Used to define and deal with specific times of an event
 */
fileprivate class time
{
    let AM = 0, PM = 1
    var meridiem: Bool
    var hour: Int
    var minute: Int
    
    // Init to handle all values that could go into the time
    init(hour: Int, minute: Int?, meridiem: Bool)
    {
        if (minute == nil)
        {
            self.minute = 0
        }
        else
        {
            if (minute! < 0 || minute! >= 60)
            {
                print("Error Minute is an incorrect value")
                exit(2)
            }
            self.minute = minute!
        }
        
        if (hour <= 0 || hour > 12)
        {
            print("Error Hour is an incorrect value")
            exit(1)
        }
        self.hour = hour
        self.meridiem = meridiem
    }
    
    func getMeridiem()
    {
        // Recieve input from user then decide if AM or PM then call setMeridiem with either 0 or 1
    }
    
    // Gonna need separate function or change function to recieve input from user but this works for now
    private func setMeridiem(meridiem:Bool)
    {
        self.meridiem = meridiem
    }
    
    /*
        Returns a tuple of hour, minute, and meridiem
     */
    func getTime() -> (hour: Int, minute: Int, meridiem: Bool)
    {
            return (self.hour, self.minute, self.meridiem)
    }
    
//    /*
//        Function that compares this instance of time and another instance of time, returns which comes first
//     */
//    func compareTime(diffTime: time) -> (comeFirst: time, comeSecond: time)
//    {
//        var diffTimeInfo = diffTime.getTime()
//        
//    }
}
