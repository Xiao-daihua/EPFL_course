#import "../env/lib.typ": *


= Lecture 4: Thermal History of the Universe I: Equilibrium

== Distances in Cosmology II

=== Luminosity Distance and Redshift

We want a formula for the luminosity distance $d_L$ as a function of
redshift $z$. Thus, if we both measure $d_L$ and $z$ then we can find
measure parameter $a(t)$.

We start from the expression @cor:luminositydistance, we can see that
$r(t_0,t_1)$ can be calculated using the null geodesic
@eq:nullgeodesic, using the result of @eq:nullgeodesiclength gives:
$
    r(t_0,t_1) = cases(
        integral_(t_1)^(t_0) ((d t) / a(t)) quad & k = 0,
        sin(integral_(t_1)^(t_0) ((d t) / a(t))) quad & k = 1,
        op("sinh")(integral_(t_1)^(t_0) ((d t) / a(t)))quad & k = -1,
    )
$
Then we want to calculate the integral:
$
    integral_(t_1)^(t_0) ((d t) / a(t))
$
For a general universe, the Friedmann equation and Energy conservation
equation gives @eq:friedmannrewrite. We copy it here:
$
    H^2 = H_0^2 (Omega_Lambda + Omega_k (a_0 / a)^2 + Omega_m (a_0 / a)^3 + Omega_gamma (a_0 / a)^4)
$
#remark([
    Note that in this equation we set a time $t_0$ to define $H_0$
    ,$a_0$ and $Omega_i$ these constants. Here in the context of
    distance, we take $t_0$ to be the time when the light is emitted
    (note this conficted with the previous convention where we take
    $t_0$ to be the time when the light is observed, and $t_1$ to be
    the time when the light is emitted).
])
We make a change of variable $x = a / a_0$, then we have:
$
    dot(x) = H_0 A(x) x, quad A(x)^2 = ( Omega_Lambda + Omega_k x^(-2) + Omega_m x^(-3) + Omega_gamma x^(-4) )
$
With these preparation we can calculate the integral:
$
    integral_(t_1)^(t_0) ((d t) / a(t)) = 1/(a_0 H_0) integral_(x_1)^(x_0) ((d x) / ( A(x) x^2)) quad x_0 = 1, x_1 = a(t_1) / a_0 = 1 / (1 + z)
$
Then the final formula for the luminosity distance is given by:
#corollary[Luminosity Distance ito Redshift][
    The luminosity distance can be calculated as a function of
    redshift as:
    $
        d(z) = a_0 (1+z) 1/sqrt(-k) op("sinh") ( sqrt(-k)/(a_0 H_0) integral_(1/(1+z))^1 ((d x) / ( A(x) x^2)) )
    $
    This is combining the three cases of $k$ into one formula, for
    $k = 0$ we take the limit $k arrow.r 0$ and use the fact that
    $lim_(x arrow.r 0) (sinh(x) / x) = 1$.
]


=== Parallax

Consider we have a source very far from the sun and we want to measure
the distance between another star, which is much closer to the sun
(though still very far from us). We can measure the angle between the
source and the star at two different time (for example, at two
different position of the earth in its orbit around the sun). This is
called parallax.

See the diagram for illustration:

#figure(
    image("../assets/parallax.png", width: 80%),
    caption: [Parallax measurement. ],
) <fig-parallax>

The parallax is defined as:
#definition[Parallax][
    The parallax is defined as the angle between the source and the
    star at two different time.
    $
        alpha_2 - alpha_1
    $
]
A distance can be calculated from the parallax as:
$
    d = (2 r) / (alpha_2 - alpha_1)
$
where $r$ is the distance between the sun and the earth.

== Review on Euquilibrium Statistical Mechanics

=== Occupation Number and Thermal Distribution Function

For a Equilibrium system, Bosons and Fermions have different
occupational number:
#theorem[Occupartion Number of Bosons and Fermions][
    For a system in equilibrium, the occupation number of bosons and
    fermions are given by:
    $
        n_B (E) = 1 / (e^((E - mu) / T) - 1), quad n_F (E) = 1 / (e^((E - mu) / T) + 1)
    $
    where $E$ is the energy of the state, $mu$ is the chemical
    potential and $T$ is the temperature.
]
The thermal distribution function of the particles are given by
$f(p)$, it is related to the occupation number and the number of dof
of the particle:
#definition[Thermal Distribution Function][
    The thermal distribution function of the particle $i$ is given by:
    $
        f_i (p) = (g_i / (2 pi)^3) n_i (E(p)) quad E(p) = sqrt(p^2 + m_i^2)
    $
]
#remark([
  As a reminder of convention of statistical mechanics. the $(2 pi planck.reduce)^3 $ or in the above formula $(2 pi)^3 $ where we set $planck.reduce = 1 $ is the density of phase space. and $g_i$ is the number of degrees of freedom of the particle, for example, for a photon we have $g_i = 2$ because it has two polarization states. 

  For total number of partitcle, we need to integrate over the phase space $d^3 x d^3 p $, yet we leave the spacial part $d^3 x$ out because we are interested in the number density, which is the number of particle per unit volume. Thus we only integrate over the momentum space $d^3 p$.
])
Integrating over $f_i (p)$ gives the *number density* of the particle
and integrating with the weight of energy gives the *energy density*
of the particle:

