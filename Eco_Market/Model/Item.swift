//
//  Item.swift
//  Eco_Market
//
//  Created by Akramjon on 22/04/23.
//

import SwiftUI

struct Item: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var rating: String
    var orders: String
    var installMent: String
    var price: String
    var image: String
    var sale: String
  
}

var items = [

    Item(title: "Eco product1", rating: "3.8", orders: "(14000 orders)", installMent: "8000 sum/mon", price: "36$", image: "chair_1", sale: ""),
    
    Item(title: "Eco product2", rating: "2.9", orders: "(13000 orders)", installMent: "5000 sum/mon", price: "45$", image: "chair_1", sale: ""),
    
    Item(title: "Eco product3", rating: "5.2", orders: "(15000 orders)", installMent: "10000 sum/mon", price: "55$", image: "chair_1", sale: ""),
    
    Item(title: "Eco product4", rating: "7.3", orders: "(15500 orders)", installMent: "15000 sum/mon", price: "65$", image: "chair_1", sale: "")
    ]
