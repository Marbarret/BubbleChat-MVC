//
//  Constants.swift
//  MessageApp
//
//  Created by Marcylene Barreto on 16/12/22.
//

import Foundation

struct K {
    static let appName = "Bubble"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "mainColor"
        static let blue = "blue"
        static let lighBlue = "lightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
