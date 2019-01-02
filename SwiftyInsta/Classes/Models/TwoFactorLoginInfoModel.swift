//
//  TwoFactorLoginInfoModel.swift
//  SwiftyInsta
//
//  Created by Mahdi on 10/29/18.
//  Copyright © 2018 Mahdi. All rights reserved.
//

import Foundation

public struct TwoFactorLoginInfoModel: Codable {
    public var obfuscatedPhoneNumber: Int
    public var showMessengerCodeOption: Bool
    public var twoFactorIdentifier: String
    public var username: String
    public var phoneVerificationSettings: PhoneVerificationSettingsModel
    
    public init(obfuscatedPhoneNumber: Int, showMessengerCodeOption: Bool, twoFactorIdentifier: String, username: String, phoneVerificationSettings: PhoneVerificationSettingsModel) {
        self.obfuscatedPhoneNumber = obfuscatedPhoneNumber
        self.showMessengerCodeOption = showMessengerCodeOption
        self.twoFactorIdentifier = twoFactorIdentifier
        self.username = username
        self.phoneVerificationSettings = phoneVerificationSettings
    }
    
    static func empty() -> TwoFactorLoginInfoModel {
        return TwoFactorLoginInfoModel(
            obfuscatedPhoneNumber: 0,
            showMessengerCodeOption: false,
            twoFactorIdentifier: "",
            username: "",
            phoneVerificationSettings: PhoneVerificationSettingsModel.empty()
        )
    }
}
