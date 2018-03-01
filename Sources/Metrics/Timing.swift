//
//  Timing.swift
//  StatsdClient
//
//  Created by Khoi Lai on 10/7/17.
//  Copyright © 2017 StatsdClient. All rights reserved.
//

import Foundation

public struct Timing: Metric, Codable {
    let name: String
    let value: Int
    let sample: Float?

    public init(name: String, value: Int, sample: Float? = nil) {
        self.name = name
        self.value = value
        self.sample = sample
    }

    public var metricData: String {
        if let sample = sample {
            return "\(name):\(value)|ms|@\(sample.clean)"
        }
        return "\(name):\(value)|ms"
    }
}
