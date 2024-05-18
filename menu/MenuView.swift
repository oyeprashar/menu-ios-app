//
//  ContentView.swift
//  menu
//
//  Created by Shubham Prashar on 18/05/24.
//

import SwiftUI

struct MenuView: View {
    
    var menuItems : [MenuItem] =
        [
            MenuItem(name: "Avocado Maki", price: "₹340", imageName: "avocado-maki"),
            MenuItem(name: "California Roll", price: "₹320", imageName: "california-roll"),
            MenuItem(name: "Hamachi Sushi", price: "₹220", imageName: "hamachi-sushi"),
            MenuItem(name: "Ikura Sushi", price: "₹550", imageName: "ikura-sushi"),
            MenuItem(name: "Kani Sushi", price: "₹120", imageName: "kani-sushi"),
            MenuItem(name: "Meguro Sushi", price: "₹75", imageName: "meguro-sushi"),
            MenuItem(name: "Onigiri", price: "₹150", imageName: "onigiri"),
            MenuItem(name: "Salmon Sushi", price: "₹310", imageName: "salmon-sushi"),
            MenuItem(name: "Shrimp Sushi", price: "₹225", imageName: "shrimp-sushi"),
            MenuItem(name: "Tako Sushi", price: "₹195", imageName: "tako-sushi"),
            MenuItem(name: "Tamago Sushi", price: "₹299", imageName: "tamago-sushi"),
            MenuItem(name: "Tobiko Spicy Maki", price: "₹99", imageName: "tobiko-spicy-maki")
        ]
    
    

    
    var body: some View {
        VStack {
        
            List (menuItems)  { item in
                
                HStack{
                    
                    Image(item.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                        .cornerRadius(10)
                    
                    Text(item.name).bold()
                    Spacer()
                    Text(item.price)
                    
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color(.brown).opacity(0.1))
            }
        }
    }
}

#Preview {
    MenuView()
}
