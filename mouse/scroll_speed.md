find libinput files
```shell
sudo updatedb
ll $(locate -A libinput.so)
```

most likely Canonical delivers their libinput libs with fucking snaps
```shell
sudo snap list
sudo snap remove gnome-3-28-1804
```

check, that libinput lefts only in system folder, like :
`/usr/lib/x86_64-linux-gnu/libinput.so`
`/usr/lib/x86_64-linux-gnu/libinput.so.10`
`/usr/lib/x86_64-linux-gnu/libinput.so.10.13.0`
```shell
ll $(locate -A libinput.so)
```

clone libinput source
```shell
git clone https://gitlab.freedesktop.org/libinput/libinput
cd libinput
```

modify `src/evdev.c`. Find `evdev_read_wheel_click_props` function and init `angles.y = 361`;
```C
static inline struct wheel_angle
evdev_read_wheel_click_props(struct evdev_device *device)
{
	struct wheel_angle angles;
	const char *wheel_count = "MOUSE_WHEEL_CLICK_COUNT";
	const char *wheel_angle = "MOUSE_WHEEL_CLICK_ANGLE";
	const char *hwheel_count = "MOUSE_WHEEL_CLICK_COUNT_HORIZONTAL";
	const char *hwheel_angle = "MOUSE_WHEEL_CLICK_ANGLE_HORIZONTAL";

	/* CLICK_COUNT overrides CLICK_ANGLE */
	if (evdev_read_wheel_click_count_prop(device, wheel_count, &angles.y) ||
	    evdev_read_wheel_click_prop(device, wheel_angle, &angles.y)) {
		evdev_log_debug(device,
				"wheel: vert click angle: %.2f\n", angles.y);
	}
	if (evdev_read_wheel_click_count_prop(device, hwheel_count, &angles.x) ||
	    evdev_read_wheel_click_prop(device, hwheel_angle, &angles.x)) {
		evdev_log_debug(device,
				"wheel: horizontal click angle: %.2f\n", angles.y);
	} else {
		angles.x = angles.y;
	}
	// since, src/util-prop-parsers.c : abs(angle) > 360
	angles.y = 361;

	return angles;
}
```

modify `src/libinput.c`. Find `libinput_event_pointer_get_axis_value_discrete` function and apply scroll ratio as you wish:
```C
LIBINPUT_EXPORT double
libinput_event_pointer_get_axis_value_discrete(struct libinput_event_pointer *event,
					       enum libinput_pointer_axis axis)
{
	struct libinput *libinput = event->base.device->seat->libinput;
	double value = 0;

	require_event_type(libinput_event_get_context(&event->base),
			   event->base.type,
			   0.0,
			   LIBINPUT_EVENT_POINTER_AXIS);

	if (!libinput_event_pointer_has_axis(event, axis)) {
		log_bug_client(libinput, "value requested for unset axis\n");
	} else {
		switch (axis) {
		case LIBINPUT_POINTER_AXIS_SCROLL_HORIZONTAL:
      // x5 ratio for horizontal scrolling
			value = event->discrete.x * 5;
			break;
		case LIBINPUT_POINTER_AXIS_SCROLL_VERTICAL:
      // x5 ratio for vertical scrolling
			value = event->discrete.y * 5;
			break;
		}
	}
	return value;
}
```
Prepare build directory:
```shell
meson --prefix=/usr builddir/ -Ddocumentation=false
```
Compile and install:
```shell
ninja -C builddir/ && sudo ninja -C builddir/ install
```
Verify location:
```shell
ll $(locate -A libinput.so)
```
Logout / Login , use.
