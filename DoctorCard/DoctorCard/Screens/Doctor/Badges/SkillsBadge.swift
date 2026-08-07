//
//  SkillsBadge.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//


import SwiftUI

struct SkillsBadge: View {
    
    let titleText:String
    let subTitleText:String
    let iconName : ImageResource
    
    var icon:some View {
        Image(iconName)
            .resizable()
            .scaledToFill()
            .frame(width: 24,height: 24)
    }
    
    
    
    var title: some View {
        Text(titleText).font(.custom("PlusJakartaSans-Bold", size: 16))
            .foregroundStyle(.black)
    }
    
    var subTitle: some View {
        Text(subTitleText).font(.custom("PlusJakartaSans-Medium", size: 14))
            .foregroundStyle(.textGray)
    }
    
    
    
    var body: some View {
        VStack (alignment: .center) {
            HStack {
                icon
                title
            }
            subTitle
            
            
            
            
            
            
        }
    }
}
#Preview {
    SkillsBadge(
        titleText: "Verified", subTitleText: "Sertified", iconName: .calendar
    )
}
