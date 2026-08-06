//
//  UpCommingCard.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 06.08.26.
//
import SwiftUI

struct UpCommingCard : View {
    
    
    
    var header: some View {
        HStack {
            Text("Upcomming Appointments")
                .font(.custom("PlusJakartaSans-Bold", size: 16))
                .foregroundStyle(.white)
            
            Spacer()
            
            Button {
                
            }label: {
                Image(systemName: "chevron.right")
            }
            .foregroundStyle(.white)
               
        }
    }
    var dateSection: some View {
        HStack (spacing: 16) {
            DateBadge(
                titleText: "Mon,11 June 2024",
                subTitleText: "Appointments Date",
                iconName: .calendar
            )
            DateBadge(
                titleText: "08:00 - 12:00",
                subTitleText: "Appointments Time",
                iconName: .clock
            )
           
        }.frame(maxWidth: .infinity)
            .frame(height: 95)
    }
    
    
    
    var body: some View {
        VStack (spacing: 16){
         
            header
            dateSection
            
            ProfileBadge(
                titleText: "Dr.Strange Walker",
                subTitleText: "Internist Specialist Doctor",
                iconName: .clock
            )
         
          
        }
        .padding(.horizontal, 16)
        .padding(.vertical , 16)
        .background(
            Image("UpCommingBackground")
                .resizable()
                .scaledToFit()
        )
       
     
       
     
        
      
        
       
        
    }
}
#Preview {
    UpCommingCard()
}
