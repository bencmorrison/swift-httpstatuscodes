# HTTPStatusCodes

This is a small library that just takes the offical HTTP satus codes and makes them into an easy to parse structure.

The library bases the codes off a the `HTTPStatusCodeProtocol` which will allow you to create and use your own codes in junction with the `HTTPStatusCode`s.

## `HTTPStatusCode`

This is enum contains all offically status codes. The thought mostly came from using this in conjunction with `HTTPURLResponse`. Extending `HTTPURLResponse` with a property that would give access to a better defined status code than an it.

Example:

```swift
import HTTPStatusCodes

extension HTTPURLResponse {
    var code: HTTPStatusCode? { .init(from: code) }
}
```

## `HTTPStatusClass`

This structure contains all official status code classes. You can extend this as you create your own. It predefines the ranges for the different classes such as the information response (range: 100-199).

## `HTTPStatusCodeProtocol`

This is the protocol that `HTTPStatusCode` conforms to. Use this protocol to create your own codes and to use them side by side with this library's `HTTPStatusCode`

## Adding `HTTPStatusCodes` as a depenancy

To use the `HTTPStatusCodes` library in a SwiftPM project, add the following line to the dependencies in your Package.swift file:

```swift
.package(url: "https://github.com/bencmorrison/swift-httpstatuscodes.git", from: "1.0.0"),
```

```swift
.target(name: "<target>", dependencies: [
    .product(name: "HTTPStatusCodes", package: "swift-httpstatuscodes"),
]),
```

Finally, add `import HTTPStatusCodes` to your source code as needed.

## Contributing

If you would like to contribute to this at all that is awesome. Though I do reserve the right to say no to changes.

Please feel free to file issues as well.
