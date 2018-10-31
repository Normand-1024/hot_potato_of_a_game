with other{
	if !other.holding and other.hold_lock_timer <= 0 {
		other.holding = true
		other.holding_package = self
		touch_button = false
		if_held = true
	}
}