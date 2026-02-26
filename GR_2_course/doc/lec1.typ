#import "../env/lib.typ": *

= Lecture 1: FRW Metric Spactime
For a cosmological model, we need to make some assumptions about the universe. The most
common assumption is the cosmological principle:
#theorem[Cosmological Principle][
    The universe is homogeneous and isotropic on large scales.
]
The cosmological principle strongly constains the form of the metric. We assume that we
can select a space slice at each time in some coordinate system, and consider the induced
metric on each time slice.

== Space Slices Metric
The cosmological principle requires that the metric on each time slice is homogeneous and
isotropic, which means that the metric on each time slice is a maximally symmetric space.
A maximally symmetric space is a space that has the maximum number of symmetries, which
means that the Riemann curvature tensor has the following form:
$
              R^((3)) & = "constant" \
              R_(i j) & = 1/3 R^((3)) g_(i j) \
    R^((3))_(i j k l) & = 1/6 R^((3)) (g_(i k) g_(j l) - g_(i l) g_(j k))
$<br>

Thus we can see that a spactial metric can be classified into three types, and in fact
each type of metric can be written in a simple form:

- $R^((3)) = 0$, the metric is $RR^3$ 3-plane

- $R^((3)) > 0$, the metric is $SS^3$ 3-sphere

- $R^((3)) < 0$, the metric is $HH^3$ 3-hyperbolic space (Euclidean AdS space)

The metirc of $RR^3$ is trivial, we will consider the other two cases in the following:

=== $SS^3$ 3-sphere

The metric of a 3-sphere can be given by inducing from a 4-dimensional Euclidean space
with Cartesian coordinates $x^i$ and the metric $d s^2 = delta_(i j) d x^i d x^j$. We can
induce a coordinate and metric by the following constaint and parametrization:

- Constraint:  
