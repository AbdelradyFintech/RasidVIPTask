// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal struct Colors {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0065b0"></span>
  /// Alpha: 100% <br/> (0x0065b0ff)
  internal static let addBranchAddBranchButtonBG = Colors(rgbaValue: 0x0065b0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let addBranchAddBranchButtonTitle = Colors(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let addBranchTitleLabel = Colors(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#515151"></span>
  /// Alpha: 100% <br/> (0x515151ff)
  internal static let addBranchTitleLabels = Colors(rgbaValue: 0x515151ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#acacac"></span>
  /// Alpha: 100% <br/> (0xacacacff)
  internal static let addBranchTitleTextFields = Colors(rgbaValue: 0xacacacff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f4f6f8"></span>
  /// Alpha: 100% <br/> (0xf4f6f8ff)
  internal static let addBrnachTextFieldsBG = Colors(rgbaValue: 0xf4f6f8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#acacac"></span>
  /// Alpha: 100% <br/> (0xacacacff)
  internal static let branchCellManagerName = Colors(rgbaValue: 0xacacacff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#515151"></span>
  /// Alpha: 100% <br/> (0x515151ff)
  internal static let branchCellBranchName = Colors(rgbaValue: 0x515151ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0065b0"></span>
  /// Alpha: 100% <br/> (0x0065b0ff)
  internal static let branchCellSellersCount = Colors(rgbaValue: 0x0065b0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0065b0"></span>
  /// Alpha: 100% <br/> (0x0065b0ff)
  internal static let branchDetailsDataLabels = Colors(rgbaValue: 0x0065b0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0065b0"></span>
  /// Alpha: 100% <br/> (0x0065b0ff)
  internal static let branchDetailsEditBranchButton = Colors(rgbaValue: 0x0065b0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#515151"></span>
  /// Alpha: 100% <br/> (0x515151ff)
  internal static let branchDetailsTitleLabels = Colors(rgbaValue: 0x515151ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#515151"></span>
  /// Alpha: 100% <br/> (0x515151ff)
  internal static let branchsBranchsListHeader = Colors(rgbaValue: 0x515151ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0065b0"></span>
  /// Alpha: 100% <br/> (0x0065b0ff)
  internal static let branchsReportButtonBG = Colors(rgbaValue: 0x0065b0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let branchsReportButtonTitle = Colors(rgbaValue: 0xffffffff)
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let components = RGBAComponents(rgbaValue: rgbaValue).normalized
    self.init(red: components[0], green: components[1], blue: components[2], alpha: components[3])
  }
}

private struct RGBAComponents {
  let rgbaValue: UInt32

  private var shifts: [UInt32] {
    [
      rgbaValue >> 24, // red
      rgbaValue >> 16, // green
      rgbaValue >> 8,  // blue
      rgbaValue        // alpha
    ]
  }

  private var components: [CGFloat] {
    shifts.map { CGFloat($0 & 0xff) }
  }

  var normalized: [CGFloat] {
    components.map { $0 / 255.0 }
  }
}

internal extension Color {
  convenience init(named color: Colors) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
