# PrimalShared (iOS)

Swift Package distribution for **PrimalShared**, the Kotlin Multiplatform (KMP) core shared between Primal's Android and iOS apps.

This repository does not contain source code. It is a thin SwiftPM wrapper that points at a precompiled `PrimalShared.xcframework` binary, published as a GitHub release.

The framework is built from the **`:shared` module** of [primal-android-app](https://github.com/PrimalHQ/primal-android-app) (`shared/build.gradle.kts`), which is the source of truth. It packages a set of Kotlin Multiplatform modules and exposes them to Swift via [SKIE](https://skie.touchlab.co/) for idiomatic interop (Kotlin `Flow` → Combine, suspend functions → `async`, etc.).

## What's inside

The cross-platform business logic that both apps share, exposed to Swift:

- **Nostr** — core Nostr protocol models (events, kinds, tags, NIP-19 identifiers) and WebSocket relay communication with Primal's infrastructure.
- **Feeds & content** — Primal feeds, articles, live streams, polls, and direct messages, backed by local SQLite caching and paging.
- **Wallet** — Bitcoin Lightning wallet (powered by the [Breez SDK / Spark](https://github.com/breez/breez-sdk-spark-swift)), transactions, LNURL & Lightning address payments, on-chain addresses, and Nostr Wallet Connect (NWC).
- **Account & remote signing** — account sessions, app connections, permissions, and the NIP-46 Nostr remote signer flow.
- **Media upload** — file uploads via the Blossom protocol.
- **Paging** — a Swift-friendly paging runtime (`IosPagingPresenter`) wrapping AndroidX Paging for iOS consumers.

It follows clean-architecture layering — `domain` (models, interfaces) → `core` (networking, protocols) → `data` (repository implementations) — all exported behind factory entry points.

## Requirements

- iOS 16.0+
- Swift tools 5.9+

## Installation

### Swift Package Manager (Xcode)

1. **File → Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/PrimalHQ/primal-shared-ios
   ```
3. Pin to the desired version and add the `PrimalShared` library to your target.

### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/PrimalHQ/primal-shared-ios", from: "<latest-version>")
]
```

Then add `PrimalShared` to your target's dependencies. See [Releases](https://github.com/PrimalHQ/primal-shared-ios/releases) for available versions.

## Usage

The official [Primal iOS app](https://github.com/PrimalHQ/primal-ios-app) is a direct consumer of this package. The typical pattern is to obtain a repository or service from one of the shared factories, call its suspend functions with `async`, and observe its `Flow`s as Combine publishers (via SKIE's `.toPublisher()`).

```swift
import PrimalShared
```

Create a shared service via its factory, wiring in the repositories and types it depends on. The repositories and key-pair type come from PrimalShared; the handlers are PrimalShared protocols you implement yourself (so signing/encryption runs with your own keys & storage):

```swift
// Repositories from the shared factory
let connectionRepo = AccountRepositoryFactory.shared.createConnectionRepository()
let sessionRepo = AccountRepositoryFactory.shared.createSessionRepository()

// Nostr key-pair type (supply your own keys)
let signerKeypair = NostrKeyPair(privateKey: privateKey, pubKey: pubKey)

// Your own implementations for the PrimalShared protocols
let signatureHandler: NostrEventSignatureHandler = MySignatureHandler()
let encryptionService: NipsNostrEncryptionService = MyEncryptionService()
let encryptionHandler: NostrEncryptionHandler = MyEncryptionHandler()

let remoteSigner = AccountServiceFactory.shared.createRemoteSignerService(
    signerKeyPair: signerKeypair,
    eventSignatureHandler: signatureHandler,
    nostrEncryptionService: encryptionService,
    nostrEncryptionHandler: encryptionHandler,
    connectionRepository: connectionRepo,
    sessionRepository: sessionRepo,
    sessionInactivityTimeoutInMinutes: 0
)
remoteSigner.initialize()
```

Call a suspend function with `async/await`:

```swift
try await connectionRepo.updateTrustLevel(
    clientPubKey: connectionID,
    trustLevel: TrustLevel.full
)
```

Observe a Kotlin `Flow` as a Combine publisher:

```swift
sessionRepo.observeRemoteSessionsByApp(appIdentifier: connectionID)
    .toPublisher()
    .sink { sessions in /* update UI */ }
    .store(in: &cancellables)
```

## Contact

For help with Primal:

- 🌐 Website — [primal.net](https://primal.net)
- ✉️ Email — [support@primal.net](mailto:support@primal.net)
- 🐛 Report a bug — [GitHub Issues](https://github.com/PrimalHQ/primal-shared-ios/issues)
- 💡 Request a feature — [GitHub Issues](https://github.com/PrimalHQ/primal-shared-ios/issues)

Developed by [Appollo41](https://appollo41.com), a software development studio.

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.
