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
            
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: HomeScreenView()) {
                        Image("homeIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    NavigationLink(destination: MapScreenView()) {
                        Image("mapIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    NavigationLink(destination: LocationScreenView()) {
                        Image("buildingIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    NavigationLink(destination: FavoriteScreenView()) {
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
