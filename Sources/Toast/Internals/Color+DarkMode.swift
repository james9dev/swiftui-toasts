import struct SwiftUI.Color
import class UIKit.UIColor

extension UIColor {
  internal convenience init(light: UIColor, dark: UIColor) {
    self.init { $0.userInterfaceStyle == .dark ? dark : light }
  }
}

extension Color {
  internal init(light: Color, dark: Color) {
    self.init(_uiColor: UIColor.init(light: UIColor(light), dark: UIColor(dark)))
  }
}

extension Color {
    internal static let toastBackground: Color = Color(light: .white, dark: Color(white: 0.12))
    
    internal static let toastBackgroundDark: Color = Color(red: 0.13, green: 0.14, blue: 0.13)
    internal static let toastTextWhite: Color = Color.white
}
