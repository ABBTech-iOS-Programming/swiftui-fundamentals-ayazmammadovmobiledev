//
//  ContentView.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 06.08.26.
//

import SwiftUI

struct ContentView: View {
    
    
    

 
    var body: some View {
       
        VStack (spacing: 84) {
            HStack {
                UpCommingCard()
            }.padding(.horizontal, 16)
            
            HStack {
                AppointmentCard()
            }.padding(.horizontal, 32)
           
            Spacer()
       
        }.padding(.top, 39)
        
            
         
    }

}

#Preview {
    ContentView()
}
