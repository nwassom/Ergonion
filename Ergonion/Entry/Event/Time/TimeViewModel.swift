//
//  TimeViewModel.swift
//  Ergonion
//
//  Created by Nick Wassom on 12/29/23.
//

import Foundation

class TimeViewModel: ObservableObject 
{
    @Published var time: TimeModel
    
    init(hour: Int, minute: Int?, meridiem: Bool)
    {
        if (minute == nil)
        {
            self.time.minute = 0
        }
        else
        {
            if (minute! < 0 || minute! >= 60)
            {
                print("Error Minute is an incorrect value")
                exit(2)
            }
            time.minute = minute!
        }
        
        if (hour <= 0 || hour > 12)
        {
            print("Error Hour is an incorrect value")
            exit(1)
        }
        time.hour = hour
        time.meridiem = meridiem
    }
}
