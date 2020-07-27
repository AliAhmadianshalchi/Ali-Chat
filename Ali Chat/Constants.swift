//
//  Constants.swift
//  Ali Chat
//
//  Created by Ali Ahmadian shalchi on 25/07/2020.
//  Copyright © 2020 Ali Ahmadian shalchi. All rights reserved.
//

import Foundation

struct K {
    
    static let appName = "AliChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let AliVeryDarkGreen = "AliVeryDarkGreen"
        static let AliDarkGreen = "AliDarkGreen"
        static let AlikidaDarkGreen = "AlikidaDarkGreen"
        static let AliTiltBlue = "AliTiltBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
