// Copyright © 2025 Ben Morrison. All rights reserved.

/// Defines the class an `HTTPStatusCode` can belong to.
/// You can create custom ones yourself if you'd like.
///
/// Status class descriptions have come from https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
public struct HTTPStatusClass: Equatable, Hashable, Sendable {
    /// The name of the class
    public let name: String
    /// The code range for this class. Ex: 100...199
    public let range: ClosedRange<Int>
    
    /// Creates a new Status Class.
    /// - Parameters:
    ///   - name: The name for the status class.
    ///   - range: The http status code range for the status class.
    public init(name: String, range: ClosedRange<Int>) {
        self.name = name
        self.range = range
    }
    
    /// Returns all known status codes for this class.
    /// The known codes are derived from `HTTPStatusCode.known`
    public var allStatusCodes: [HTTPStatusCode] {
        HTTPStatusCode.allCases
            .filter { range.contains($0.code) }
    }
}

extension HTTPStatusClass {
    /// An informational response indicates that the request was received and
    /// understood. It is issued on a provisional basis while request processing
    /// continues. It alerts the client to wait for a final response.
    public static let informationalResponses: HTTPStatusClass = .init(name: "Informational Responses", range: 100...199)
    /// This class of status codes indicates the action requested by the client was
    /// received, understood, and accepted.
    public static let successfulResponses: HTTPStatusClass = .init(name: "Successful Responses", range: 200...299)
    /// This class of status code indicates the client must take additional action to
    /// complete the request. Many of these status codes are used in URL redirection.
    public static let redirectionMessages: HTTPStatusClass = .init(name: "Redirection Messages", range: 300...399)
    /// This class of status code is intended for situations in which the error seems
    /// to have been caused by the client. Except when responding to a HEAD request,
    /// the server should include an entity containing an explanation of the error
    /// situation, and whether it is a temporary or permanent condition. These status
    /// codes are applicable to any request method.
    public static let clientErrorResponses: HTTPStatusClass = .init(name: "Client Error Responses", range: 400...499)
    /// Response status codes beginning with the digit "5" indicate cases in which the
    /// server is aware that it has encountered an error or is otherwise incapable of
    /// performing the request. Except when responding to a HEAD request, the server
    /// should include an entity containing an explanation of the error situation, and
    /// indicate whether it is a temporary or permanent condition. Likewise, user agents
    ///  should display any included entity to the user. These response codes are
    ///  applicable to any request method.
    public static let serverErrorResponses: HTTPStatusClass = .init(name: "Server Error Responses", range: 500...599)
}
