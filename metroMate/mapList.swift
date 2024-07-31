//
//  mapList.swift
//  metroMate
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct mapList: View {
    var trainList = ["1", "2", "3", "4", "5", "6", "7", "A", "C", "E", "B", "D", "F", "M", "G", "J", "Z", "L", "N", "Q", "R", "W", "S", "SIR"]
    @State private var selectedTrain : String = "1"
    
    var body: some View {
        ScrollView{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            VStack{
                Picker("trainList", selection: $selectedTrain){
                    ForEach(trainList, id: \.self){
                        trainList in Text(trainList)
                    }
                }
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

#Preview {
    mapList()
}
