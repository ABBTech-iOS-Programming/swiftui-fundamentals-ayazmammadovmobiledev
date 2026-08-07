//
//  AvaibleBadge.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//
import SwiftUI

struct AvaibleBadge: View {
    
    var isDesciptionVisible:Bool = true
    
    var title: some View {
        Text("Available").font(.custom("PlusJakartaSans-Bold", size: 14))
            .foregroundStyle(.boldGreen)
            
    }
 
    var body: some View {
        HStack (spacing: 12)  {
            Circle()
                .fill(.boldGreen)
                .frame(height: 10)
            if(isDesciptionVisible){
                title
            }
        
        }
            .padding(.vertical, 4)
            .padding(.horizontal, 8)
            .background(.boldGreen.opacity(0.09))
            .clipShape(RoundedRectangle(cornerRadius: 12))
           
        
        
        
    }
}

#Preview {
    AvaibleBadge(isDesciptionVisible: true)
}
