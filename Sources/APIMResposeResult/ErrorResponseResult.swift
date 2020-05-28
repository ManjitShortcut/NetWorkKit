//
//  AppConfigurationSetting.swift
//  Umoe
//
//  Created by Manjit on 12/03/2019.
//  Copyright © 2019 Umoe. All rights reserved.
//

public struct ErrorResponseResult: Decodable {
    fileprivate var code: String?
    fileprivate var errorMessage: String?
    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        if let errorMessage = try values.decodeIfPresent(String.self, forKey: .message) {
            self.errorMessage = errorMessage
        }
        if let statusInfo = try values.decodeIfPresent(String.self, forKey: .code) {
            code = statusInfo
        }
    }

   public func fetchErrorCode() -> String {
        return ""
    }

   public func fetchErrorMessage() -> String {
        return ""
    }
}
