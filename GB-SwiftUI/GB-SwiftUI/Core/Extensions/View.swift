//
//  View.swift
//  GB-SwiftUI
//
//  Created by Igor on 07.03.2022.
//

import SwiftUI

extension View {
    ///Modifyed content
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
    
    
    /// View with cornerRadius, background, shadow, shadowRadius
    func borderedBackground(cornerRadius: CGFloat,
                            background: Color,
                            shadow: Color,
                            shadowRadius: CGFloat) -> some View {
        self.modifier(
            BorderShadowBackgroundViewModifier(cornerRadius: cornerRadius,
                                               background: background,
                                               shadow: shadow,
                                               shadowRadius: shadowRadius)
        )
    }
    
    /// Avatar Image Modifier
    func avatar(shadow: Color,
                shadowRadius: CGFloat) -> some View {
        self.modifier(
            AvatarViewModifier(shadow: shadow,
                               shadowRadius: shadowRadius)
        )
    }
    
}
