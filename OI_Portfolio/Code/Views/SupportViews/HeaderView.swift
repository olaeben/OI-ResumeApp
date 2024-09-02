//
//  HeaderView.swift
//  OI_Portfolio
//
//  Created by Wale Ibitoye on 8/28/24.
//

import SwiftUI

struct HeaderView: View {
    
    var appModel: AppModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("display_photo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(-0.94)
                    .background(
                        Circle()
                            .opacity(0.5)
                            .shadow(radius: 7)
                    )
                Spacer()
            }
            
            
            Text(appModel.portfolio.name)
                .font(Montserrat.bold.font(size: 17))
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(Montserrat.mediumItalic.font(size: 18))
                .opacity(0.85)
                .padding(.top, -2)
            
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                
                Text(appModel.portfolio.location)
                    .font(Montserrat.medium.font(size: 17))
            }
            .padding(.top, 8)
            .opacity(0.45)
            
            HStack {
                Image("linkedin")
                    .resizable()
                    .frame(width: 25, height: 25)
                
                Text(appModel.portfolio.linkedin)
                    .font(Montserrat.medium.font(size: 17))
            }
            .padding(.top, 6)
            .opacity(0.40)
            
            HStack {
                Image("github")
                    .resizable()
                    .frame(width: 25, height: 25)
                
                Text(appModel.portfolio.github)
                    .font(Montserrat.medium.font(size: 17))
            }
            .padding(.top, 6)
            .opacity(0.40)
            
            Text(appModel.portfolio.description)
                .font(Montserrat.mediumItalic.font(size: 16))
                .opacity(0.5)
                .padding(.top, 24)
                .lineSpacing(10)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        let appModel = AppModel()
        HeaderView(appModel: appModel)
            .padding(24)
    }
}
