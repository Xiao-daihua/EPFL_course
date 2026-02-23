#import "../env/lib.typ": *

= Lecture 1: FRW Coordinates

== FRW Metric

We make the assumption that:
#theorem([
  The universe is homogeneous and isotropic on large scales.
])
This symmetry condition strongly constains the form of the metric, and we can
show that the curvature of the spactial slice shall satisfy:
$
            R^((3)) & = "constant" \
            R_(i j) & = 1/3 R^((3)) g_(i j) \
  R^((3))_(i j k l) & = 1/6 R^((3)) (g_(i k) g_(j l) - g_(i l) g_(j k))
$
Thus we can see that a spactial metric can be classified into three types, and
in fact each type of metric can be written in a simple form:
- $R^((3)) = 0$, the metric is $RR^3$ 3-plane
- $R^((3)) > 0$, the metric is $SS^3$ 3-sphere
