# The default driver would be taken as i915 in ThinkPad X1 Yoga 2nd, while the
# shared library installed only has va_gl. Set it right.
# C.f. https://wiki.archlinux.org/index.php/Hardware_video_acceleration
export VDPAU_DRIVER=va_gl
