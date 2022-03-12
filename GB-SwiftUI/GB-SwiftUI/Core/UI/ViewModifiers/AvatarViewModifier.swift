//
//  AvatarViewModifier.swift
//  GB-SwiftUI
//
//  Created by Igor on 12.03.2022.
//

import SwiftUI

struct AvatarViewModifier: ViewModifier {
    
    let shadow: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        
        GeometryReader { geometry in
            content
                .clipShape(
                    RoundedCornerShape(radius: geometry.size.height,
                                       corners: .topRight)
                )
                .clipShape(
                    RoundedCornerShape(radius: geometry.size.height,
                                       corners: .bottomLeft)
                )
                .clipShape(
                    RoundedCornerShape(radius: geometry.size.height,
                                       corners: .bottomRight)
                )
                .shadow(color: shadow, radius: shadowRadius)
        }

    }
}
