//
//  ContentView.swift
//  SwiftPizza
//
//  Created by Кирилл Курочкин on 27.02.2024.
//

import SwiftUI
import MapKit
struct ContentView: View {
    
    @State private var isMapVisible = false
    
    
    var body: some View {
        @State  var region: MKCoordinateRegion =
        MKCoordinateRegion(center:
                            CLLocationCoordinate2D(latitude: 40.75773, longitude: -73.985708),
                           span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        VStack (alignment: .leading){
            Text("Welcome to")
                .font(.system(size: 50)).fontWeight(.heavy)
                .foregroundColor(.primary)
            Text("Swift Pizza")
                .font(.system(size: 50)).fontWeight(.heavy)
                .foregroundColor(Color(UIColor.systemBlue).opacity(0.8))
        }
        Spacer()
        VStack (alignment: .leading, spacing: 24) {
            HStack (alignment: .top, spacing: 20) {
                Image(systemName: "bag").resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color(UIColor.systemBlue).opacity(0.8))
                VStack (alignment: .leading, spacing: 4) {
                    Text("Order Everything").font(.headline).bold()
                    Text("Our whole menu is available in the app.")
                        .font(.subheadline)
                }
            }
            HStack (alignment: .top, spacing: 20) {
                Image(systemName: "giftcard").resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color(UIColor.systemBlue).opacity(0.8))
                VStack (alignment: .leading, spacing: 4) {
                    Text("Buy Gift Cards").font(.headline).bold()
                    Text("Buy a gift card, check card balance, and more.")
                        .font(.subheadline)
                }
            }
            HStack (alignment: .top, spacing: 20) {
                Image(systemName: "fork.knife").resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color(UIColor.systemBlue).opacity(0.8))
                VStack (alignment: .leading, spacing: 4) {
                    Text("Customize Pizzas").font(.headline).bold()
                    Text("Easily View Stock Options, Quotes, Charts etc.")
                        .font(.subheadline)
                }
            }
        }        .padding(.all,40)
        
        Spacer()
        Button(action: {
            // Toggle the visibility state
            isMapVisible.toggle()
        }) {
            Text("Toggle Map")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding()
        
        // Map view conditionally displayed based on isMapVisible
        if isMapVisible {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
        }
    }
    
    
    
    
    
}
