// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

// MARK: Helpers

extension HTTPStatusCode: HTTPStatusCodeProtocol {
    public var code: Int { rawValue }
    
    public var name: String {
        switch self {
        case .continue: return "Continue"
        case .switchingProtocols: return "Switching Protocols"
        case .processing: return "Processing"
        case .earlyHits: return "Early Hits"
        case .ok: return "OK"
        case .created: return "Created"
        case .accepted: return "Accepted"
        case .nonAuthoritativeInformation: return "Non-Authoritative Information"
        case .noContent: return "No Content"
        case .resetContent: return "Reset Content"
        case .partialContent: return "Partial Content"
        case .multiStatus: return "Multi-Status"
        case .alreadyReported: return "Already Reported"
        case .imUsed: return "IM Used"
        case .multipleChoices: return "Multiple Choices"
        case .movedPermanently: return "Moved Permanently"
        case .found: return "Found"
        case .seeOther: return "See Other"
        case .notModified: return "Not Modified"
        case .useProxy: return "Use Proxy"
        case .unused: return "Unused"
        case .temporaryRedirect: return "Temporary Redirect"
        case .permanentRedirect: return "Permanent Redirect"
        case .badRequest: return "Bad Request"
        case .unauthorized: return "Unauthorized"
        case .paymentRequired: return "Payment Required"
        case .forbidden: return "Forbidden"
        case .notFound: return "Not Found"
        case .methodNotAllowed: return "Method Not Allowed"
        case .notAcceptable: return "Not Acceptable"
        case .proxyAuthenticationRequired: return "Proxy Authentication Required"
        case .requestTimeout: return "Request Timeout"
        case .conflict: return "Conflict"
        case .gone: return "Gone"
        case .lengthRequired: return "Length Required"
        case .preconditionFailed: return "Precondition Failed"
        case .contentTooLarge: return "Content Too Large"
        case .uriTooLong: return "URI Too Long"
        case .unsupportedMediaType: return "Unsupported Media Type"
        case .rangeNotSatisfiable: return "Range Not Satisfiable"
        case .expectationFailed: return "Expectation Failed"
        case .imATeapot: return "I'm a Teapot"
        case .misdirectedRequest: return "Misdirected Request"
        case .unprocessableContent: return "Unprocessable Content"
        case .locked: return "Locked"
        case .failedDependency: return "Failed Dependency"
        case .tooEarly: return "Too Early"
        case .upgradeRequired: return "Upgrade Required"
        case .preconditionRequired: return "Precondition Required"
        case .tooManyRequests: return "Too Many Requests"
        case .requestHeaderFieldsTooLarge: return "Request Header Fields Too Large"
        case .unavailableForLegalReasons: return "Unavailable For Legal Reasons"
        case .internalServerError: return "Internal Server Error"
        case .notImplemented: return "Not Implemented"
        case .badGateway: return "Bad Gateway"
        case .serviceUnavailable: return "Service Unavailable"
        case .gatewayTimeout: return "Gateway Timeout"
        case .httpVersionNotSupported: return "HTTP Version Not Supported"
        case .variantAlsoNegotiates: return "Variant Also Negotiates"
        case .insufficientStorage: return "Insufficient Storage"
        case .loopDetected: return "Loop Detected"
        case .notExtended: return "Not Extended"
        case .networkAuthenticationRequired: return "Network Authentication Required"
        }
    }
    
    public var statusClass: HTTPStatusClass {
        switch rawValue {
        case HTTPStatusClass.informationalResponses.range: return .informationalResponses
        case HTTPStatusClass.successfulResponses.range: return .successfulResponses
        case HTTPStatusClass.redirectionMessages.range: return .redirectionMessages
        case HTTPStatusClass.clientErrorResponses.range: return .clientErrorResponses
        case HTTPStatusClass.serverErrorResponses.range: return .serverErrorResponses
        default: fatalError("Unsupported status code: \(rawValue)")
        }
    }
}
