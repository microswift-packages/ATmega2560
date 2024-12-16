import HAL
// Adds ``HAL/TimerPeripheral`` conformance to the ``ATmega2560/Tc1`` peripheral.

extension ATmega2560.Tc1: MinimalTimerPeripheral {
  /// Provides access to the current counter value.
  public static var counter: UInt16 {
    get { .init(Self.`tcnt1`.registerValue) }
    set { Self.`tcnt1`.registerValue = .init(truncatingIfNeeded: newValue) }
  }
}
