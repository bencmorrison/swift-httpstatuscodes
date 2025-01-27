// Copyright © 2025 Ben Morrison. All rights reserved.

/// This protocol is used to define the `HTTPStatusCode` enum.
/// This library uses this protocol to allow you to define your own status
/// codes as well and allow them to work with the ones in this library.
public protocol HTTPStatusCodeProtocol: Equatable, Sendable {
    /// The http status code as an integer
    var code: Int { get }
    /// The name of the status code.
    var name: String { get }
    /// The class of the status code
    var statusClass: HTTPStatusClass { get }
}
