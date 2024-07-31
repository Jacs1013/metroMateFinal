//
//  ContentView.swift
//  metroMate
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("MetroMate")
                    .font(.system(size:40))
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.0, green: 0.16, blue: 0.37, opacity: 1.0))
                    .padding(.trailing, 100.0)
                    .padding(.top, -50)
                    
                Image("subwayMap")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading, .bottom, .trailing], 50)
                Text("Click the icons below to find individual subway lines, top attractions to visit, and favorite your frequent trips!")
                    .font(.system(size:20))
                    .lineSpacing(8)
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.0, green: 0.16, blue: 0.37, opacity: 1.0))
                    .padding(.horizontal, 50.0)
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: ContentView()) {
                        Image("homeIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    NavigationLink(destination: mapList()) {
                        Image("mapIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    NavigationLink(destination: locationList()) {
                        Image("buildingIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    NavigationLink(destination: favoriteList()) {
                        Image("heartIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                }
            }
        }
    }
}

struct HomeScreenView: View {
    var body: some View {
        Text("Home Screen View")
    }
}
struct MapScreenView: View {
    var body: some View {
        Text("Map Screen View")
    }
}
struct LocationScreenView: View {
    var body: some View {
        Text("Location Screen View")
    }
}
struct FavoriteScreenView: View {
    var body: some View {
        Text("Favorite Screen View")
    }
}
#Preview {
    ContentView()
}
