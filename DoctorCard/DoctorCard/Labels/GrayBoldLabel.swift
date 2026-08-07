//
//  GrayBoldLabel.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//
import SwiftUI
struct GrayBoldLabel: View {
    
    let text:String
    
    
        
   
    
 
    

 
    var body: some View {
        Text(text).font(.custom("PlusJakartaSans-SemiBold", size: 16))
            .foregroundStyle(.textGray)
           
        
           

        
    }
}

#Preview {
    GrayBoldLabel(text: "User Name")
}
