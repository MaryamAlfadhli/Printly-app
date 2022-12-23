//
//  Cards.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

import SwiftUI

struct Cards: View {

    var Row : row
    @State var show  = false
    
    
    var body : some View{
        
        VStack(spacing: 8){
            
            
            NavigationLink(destination: DetailView(show: $show), isActive: $show) {
                VStack{
                Image(Row.image)
                    .renderingMode(.original).resizable().frame(width: UIScreen.main.bounds.width / 2 - 25, height: 240)
                   
                    .cornerRadius(20)
                  
                Text(Row.name)
                .bold()
          
                    
                    HStack(alignment:.top, spacing: 10){
                        
                        
                        Text("\(Row.price.description)ريال").fontWeight(.heavy)
                        Text(Row.PackNo)
                        
                    } .padding()
                    
                      
                    
         
                
            }  .frame(width: 180, alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                
            }.foregroundColor(.black)

            
            
            
          
        }
    }
}


