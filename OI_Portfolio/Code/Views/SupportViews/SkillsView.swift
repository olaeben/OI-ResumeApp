//
//  SkillsView.swift
//  OI_Portfolio
//
//  Created by Wale Ibitoye on 8/28/24.
//

import SwiftUI

struct SkillsView: View {
    
    // Variables
    var skills: [Skill]
    var width: CGFloat
    
    @State var showSkills = true
    
    // Views
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Skills")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.4)) {
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
            
            if(showSkills) {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 12) {
                    ForEach(skills) {skill in
                        SkillView(skill: skill, width: width / 3 - 24)
                    }
                }.padding(.top, 38)
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SkillsView(skills: AppModel().portfolio.skills, width: 400)
                .padding (24)
        }
    }
}

