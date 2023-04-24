//
//  Home.swift
//  Eco_Market
//
//  Created by Akramjon on 20/04/23.
//

import SwiftUI

struct Home: View {
    
    @State var selectedTab = "house"
    @Namespace var animation
    @State private var selectedIndex: Int = 0
    
   private let categories = ["Hayitlik","Mashhur","Yangi"]
    var body: some View {
        
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack {
                    
                    SearchAndScanView()
                    
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                Advertisements(image: Image("chair_1"), size: 250)
                            }
                            .padding(.trailing,5)
                        }
                        .padding(.leading)
                        
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(){
                            
                            ForEach(0 ..< categories.count) { i in
                                CategoryView(isActive: i == selectedIndex, text: categories[i])
                                
                                    .onTapGesture {
                                        selectedIndex = i
                                    }
                            }
                            .padding(.trailing,20)
                        }
                        .padding(.leading)
                    }
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 25),count: 2),spacing: 25){
                        ForEach(items){ item in
                            
                            CardView(item: item, animation: animation)
                            
                            
                        }
                        
                    }
                    .padding()
                    Spacer()
                   
                }
            }
            
            CustomTabBar(selectedTab: $selectedTab)
            
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}




struct SearchAndScanView: View {
    @State private var search = ""
    var body: some View {
        HStack {
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.trailing,8)
                
                TextField("Search eco product", text: $search)
            }
            .padding(.all,20)
            .frame(height: 50)
            .background(Color.gray.opacity(0.5))
            .cornerRadius(25)
            
            Button(action:{}){
                Image("scan")
                    .padding(.all,20)
                    .frame(height: 50)
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(25)
            }
        }
        .padding(.horizontal)
        .padding(.bottom,5)
    }
}

struct Advertisements: View {
    
    let image: Image
    let size: CGFloat
    
    var body: some View {
        HStack{
           image
                .resizable()
                .frame(width: size,height: 200)
                .cornerRadius(20)
        }
        .padding(.bottom,5)
    }
}

struct CategoryView: View {
    
   let isActive: Bool
   let text: String
    
    var body: some View {
        VStack(alignment: .center,spacing: 0){
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("Color") : Color("Color1"))
                .padding()
            if(isActive){
                RoundedRectangle(cornerRadius: 20)
                
                    .frame(width: 30,height: 4)
                    .offset(y: -10)
                    .foregroundColor(isActive ? Color("Color") : Color("Color1") )
            }
        }
        .padding(.leading)
        .padding(.bottom,5)
    }
}
