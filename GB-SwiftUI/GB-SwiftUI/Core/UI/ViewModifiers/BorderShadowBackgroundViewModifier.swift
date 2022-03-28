//
//  BorderShadowBackgroundViewModifier.swift
//  GB-SwiftUI
//
//  Created by Igor on 12.03.2022.
//

import SwiftUI

struct BorderShadowBackgroundViewModifier: ViewModifier {
 
    let cornerRadius: CGFloat
    let background: Color
    let shadow: Color
    let shadowRadius: CGFloat

    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(background)
                    .shadow(color: shadow, radius: shadowRadius)
            )
    }
}
