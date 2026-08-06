//
//  DateBadge.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 06.08.26.
//
import SwiftUI
struct DateBadge: View {
    
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
        Text(titleText).font(.custom("PlusJakartaSans-Bold", size: 14))
            .foregroundStyle(.white)
    }
    
    var subTitle: some View {
        Text(subTitleText).font(.custom("PlusJakartaSans-SemiBold", size: 10))
            .foregroundStyle(.white)
    }
    

 
    var body: some View {
        ZStack (alignment : .topLeading){
            Color("GreenColor")
            Color.white.opacity(0.09)
            
            VStack (alignment: .leading,spacing: 12)  {
                icon
                VStack (alignment:.leading,spacing:4){
                    title
                    subTitle
                }
                
            }.padding(12)
            
           
        } .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 16))
           
            
        
        
        
    }
}

#Preview {
    DateBadge(
        titleText: "Mon,11 June 2024", subTitleText: "Appointments", iconName: .calendar
    )
}
