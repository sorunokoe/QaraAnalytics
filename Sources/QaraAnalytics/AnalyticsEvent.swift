//
//  AnalyticsEvent.swift
//  QaraAnalytics
//
//  Created by SALGARA, YESKENDIR on 26.04.24.
//

import Foundation

public struct AnalyticsEvent {
    let name: String
    let properties: [String: String]
    
    public init(name: String, properties: [String : String]) {
        self.name = name
        self.properties = properties
    }
}
