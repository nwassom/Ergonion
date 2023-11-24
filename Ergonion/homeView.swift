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


struct homeView: View 
{
    
    @State var flag: Int = 1
    var body: some View
    {
        ZStack
        {
            Color(red: 76/255, green: 86/255, blue: 106/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack
            {
               
                if (flag > 0)
                {
                   
                }
                else
                {
                    
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
    
    struct homeView_Previews: PreviewProvider 
    {
        static var previews: some View
        {
            homeView()
        }
    }
    
}
