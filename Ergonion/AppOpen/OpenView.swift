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
    
    @State var flag: Bool = false
    var body: some View
    {
        ZStack
        {
            Color(red: 76/255, green: 86/255, blue: 106/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack
            {
               
                if (flag)
                {
                   displayEntry()
                }
                else
                {
                    noEntry()
                }
            }

        }

    }
    
    func noEntry() -> some View
    {
        return VStack
        {
            Text("Make A New\nEntry For The Day")
                .font(.custom("sf pro", size: 32))
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
        }
    }
    
    func displayEntry() -> some View
    {
        return VStack
        {
            Text("Entry for \n\(Date())")
                .font(.custom("sf pro", size: 32))
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .padding(.leading)
                .padding(.trailing)
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
