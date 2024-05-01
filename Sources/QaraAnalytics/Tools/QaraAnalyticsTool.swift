//
//  QaraAnalyticsTool.swift
//  QaraAnalytics
//
//  Created by SALGARA, YESKENDIR on 26.04.24.
//

import Foundation

public protocol QaraAnalyticsTool {
    func track(event: AnalyticsEvent)
}
