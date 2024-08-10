import Foundation
import PeripheryKit
import Shared
import SystemPackage

final class SPMProjectSetupGuide: SetupGuideHelpers, SetupGuide {
    static func detect() -> Self? {
        guard SPM.isSupported else { return nil }
        return Self()
    }

    var projectKindName: String {
        "Swift Project Manager"
    }

    func perform() throws -> ProjectKind {
        .spm
    }

    var commandLineOptions: [String] {
        []
    }
}