- *Number Density*:
$
    N_i = integral f_i (p) d^3 p
$

- *Energy Density*:
$
    rho_i = integral E(p) f_i (p) d^3 p
$

=== Energy and Number Density in Relativistic Limit

The number density and energy density at equilibrium can be calculated
explicitly. For particles in the *relativistic limit*, we means really
high temperature::
$
    T >> m_i quad arrow.r.double quad T tilde E tilde |p|
$
we can caluclate the number density and energy density as:

- *Energy Density*:
$
    rho_i = cases(
        (pi^2 / 30) g_i T^4 quad & "Boson",
        ,
        7/8( pi^2 / 20) g_i T^4 quad & "Fermion",
    )
$

- *Number Density*:

$
    N_i = cases(
        (zeta(3) / pi^2) g_i T^3 quad & "Boson",
        ,
        3/4 (zeta(3) / pi^2) g_i T^3 quad & "Fermion",
    )
$
We can also calculate the average energy of the particle in this
limit:
$
    angle.l E angle.r = rho_i / N_i
$
For the convenience of calculating energy density of system with
multiple particle species, we can define the *effective number of
species*:
$
    g_* = sum_("boson") g_i + (7/8) sum_("fermion") g_i
$
and the energy density of the system can be calculated as:
$
    rho = (pi^2 / 30) g_* T^4
$<eq:relativisticenergydensity>

=== Entropy Density in Relativistic Limit

From the second law of thermodynamics, we have:
$
    E = T S - P V + mu N
$
we take the assumption that the chemical potential is zero, then we
have:
$
    s = S/V = (rho + P) / T
$
where $rho$ is the energy density and $P$ is the pressure of the
system. For a relativistic particle remeber we have
@sec:differentparticles, we take $P = 1/3 rho$ for relativistic
particle, thus we have:
$
    s = 4/3 (rho / T)
$

=== Energy and Number Density in Non-Relativistic Limit

For non-relativistic limit, we means that:
$
    m_i >> T quad arrow.r.double quad E tilde m_i + p^2 / (2 m_i)
$
Note that here $mu$ can be important. In this region the number
density and energy density can be calculated as:

- *Number Density*:
$
    N_i = g_i ((m_i T) / (2 pi))^(3/2) exp ((mu_i - m_i) / T)
$

- *Energy Density*:
$
    rho_i = g_i m_i N_i (T)
$
Moreover the pressure of the particle is given by:
$
    P_i = g_i N_i T << rho_i
$
Thus, we can see @sec:differentparticles that the pressureless dust
approximation is valid for non-relativistic particle.

== CMB Temperature 

With these preparation of thermaldynamics, we can calculate the CMB temperature. We first assume that the universe is:

- $k = 0, Lambda = 0 $ and dominated by relativistic particles

then the Friedmann equation gives @eq:friedmannmatter :
$ 
H = ((8 pi G) / 3 rho_("rad"))^(1/2)  
$
And from the thermaldynamics calculation we have @eq:relativisticenergydensity, we then can see the temperature dependency of the Hubble parameter:
$ 
H = T^2/ M_0 quad M_0 = sqrt(45 / (4 pi^3 G g_*))
$<eq:friedmannmatterrad>
where $g_* $ is the effective number of species at the time.  

For a radiation dominated universe, we have $a(t) tilde t^(1/2)$, or if we choose a time $t_0 $to define $a_0$ we have $a(t) = a_0 (t / t_0)^(1/2)$. Then:
$ 
H = dot(a) / a = 1/(2 t)
$
Finally, we arrive at the relation between temperature and time:
$ 
    T^2 / M_0 = 1/(2 t) quad arrow.r.double quad T = sqrt(M_0 / (2 t))
$<eq:temperaturetime>
Now we can esitimate with real numbers. $g_* $ we can plug in the standard model particles which gives $g_* tilde 100 $, and time of today's universe.
