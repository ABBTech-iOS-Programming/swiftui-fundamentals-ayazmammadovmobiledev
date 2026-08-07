//
//  ContentView.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 06.08.26.
//

import SwiftUI

struct DoctorScreenView: View {
    
    
    

 
    var body: some View {
        ScrollView {
            VStack (spacing: 84) {
                HStack {
                    UpCommingCard()
                }.padding(.horizontal, 16)
                
                HStack {
                    AppointmentCard()
                }.padding(.horizontal, 32)
                
                HStack {
                    DoctorProfileCard()
                }.padding(.horizontal, 16)
               
                Spacer()
           
            }.padding(.top, 39)
            
        }.background(.backgroundApp)
       
       
        
            
         
    }

}

#Preview {
    DoctorScreenView()
}
