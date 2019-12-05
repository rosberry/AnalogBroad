//
//  AnalogBroad.swift
//  AnalogBroad
//
//  Created by Nick Tyunin on 08/08/2019.
//  Copyright © 2019 Rosberry. All rights reserved.
//

import ButterBroad
import Analog
import AnyCodable

public enum SessionFilter {
    case current
    case all
}

public final class AnalogBroad: Analytics {

    public private(set) var logger: Logger = .init()

    public init() {
    }

    public func log(_ event: ButterBroad.Event) {
        var params = [String: String]()
        event.params.forEach { key, anyCodable in
            guard let string = anyCodable.value as? String else {
                return
            }
            params[key] = string
        }
        logger.log(.init(title: event.name, parameters: params))
    }
}
