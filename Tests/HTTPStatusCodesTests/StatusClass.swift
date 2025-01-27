// Copyright © 2025 Ben Morrison. All rights reserved.

@testable import HTTPStatusCodes

enum StatusClass: String, CaseIterable, Equatable {
    case informational = "Informational Responses"
    case successful = "Successful Responses"
    case redirection = "Redirection Messages"
    case clientError = "Client Error Responses"
    case serverError = "Server Error Responses"
    
    var sut: HTTPStatusClass {
        switch self {
        case .informational: return .informationalResponses
        case .successful:    return .successfulResponses
        case .redirection:   return .redirectionMessages
        case .clientError:   return .clientErrorResponses
        case .serverError:   return .serverErrorResponses
        }
    }
    
    var range: ClosedRange<Int> {
        switch self {
        case .informational: return 100...199
        case .successful:    return 200...299
        case .redirection:   return 300...399
        case .clientError:   return 400...499
        case .serverError:   return 500...599
        }
    }
    
    var knownCodes: [HTTPStatusCode] {
        HTTPStatusCode.allCases.filter { range.contains($0.code) }
    }
}
