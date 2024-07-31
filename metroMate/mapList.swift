//
// mapList.swift
// metroMate
//
// Created by Scholar on 7/30/24.
//
import SwiftUI
struct mapList: View {
  var trainList = ["1", "2", "3", "4", "5", "6", "7", "A", "C", "E", "B", "D", "F", "M", "G", "J", "Z", "L", "N", "Q", "R", "W", "S", "SIR"]
  @State private var selectedTrain : String = "1"
  @State private var selectedStop : String = "Van Cortlandt Park-242 St"
  var stopList = ["Van Cortlandt Park-242 St","238 St","231 St", "Marble Hill-225 St", "215 St", "207 St", "Dyckman St", "191 St", "181 St", "168 St-Washington Hts", "157 St","145 St","137 St-City College","125 St","116 St-Columbia University","Cathedral Pkwy (110 St)","103 St","96 St","86 St","79 St","72 St","66 St-Lincoln Center","59 St-Columbus Circle","50 St","Times Sq-42 St","34 St-Penn Station","28 St","23 St","18 St","14 St","Christopher St-Stonewall","Houston St","Canal St","Franklin St","Chambers St","WTC Cortlandt","Rector St","South Ferry"]
  var body: some View {
    ScrollView{
      VStack(alignment: .leading, spacing: 0.0){
        Picker("trainList", selection: $selectedTrain){
          ForEach(trainList, id: \.self){
            trainList in Text(trainList)
          }
        }
        Image("Train1")
          .resizable(resizingMode: .stretch)
          .cornerRadius(10)
          .aspectRatio(contentMode: .fit)
          .padding([.bottom, .trailing], 30)
      }
      List {
        ForEach (stopList, id:\.self){ selectedStop in Text(selectedStop)
          //  .padding(10)
            .foregroundColor(.black)
           // .cornerRadius(10)
           //  .padding(.leading, 10)
           //  .padding(.trailing, 60)
          //  .listRowBackground(Color.pink)
        }
      }
      .scrollContentBackground(.hidden)
      .frame(width: 340, height: 1750)
      .padding(.leading, -50)
      .padding(.top, -20)
      /*
      VStack(alignment: .leading){
        ForEach (stopList, id:\.self){selectedStop in Text(selectedStop)
            .padding(10)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(10)
            .padding(.leading, 10)
            .padding(.trailing, 60)
        }
      }
       */
      //.cornerRadius(50)
      //.padding(10)
      // .foregroundColor(.white)
     //  .background(.orange)
     //  .padding(.leading, -80)
    }
    .padding(.leading, 30)
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
#Preview {
  mapList()
}
