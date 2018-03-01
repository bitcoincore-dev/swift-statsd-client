//
//  Counting.swift
//  StatsdClient
//
//  Created by Khoi Lai on 9/9/17.
//  Copyright © 2017 StatsdClient. All rights reserved.
//

import Foundation

public struct Counting: Metric, Codable {
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
            return "\(name):\(value)|c|@\(sample.clean)"
        }
        return "\(name):\(value)|c"
    }
}
