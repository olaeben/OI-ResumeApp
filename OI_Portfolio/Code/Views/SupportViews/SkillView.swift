//
//  SkillView.swift
//  OI_Portfolio
//
//  Created by Wale Ibitoye on 8/28/24.
//

import SwiftUI

struct SkillView: View {
    // Variables
    var skill: Skill
    var width: CGFloat = 100
    
    
    // Views
    var body: some View {
        VStack {
            Image(systemName: skill.image)
                .font(.system(size: 25, weight: .medium))
                .opacity(0.8)
            
            Text(skill.skillName)
                .font(Montserrat.semibold.font(size: 12))
                .padding(.top, 10.0)
        }
        .padding()
        .frame(width: width, height: 115)
        .background(
            RoundedRectangle(cornerRadius: 12)
            .opacity(0.075))
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}
