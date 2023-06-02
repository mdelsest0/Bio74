
TITLE gapj.mod

NEURON {
	POINT_PROCESS gapj
	:SUFFIX gap
	NONSPECIFIC_CURRENT i
	RANGE r, i
	POINTER vc
}

PARAMETER {
	:r = 100 (ohm-cm2)
	r = 1e6 (megaohm)
}

ASSIGNED {
	i (milliamp/cm2)
	v (millivolt)
	vc (millivolt)
}

BREAKPOINT {
	i = (v - vc)/r
}
