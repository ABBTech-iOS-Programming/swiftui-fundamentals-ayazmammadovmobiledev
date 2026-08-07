//
//  AppointmentCard.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//
import SwiftUI

struct AppointmentCard : View {
    
    
    var hospitalName: some View {
        Text("Madeyn Hospital").font(.custom("PlusJakartaSans-Bold", size: 14))
            .foregroundStyle(.white)
    }
    
    var image:some View {
        Image(.doctor)
            .resizable()
            .scaledToFill()
            .frame(height: 180)
         
    }
    
    var iconHospital:some View {
        Image(.hospital)
            .resizable()
            .scaledToFill()
            .frame(width: 24,height: 24)
            .clipped()
    }
    

    
    
    
    
    
    var body: some View {
        VStack {
            ZStack (alignment: .topLeading){
                image
                AvaibleBadge().padding(.top, 16).padding(.leading, 8)
               
            }
           
            HStack {
                hospitalName
                Spacer()
                iconHospital
            }
            .padding(.vertical, 14)
            .padding(.horizontal, 20)
            .background(Color(.green))
            
            VStack (alignment: .leading) {
                HStack {
                    VStack (alignment: .leading) {
                        BlackBoldNameLabel(nameText: "Dr.Marci Maiden")
                        GrayBoldLabel(text: "Internist Specialist")
                    }
                    Spacer()
                    RatingBadge(priceText: "4.5")
                }
                
                PriceTextLabel(priceText: "240.000")
               
               
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
            
           
         
          
        }
       
    
        .background(
            Color.white
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
        
        
        
       
     
       
     
        
      
        
       
        
    }
}
