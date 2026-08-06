//
//  ProfileBadge.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 06.08.26.
//
import SwiftUI

struct ProfileBadge: View {
    
    let titleText:String
    let subTitleText:String
    let iconName : ImageResource
    
    var icon:some View {
        Image(.message)
            .resizable()
            .scaledToFill()
            .frame(width: 24,height: 24)
    }
    
    var image:some View {
        Image(.person)
            .resizable()
            .scaledToFill()
            .clipShape(.circle)
            .frame(width: 42,height: 42)
    }
    
    var title: some View {
        Text(titleText).font(.custom("PlusJakartaSans-Bold", size: 14))
            .foregroundStyle(.black)
    }
    
    var subTitle: some View {
        Text(subTitleText).font(.custom("PlusJakartaSans-Medium", size: 10))
            .foregroundStyle(.textGray)
    }
    

 
    var body: some View {
        HStack  {
            
            image
            
            VStack (spacing: 4) {
                title
                subTitle
            }
            Spacer()
        
          
            icon
           
        }
           
        
            .padding(.horizontal , 12)
            .padding(.vertical , 14)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))

        
    }
}

#Preview {
    ProfileBadge(
        titleText: "Mon,11 June 2024", subTitleText: "Appointments", iconName: .calendar
    )
}
