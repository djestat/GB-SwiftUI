//
//  FriendCellView.swift
//  GB-SwiftUI
//
//  Created by Igor on 07.03.2022.
//

import SwiftUI

struct FriendCellView: View {
  
    let name: String
    let status: Bool
    
    var body: some View {
        HStack {
            Image("AvatarTemplate")
                .resizable()
                .frame(width: 80, height: 80)
                .avatar(shadow: .gray,
                        shadowRadius: 6)
            Text(name)
            Text(status ? "Online" : "Offline")
                .foregroundColor(status ? .green : .red)

        }
    }
    
}


struct FriendCellView_Previews: PreviewProvider {
    static var previews: some View {
        FriendCellView(name: "Firstname Lastname",
                       status: true)
    }
}
