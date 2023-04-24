//
//  CardView.swift
//  Eco_Market
//
//  Created by Akramjon on 22/04/23.
//

import SwiftUI

struct CardView: View {
    var item: Item
    var animation: Namespace.ID
    
    var body: some View {
        VStack(spacing: 8) {
              
                    Image(item.image)
                        
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .frame(width: 180,height: 250)
//                        .padding()
            
            Text(item.title)
                .font(.title2)
                .bold()
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
            
            HStack(spacing: 5){
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 13))
                Text(item.rating)
                    .font(.system(size: 13))
                Text(item.orders)
                    .font(.system(size: 13))
            }
            Text(item.installMent)
                .padding()
                .frame(width: 160,height: 40)
                .background(Color.green)
                .cornerRadius(10)
            HStack{
                Text(item.price)
                    .bold()
                Spacer()
                HStack(spacing: 10) {
                    Button(action:{}){
                        Image(systemName: "heart")
                            .foregroundColor(.black)
                            .font(.system(size: 20 , weight: .semibold))
                        
                    }
                    Button(action:{}){
                        Image(systemName: "bag.badge.plus")
                            .foregroundColor(.black)
                            .font(.system(size: 20 , weight: .semibold))
                    }
                }
            }
        }
        .frame(width: 150)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(20)
    }
}

//HStack{
//    Spacer(minLength: 0)
//    Button(action:{}){
//        Image(systemName: "heart")
//            .font(.title2)
//            .foregroundColor(.black)
//            .padding(.vertical,5)
//            .padding(.horizontal,10)
//            .background(Color.white.opacity(0.5))
//            .cornerRadius(10)
//
//    }
//
//}
//Image(item.image)
//    .resizable()
//    .aspectRatio(contentMode: .fit)
//    .cornerRadius(10)
//    .padding()
//Text(item.title)
//    .font(.caption)
//    .foregroundColor(.black)
//
//Text(item.subTitle)
//    .font(.caption)
//    .foregroundColor(.gray)
//
//HStack{
//
//    Text(item.price)
//        .fontWeight(.heavy)
//        .foregroundColor(.black)
//
//    Spacer(minLength: 0)
//
//    Text(item.rating)
//        .fontWeight(.heavy)
//        .foregroundColor(.black)
//
//}
//
//}
//.padding(.bottom)
//.background(Color(item.image))
//.cornerRadius(15)
