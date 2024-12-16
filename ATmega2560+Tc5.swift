import HAL
// Adds ``HAL/TimerPeripheral`` conformance to the ``ATmega2560/Tc5`` peripheral.

extension ATmega2560.Tc5: MinimalTimerPeripheral {
  /// Provides access to the current counter value.
  public static var counter: UInt16 {
    get { .init(Self.`tcnt5`.registerValue) }
    set { Self.`tcnt5`.registerValue = .init(truncatingIfNeeded: newValue) }
  }
}
