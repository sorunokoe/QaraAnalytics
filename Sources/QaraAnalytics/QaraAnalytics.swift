//
//  QaraAnalytics.swift
//  QaraAnalytics
//
//  Created by SALGARA, YESKENDIR on 26.04.24.
//

import Foundation

public class QaraAnalytics {
    
    public static let shared = QaraAnalytics()
    
    private var tools: [QaraAnalyticsTool] = []
    
    private init() {}
    
    public func configure(tools: [QaraAnalyticsTool]) {
        self.tools = tools
    }
    
    public func track(_ event: AnalyticsEvent) {
        tools.forEach { tool in
            tool.track(event: event)
        }
    }
    
}
