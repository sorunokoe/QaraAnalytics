//
//  QaraAmplitude.swift
//  QaraAnalytics
//
//  Created by SALGARA, YESKENDIR on 26.04.24.
//

import AmplitudeSwift

public class QaraAmplitude: QaraAnalyticsTool {
    
    private let amplitude: Amplitude
    
    public init(apiKey: String) {
        self.amplitude = Amplitude(configuration: Configuration(apiKey: apiKey))
    }
    
    public func track(event: AnalyticsEvent) {
        #if RELEASE
        let event = BaseEvent(eventType: event.name, eventProperties: event.properties)
        amplitude.track(event: event)
        #endif
    }
    
}
