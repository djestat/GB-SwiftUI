//
//  CustomRowView.swift
//  GB-SwiftUI
//
//  Created by Igor on 12.03.2022.
//

import SwiftUI

struct CustomRowView<Content: View>: View{
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            
            Spacer()
            
            content
        }
    }
}
