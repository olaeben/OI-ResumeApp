//
//  FontManager.swift
//  OI_Portfolio
//
//  Created by Wale Ibitoye on 8/28/24.
//

import SwiftUI

enum Montserrat {
    case thin
    case thinItalic
    case regular
    case italic
    case medium
    case mediumItalic
    case semibold
    case semiboldItalic
    case bold
    
    func font(size: CGFloat) -> Font {
        switch self {
        case .thin:
            return .custom("Montserrat-Thin", size: size)
        case .thinItalic:
            return .custom("Montserrat-ThinItalic", size: size)
        case .regular:
            return .custom("Montserrat-Regular", size: size)
        case .italic:
            return .custom("Montserrat-Italic", size: size)
        case .medium:
            return .custom("Montserrat-Medium", size: size)
        case .mediumItalic:
            return .custom("Montserrat-MediumItalic", size: size)
        case .semibold:
            return .custom("Montserrat-SemiBold", size: size)
        case .semiboldItalic:
            return .custom("Montserrat-SemiBoldIta", size: size)
        case .bold:
            return .custom("Montserrat-Bold", size: size)
            
        }
    }
}
