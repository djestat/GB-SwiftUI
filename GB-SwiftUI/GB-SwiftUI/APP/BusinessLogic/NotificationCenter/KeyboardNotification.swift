//
//  KeyboardNotification.swift
//  GB-SwiftUI
//
//  Created by Igor on 07.03.2022.
//

import UIKit
import Combine

struct KeyboardNotification {
    
    let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: .keyboardWillChangeFrame).map { _ in true },
        NotificationCenter.default.publisher(for: .keyboardWillHide).map { _ in false })
        .removeDuplicates()
    
}
 
