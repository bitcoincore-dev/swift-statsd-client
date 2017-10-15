//
//  FlushDelegateScheme.swift
//  StatsdClient
//
//  Created by Nghia Tran on 10/15/17.
//  Copyright © 2017 StatsdClient. All rights reserved.
//

import Foundation

protocol FlushSchemeDelegate: class {

    func flush(scheme: FlushScheme)
}
