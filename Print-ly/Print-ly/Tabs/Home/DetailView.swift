//
//  DetailView.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

import SwiftUI

struct DetailView: View {

  //  @StateObject var cartManager = CartManager()
    @Binding var show : Bool
    
    @State var size = ""
    
    var body : some View{
        NavigationView{
        ScrollView(.vertical, showsIndicators: false) {
        
            VStack(spacing: 15){
                
        
                        //add the image and fill the screen
                //replace with cup 3d here
           
                        Image("cup1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            
                   
                       
                 
                    
                  VStack(alignment: .trailing){
                    Text("كوب ورق")
                          .font(.headline)
                        
                      Text("ابتداء من 250 ريال ").fontWeight(.heavy)
                   

                Text("كوب ورقي ذو جودة عالية، يمكنك وضع هويتك التجارية الخاصة وتحديد مقاسات مختلفة")
                          .multilineTextAlignment(.trailing)

                Text("اختر الحجم (بالأونصة)")
                    .font(.headline)
                
                HStack{

                    ForEach(sizes,id: \.self){i in

                        Button(action: {

                            self.size = i

                        }) {

                            Text(i).padding().border(Color.black, width: self.size == i ? 1.5 : 0)

                        }.foregroundColor(.black)
                    }
                }
                }.padding()
//
                HStack{

                    Button(action: {


                    }) {

                        Text("اضف الى السلة").padding().border(Color.black, width: 1.4)

                    }.foregroundColor(.black)


                    Spacer()
                    Button(action: {

                    }) {

                        Text("شراء").padding()

                    }.foregroundColor(.white)
                        .background(Color("DarkBlue"))
                        .cornerRadius(10)

                } .padding()





            }
        }
    }
        .navigationTitle(Text("التفاصيل"))
        .navigationBarTitleDisplayMode(.inline)
    }
    }


