//
//  ContentView.swift
//  metroMate
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Root view")
            }
            .toolbar{
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: mapList())
                    {
                        Image("mapIcon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    NavigationLink(destination: locationList())
                    {
                        Image("buildingIcon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    NavigationLink(destination: favoriteList())
                    {
                        Image("heartIcon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    NavigationLink(destination: ContentView())
                    {
                        Image("homeIcon")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
