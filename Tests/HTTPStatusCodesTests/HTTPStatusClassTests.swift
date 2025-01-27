import Testing
@testable import HTTPStatusCodes

@Suite
struct HTTPStatusClassTests {
    @Test(arguments: StatusClass.allCases)
    func checkClassIsValid(_ statusClass: StatusClass) async throws {
        let sut = statusClass.sut
        #expect(sut.name == statusClass.rawValue)
        #expect(sut.range == statusClass.range)
        #expect(sut.allStatusCodes == statusClass.knownCodes)
    }
}
