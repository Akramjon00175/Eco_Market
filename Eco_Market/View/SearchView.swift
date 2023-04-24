//
//  SearchView.swift
//  Eco_Market
//
//  Created by Akramjon on 23/04/23.
//

import SwiftUI

struct SearchView: View {
    @State var selectedTab = "house"
    
    var body: some View {
        ZStack(alignment: .bottom){
            ScrollView {
                VStack{
                    SearchAndScan()
                    Spacer()
                    
                }
            }
            CustomTabBar(selectedTab: $selectedTab)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


struct SearchAndScan: View {
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
