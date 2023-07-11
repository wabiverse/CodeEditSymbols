/* -----------------------------------------------------------
 * :: :  C  O  S  M  O  :                                   ::
 * -----------------------------------------------------------
 * @wabistudios :: cosmos :: realms
 *
 * CREDITS.
 *
 * T.Furby              @furby-tm       <devs@wabi.foundation>
 *
 *         Copyright (C) 2023 Wabi Animation Studios, Ltd. Co.
 *                                        All Rights Reserved.
 * -----------------------------------------------------------
 *  . x x x . o o o . x x x . : : : .    o  x  o    . : : : .
 * ----------------------------------------------------------- */

import SwiftUI

public extension Image
{
  /// Creates an Image representing a custom SF Symbol
  /// - Parameter symbol: The name of the symbol in `Symbols.xcassets`
  init(symbol: String)
  {
    self.init(symbol, bundle: Bundle.main)
  }

  // MARK: - Symbols

  static let vault: Image = .init(symbol: "vault")
  static let vault_fill: Image = .init(symbol: "vault.fill")
  static let commit: Image = .init(symbol: "commit")
  static let checkout: Image = .init(symbol: "checkout")
  static let breakpoint: Image = .init(symbol: "breakpoint")
  static let breakpoint_fill: Image = .init(symbol: "breakpoint.fill")
  static let customChevronUpChevronDown: Image = .init(symbol: "custom.chevron.up.chevron.down")
  static let github: Image = .init(symbol: "github")

  // add static properties for your symbols above this line
}

public extension NSImage
{
  /// Returns a NSImage representing a custom SF Symbol
  /// - Parameter named: The name of the symbol in `Symbols.xcassets`
  /// - Returns: a NSImage
  static func symbol(named: String) -> NSImage
  {
    Bundle.main.image(forResource: named) ?? .init()
  }

  // MARK: - Symbols

  static let vault: NSImage = .symbol(named: "vault")
  static let vault_fill: NSImage = .symbol(named: "vault.fill")
  static let commit: NSImage = .symbol(named: "commit")
  static let checkout: NSImage = .symbol(named: "checkout")
  static let breakpoint: NSImage = .symbol(named: "breakpoint")
  static let breakpoint_fill: NSImage = .symbol(named: "breakpoint.fill")
  static let customChevronUpChevronDown: NSImage = .symbol(named: "custom.chevron.up.chevron.down")
  static let github: NSImage = .symbol(named: "github")

  // add static properties for your symbols above this line
}
