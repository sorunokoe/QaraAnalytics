//
//  QaraGA.swift
//  QaraAnalytics
//
//  Created by SALGARA, YESKENDIR on 26.04.24.
//

import FirebaseAnalytics
import FirebaseCore

public class QaraGA: QaraAnalyticsTool {
    
    public init() {
        FirebaseApp.configure()
    }
    
    public func track(event: AnalyticsEvent) {
        Analytics.logEvent(event.name, parameters: event.properties)
    }
    
}
