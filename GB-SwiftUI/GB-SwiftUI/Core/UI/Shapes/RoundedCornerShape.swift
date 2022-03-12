//
//  RoundedCornerShape.swift
//  GB-SwiftUI
//
//  Created by Igor on 12.03.2022.
//

import SwiftUI

struct RoundedCornerShape: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = [.topRight, .bottomLeft, .bottomRight]

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
