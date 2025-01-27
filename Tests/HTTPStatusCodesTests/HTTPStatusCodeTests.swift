// Copyright © 2025 Ben Morrison. All rights reserved.

import Testing
@testable import HTTPStatusCodes

@Suite
struct HTTPStatusCodeTests {
    @Test(arguments: StatusCodes.allCases)
    func testStatusCode(_ statusCode: StatusCodes) throws {
        let sut = try #require(HTTPStatusCode(from: statusCode.rawValue))
        #expect(sut.code == statusCode.rawValue)
        #expect(sut.name == statusCode.name)
        #expect(sut.statusClass == statusCode.statusClass)
    }
}

