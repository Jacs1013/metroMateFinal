//
// locationList.swift
// metroMate
//
// Created by Scholar on 7/30/24.
//
import SwiftUI
struct locationList: View {
  var body: some View {
    ZStack{
      Color(.navy)
        .ignoresSafeArea()
      ScrollView{
        VStack {
          Text("Most Popular Locations!")
            .font(.title)
            .multilineTextAlignment(.center)
            .bold()
            .foregroundColor(.paleYellow)
            .padding()
          Image("summit")
            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 5)
          Text("Summit One Vanderbilt")
            .font(.title2)
            .bold()       .foregroundColor(.skyBlue)
          Text("45 E 42nd St, New York, NY 10017")
            .font(.title3)
            .foregroundColor(.paleYellow)
          Text("Closest Station: Grand Central-42 St Station")
            .font(.title3)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .foregroundColor(.paleYellow)
          Image("empire")
            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 5)
          Text("Empire State Building")
            .font(.title2)
            .bold()       .foregroundColor(.skyBlue)
            .frame(height: nil)
          Text("20 W 34th St., New York, NY 10001")
            .font(.title3)
            .foregroundColor(.paleYellow)
          Text("Closest Station: 34nd Street - Penn Station")
            .font(.title3)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .foregroundColor(.paleYellow)
          Image("citifield2")
            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 5)
        }
      }
    }
  }
}
#Preview {
  locationList()
}
