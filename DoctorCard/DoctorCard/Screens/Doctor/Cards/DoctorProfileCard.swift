//
//  DoctorProfileCard.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//

import SwiftUI

struct DoctorProfileCard : View {
    
    
    var hospitalName: some View {
        Text("Madeyn Hospital").font(.custom("PlusJakartaSans-Bold", size: 14))
            .foregroundStyle(Color("GreenColor"))
    }
    
    var image:some View {
        Image(.doctor2)
            .resizable()
            .background(Color.photoBackground)
            .scaledToFill()
            .frame(height: 120)
            .frame(width: 90)
            .clipShape(UnevenRoundedRectangle(
                topLeadingRadius: 6,
                bottomLeadingRadius: 24,
                bottomTrailingRadius: 4,
                topTrailingRadius: 24
            ))
            .clipped()
            
         
    }
    var generalInfoSection : some View {
        HStack {
            ZStack (alignment: .topLeading){
                image
                AvaibleBadge(isDesciptionVisible: false).padding(.top, 8)
               
            }.frame(width: 90)
        
            VStack (alignment: .leading,spacing:8) {
                hospitalName
                BlackBoldNameLabel(nameText: "Dr.Marci Maiden")
                GrayBoldLabel(text: "Internist Specialist")
            }.padding(.horizontal, 20)
            Spacer()
        }
    }
    
    var skillSection : some View {
        HStack (spacing: 16){
            SkillsBadge(
                titleText: "Verified", subTitleText: "Sertified", iconName: .greenVerified
            ).fixedSize()
            Divider()
            SkillsBadge(
                titleText: "5 Years", subTitleText: "Experience", iconName: .greenBag
            ).fixedSize()
            Divider()
            SkillsBadge(
                titleText: "4.5", subTitleText: "Rating", iconName: .greenStar
            ).fixedSize()
        }
        .padding(.vertical, 16)
        .padding(.horizontal,16)
        .frame(height:74)
        .overlay(RoundedRectangle(cornerRadius: 24)
            .stroke(Color.gray,lineWidth: 1))
    }
    
    var bookPriceSection: some View {
        HStack {
            PriceTextLabel(priceText: "240.000")
            Spacer()
            GreenButton(text: "Book Now") {
                print("clickked")
            }.frame(minHeight: 52)
        }
    }
    

    
    
    
    
    
    var body: some View {
        
        
        VStack (spacing:20) {
            
            generalInfoSection
            skillSection
            bookPriceSection
            
         
          
        }
       
    
        
     
        .padding(.horizontal,20)
        .padding(.vertical, 20)
        .background(
            Color.white
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
        
        
        
       
     
       
     
        
      
        
       
        
    }
}
#Preview {
    DoctorProfileCard()
}
