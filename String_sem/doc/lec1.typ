#import "../env/lib.typ": *

= Preliminary: Functional Formalism

In this section, we will discuss a functional formulation of quantum theory,
which is the basis of the path integral approach to quantum field theory. The
contents mainly follow the book @srednickiQuantumFieldTheory2007 and
@difrancescoConformalFieldTheory1997.

In quantum field theory we mainly care about the transition amplitude between
states and with operators inserted, which are called the correlation functions.
Among all correlation functions, we mainly care about transition amplitudes
between ground states with operators inserted:
$
  angle.l 0|cal(T) O(x_1) dots O(x_n)|0 angle.r
$
It is proven that the correlation functions are related to the scattering
amplitudes of particles, through the LSZ reduction formula. Therefore, the
correlation functions are one of the main objects of interest in quantum field
theory.

Apart from the canonical quantization approach, there exist another approach in
quantum theory, which makes the calculation of correlation functions more
convenient. This approach is called the path integral approach, which is the
main topic of this lecture.

== Quantum Mechanics Path Integral

To formulate the path integral approach, we start with one dimensional quantum
mechanic system with a standard non-relativistic Hamiltonian:
$ H = p^2/(2 m) + V(x) $
and focus on the standard translation amplitude between two position eigen
states, then we generalize it to case with operator insertions and transition
amplitude between vaccum states, and finally we will generalize it to quantum
field theory.

=== Translation Amplitude as Functional Integral

We try to calculate the translation amplitude between two position eigen states
$|x angle.r$ and $|x' angle.r$, by definition the translation amplitude is:
- *Schrodinger Picture :* with $|x angle.r$ as eigen state of position operator,
  we have:
$ angle.l x'|e^(- i H t)|x angle.r $
- *Heisenberg Picture :* with $|x,t angle.r$ as eigen state of position operator
  $x(t)$ at time $t$, we have:
$ angle.l x', t|x, 0 angle.r $
These two definitions are equivalent, its only a matter of choice of picture.
#remark([
  In fact we can prove that $|x,t angle.r = e^(i H t)|x angle.r$, thus
  directly see the equivalence of the two definitions.
])
The discussion in this subsection is straightforward in schrodinger picture,
thus we will mainly work in schrodinger picture in this subsection.

We want to transform this operator expession into a functional integral, thus we
need to insert complete set of states to make operators into c-numbers. The
trick is as follows:

- #highlight[Step 1]: devide time interval into $N$ small intervals
  $t = sum_(i=1)^N delta t$ and then insert complete set of states in each
  small interval:
$
  angle.l x'|e^(- i H t)|x angle.r &= angle.l x'|e^(- i H delta t) e^(- i H delta t) dots e^(- i H delta t)|x angle.r \
  &= integral product_(i=1)^(N-1) d x_i angle.l x'|e^(- i H delta t)|x_(N-1) angle.r angle.l x_(N-1)|e^(- i H delta t)|x_(N-2) angle.r dots angle.l x_1|e^(- i H delta t)|x angle.r
$<initpathinte>
- #highlight([Step 2]): evaluate each infinitesimal translation amplitude
  $angle.l x_(i+1)|e^(- i H delta t)|x_i angle.r$ we notice that:
$
  e^( - i H delta t) = e^(- i p^2/(2 m) delta t) e^(- i V(x) delta t) e^(O\(delta t^2\))
$
#remark[
  The above formula is a consequence of the Baker-Campbell-Hausdorff formula,
  which states that for two operators $A$ and $B$, we have:
  $
    e^(A + B) = e^A e^B e^(-1/2 [A, B])dots
  $
]
Then we insert complete set of momentum eigen states $|p angle.r$:
$
  angle.l x_(i+1)|e^(- i H delta t)|x_i angle.r &= integral (d p_i)/(2 pi) angle.l x_(i+1)|e^(-i delta t p^2/(2 m) )|p_i angle.r angle.l p_i|e^(- i delta t V(x))|x_i angle.r \
  &= integral (d p_i)/(2 pi) exp[ i p_i (x_(i+1) - x_i) - i (p_i^2/(2 m) + V(x_i)) delta t ]
$
If we do this for each term in @initpathinte, we will get:
$
  angle.l x'|e^(- i H t)|x angle.r = integral_(x(0) = x)^(x(t) = x') (product_(i=1)^(N-1) d x_i product_(j = 0)^(N-1) (d p_j)/(2 pi)) exp[ i sum_(i=0)^(N-1) (p_i (x_(i+1) - x_i) - (p_i^2/(2 m) + V(x_i)) delta t ) ]
$

- #highlight[Step 3]: then we integrate out $p_i$. This is a gaussian integral,
  thus we can get:
$
  angle.l x'|e^(- i H t)|x angle.r = integral_(x(0) = x)^(x(t) = x') (product_(i=1)^(N-1) d x_i f(delta t, m)) exp[ i sum_(i=0)^(N-1) (m/2 ((x_(i+1) - x_i)/delta t)^2 - V(x_i)) delta t ]
$
where $f(delta t, m)$ is caused by the gaussian integral.

#remark[
  In some contexts eg. Lattice field theory, we mainly don't integrate out
  $p_i$ and keep the path integral formula in terms of both $x$ and $p$.
]

- #highlight([Step 4]): we take the limit of $N arrow.r infinity$ and
  $delta t arrow.r 0$, then we can get the final path integral formula:
$
  angle.l x'|e^(- i H t)|x angle.r = integral_(x(0) = x)^(x(t) = x') cal(D)x exp[ i integral_0^t d t (m/2 dot(x)^2 - V(x)) ]
$
Where we define the measure of the path integral as:
$
  cal(D)x = lim_(N arrow.r infinity) (product_(i=1)^(N-1) d x_i f(delta t, m))
$
Moreover, we notice that the exponent in the path integral is just the action of
the system, thus we can write the path integral formula in a more compact way:
$
  angle.l x'|e^(- i H t)|x angle.r = integral_x^(x') cal(D)x exp(i S[x])
$
#remark[
  Notice that the path integral measure is in fact a mathematically
  ill-defined object. Yet to make it physical meaningful, we have to impose
  some physical conditions on it.
]

=== Correlation Functions as Functional Integral

Correlation functions are transition amplitudes with time ordered operator
insertions, in Heisenberg picture, we can write the correlation functions as:
$
  angle.l x',t'|cal(T) O(t_1) dots O(t_n)|x,t angle.r
$

#YL([to be continued])

=== Generating Functional and Functional Derivative

Generating functional is a very useful tool to calculate correlation functions
in quantum theory. We define a generating functional as the transition amplitude
of a slitely modified theory:
$
  H(p,x) arrow.r H(p,x) - J(t) x(t)
$
If we repeat the same procedure as in the previous section, we can get the path
integral formula for the generating functional:
$
  Z[J] = integral_x^(x') cal(D)x exp[ i integral_0^t d t (L + J(t)x(t)) ]
$
Then we can see that the correlation functions can be calculated by taking
functional derivatives of the generating functional:

=== Euclidean path integral


== Free Real Scalar Field Path Integral

== Quantum Conservation and Ward identity

== Dirac Field Path Integral

== Non-Abelian Gauge Theory Path Integral


