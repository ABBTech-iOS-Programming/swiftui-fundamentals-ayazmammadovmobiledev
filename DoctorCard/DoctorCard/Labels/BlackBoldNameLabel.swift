//
//  BlackBoldNameLabel.swift
//  DoctorCard
//
//  Created by Ayaz Memmedov on 07.08.26.
//

import SwiftUI

struct BlackBoldNameLabel: View {
    
    let nameText:String
    
    
        
   
    
 
    

 
    var body: some View {
        Text(nameText).font(.custom("PlusJakartaSans-Bold", size: 14))
            .foregroundStyle(.black)
           
        
           

        
    }
}

#Preview {
    BlackBoldNameLabel(nameText: "User Name")
}
