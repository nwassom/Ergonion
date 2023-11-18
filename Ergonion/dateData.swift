//
//  dateData.swift
//  Ergonion
//
//  Created by Nick Wassom on 11/16/23.
//

import Foundation

let stringMonths = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
let stringDOW = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

/*
    Object for date information
 */
class dateData
{
    
    private var DOW: Int
    private var month: Int
    private var day: Int
    private var year: Int
    
    private var DOWString: String
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
        DOW = Calendar.current.component(.weekday, from: Date())
        DOWString = stringDOW[DOW - 1]
        monthString = stringMonths[month - 1]
    }
    
    public func getDOW() -> Int
    {
        return DOW
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
    
    public func getDOWString() -> String
    {
        return DOWString
    }
    
    public func getMonthString() -> String
    {
        return monthString
    }
   
}
