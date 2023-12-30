//
//  dateData.swift
//  Ergonion
//
//  Created by Nick Wassom on 11/16/23.
//

import Foundation

let stringMonths = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
let dayOfWeekArr = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

/*
    Object for date information
 */
class dateData
{
    
    private var dayOfWeek: Int
    private var month: Int
    private var day: Int
    private var year: Int
    
    private var dayOfWeekString: String
    private var monthString: String
    
    /*
        Basic object initializer
            - Gets the current date
     */
    init()
    {
        // Gets and loads in the current date
        month = Calendar.current.component(.month, from: Date())
        day = Calendar.current.component(.day, from: Date())
        year = Calendar.current.component(.year, from: Date())
        dayOfWeek = Calendar.current.component(.weekday, from: Date())
        dayOfWeekString = dayOfWeekArr[dayOfWeek - 1]
        monthString = stringMonths[month - 1]
    }
    
    public func getDayOfWeek() -> Int
    {
        return dayOfWeek
    }
    
    public func getMonth() -> Int
    {
        return month
    }
    
    public func getDay() -> Int
    {
        return day
    }
    
    public func getYear() -> Int
    {
        return year
    }
    
    public func getDayOfWeekString() -> String
    {
        return dayOfWeekString
    }
    
    public func getMonthString() -> String
    {
        return monthString
    }
    
    public func printDate()-> String
    {
        let dateString = "\(dayOfWeekString), \(monthString) \(day), \(year)"
        return dateString
    }
   
}
