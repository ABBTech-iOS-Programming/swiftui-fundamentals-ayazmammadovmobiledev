//
//  BlueButton.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//
import SwiftUI
struct GreenButton: View {
    
    let text:String
    
    let action : ()-> Void
    
    
        
   
    
 
    

 
    var body: some View {
        Button(text) {
            action()
        }
        .foregroundStyle(Color("GreenColor"))
        .font(.custom("PlusJakartaSans-Bold", size: 16))
        .padding(.horizontal, 16)
        .padding(.vertical,16)
        .overlay(
            RoundedRectangle(cornerRadius: 100)
            .stroke (Color("GreenColor"),lineWidth: 1)
        )
        
           
        
           

        
    }
}

#Preview {
    GreenButton(text: "Book Now"){
        
    }
}
