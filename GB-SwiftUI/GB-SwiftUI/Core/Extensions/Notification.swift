//
//  Notification.swift
//  GB-SwiftUI
//
//  Created by Igor on 07.03.2022.
//

import UIKit

extension Notification.Name {
    
    static var keyboardWillChangeFrame: Notification.Name {
        return UIResponder.keyboardWillChangeFrameNotification
    }
   
    static var keyboardWillHide: Notification.Name {
        return UIResponder.keyboardWillHideNotification
    }
    
}
