//
// JobStatusResponseDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JobStatusResponseDto: Codable, JSONEncodable, Hashable {

    public var isActive: Bool
    public var queueCount: AnyCodable

    public init(isActive: Bool, queueCount: AnyCodable) {
        self.isActive = isActive
        self.queueCount = queueCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isActive
        case queueCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isActive, forKey: .isActive)
        try container.encode(queueCount, forKey: .queueCount)
    }
}
