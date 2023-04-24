//
//  CustomTabBar.swift
//  Eco_Market
//
//  Created by Akramjon on 20/04/23.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectedTab: String
    
    
    var body: some View {
  
        HStack(spacing: 0) {
            
            TabBarButton(image: "leaf.circle", text: "Home", selectedTab: $selectedTab)
            TabBarButton(image: "text.magnifyingglass", text: "Search", selectedTab: $selectedTab)
            TabBarButton(image: "cart", text: "Cart", selectedTab: $selectedTab)
            TabBarButton(image: "heart", text: "Like", selectedTab: $selectedTab)
            TabBarButton(image: "person", text: "Cabinet", selectedTab: $selectedTab)
            
            
        }
        
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .padding(.horizontal)
        
    }
    
 
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


struct TabBarButton: View {
    
    var image: String
    var text: String
    
    @Binding var selectedTab: String
   
    var body: some View {
        
        GeometryReader{ reader  in
            
            
                Button(action: {
                    withAnimation{
                        selectedTab = image
                    
                    }
                },label: {
                    
                    VStack {
                        HStack {
                            Image(systemName: image)
                                .font(.system(size: 25 , weight: .semibold))
                                .foregroundColor(selectedTab == image ? .green : .black.opacity(0.8))
                                .offset(y: selectedTab == image ? -10 : 0)
                        }
                        HStack{
                            Text(text)
                                .font(.system(size: 13 , weight: .bold))
                                .foregroundColor(selectedTab == image ? .green : Color.black)
                                .offset(y: selectedTab == image ? -10 : 0)
                        }
                        
                    }
                })
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            
            
          
            
        }
        .frame(height: 50)
    }
}
