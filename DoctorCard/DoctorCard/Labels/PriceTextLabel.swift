//
//  PriceTextLabel.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//
import SwiftUI
struct PriceTextLabel: View {
    
    let priceText:String

    
    
        
   
    
 
    

 
    var body: some View {
        Text("Rp \(priceText)").font(.custom("PlusJakartaSans-Bold", size: 18))
            .foregroundStyle(.red)
+
        Text("/hours").font(.custom("PlusJakartaSans-Bold", size: 16))
            .foregroundStyle(.textGray)
        
           
        
           

        
    }
}

#Preview {
    PriceTextLabel(priceText: "240.000")
}
