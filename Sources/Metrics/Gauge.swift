//
//  Gauge.swift
//  StatsdClient
//
//  Created by Khoi Lai on 10/7/17.
//  Copyright © 2017 StatsdClient. All rights reserved.
//

import Foundation

public struct Gauge: Metric, Codable {
    let name: String
    let value: String
    let sample: Float? = nil

    public init(name: String, value: UInt) {
        self.init(name: name, value: "\(value)")
    }

    public init(name: String, delta: Int) {
        let prefix = delta >= 0 ? "+" : "-"
        self.init(name: name, value: "\(prefix)\(abs(delta))")
    }

    private init(name: String, value: String) {
        self.name = name
        self.value = value
    }
    
    public var metricData: String {
        return "\(name):\(value)|g"
    }
}
