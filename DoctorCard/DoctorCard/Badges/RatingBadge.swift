//
//  RatingBadge.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//

import SwiftUI

struct RatingBadge: View {
    
    let priceText:String
   
    
    var icon:some View {
        Image(.rating)
            .resizable()
            .scaledToFill()
            .frame(width: 24,height: 24)
    }
    
  
    
    var price: some View {
        Text(priceText).font(.custom("PlusJakartaSans-Bold", size: 16))
            .foregroundStyle(.orange)
    }
    
   
    

 
    var body: some View {
        HStack  {
            icon
            price
        }
            .padding(.horizontal , 12)
            .padding(.vertical , 14)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))

        
    }
}

#Preview {
    RatingBadge(
        priceText: "4.5"
    )
}
