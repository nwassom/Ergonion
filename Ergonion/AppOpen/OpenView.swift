//
//  homeView.swift
//  Ergonion
//
//  Created by Nick Wassom on 11/19/23.
//

import SwiftUI


/*
    First View when opening app, checks if
    an entry has been made for the day opens different viewing depending on that
 */


struct OpenView: View 
{
    // Creates new entry object
    @State var todaysEntry = entry()
    
    var body: some View
    {
        ZStack
        {
            Color(red: 76/255, green: 86/255, blue: 106/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack
            {
                if (todaysEntry.isMade())
                {
                    Text(todaysEntry.date.printDate())
                        .font(.custom("sf pro", size: 32))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                    // todaysEntry.displayEntry()
                    isEntry()
                }
                else
                {
                    todaysEntry.newEntry(methodOfEntry:1)
                        .onAppear()
                        {
                        
                        }
                }
            }

        }

    }
    
    func isEntry() -> some View
    {
        return VStack
        {
            Text("There is already an entry today")
                .font(.custom("sf pro", size: 32))
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
        }
    }
    
    struct OpenView_Previews: PreviewProvider 
    {
        static var previews: some View
        {
            OpenView()
        }
    }
    
}
