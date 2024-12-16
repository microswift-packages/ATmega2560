import HAL
// Adds ``HAL/TimerPeripheral`` conformance to the ``ATmega2560/Tc4`` peripheral.

extension ATmega2560.Tc4: MinimalTimerPeripheral {
  /// Provides access to the current counter value.
  public static var counter: UInt16 {
    get { .init(Self.`tcnt4`.registerValue) }
    set { Self.`tcnt4`.registerValue = .init(truncatingIfNeeded: newValue) }
  }
}
