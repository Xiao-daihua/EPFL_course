#import "../env/lib.typ": *

= Lecture 8: Baryogenesis and Dark Matter

Before the BBN process, we need to first have a lot of baryons in the
universe. In cosmology we initially assume that:

- There are equal number of baryons and anti-baryons in the early
    universe.

Thus it is clear that in the early universe, there should be a process
of:

+ Bayongenesis: the number of baryons and anti-baryons are not equal,
    there exist a:
    $
        (Delta n)/n <<1
    $
+ Baryons and anti-baryons annihilate each other, and only a small
    fraction of baryons survive after the annihilation process.


This process is currently not well tested, however, we can still talk
about some of the theoretical models of baryogenesis.

== General Picture

=== General Picture of Baryogenesis

A modern assumed picture of the process is as follows:

- At $T>> 1 "GeV"$ we have baryon symmetry:
$
    n_B tilde n_(overline(B)) tilde n_gamma tilde T^3
$

- Then some process of baryogenesis happens, that makes:
$
    (Delta n)/ n_B tilde eta_B tilde 10^(-10)
$
and now the asymetry is fixed and baryon number
$Delta n = n_B - n_(overline(B))$.

- Finally, the baryons and anti-baryons annihilate each other, and
    only a small fraction of baryons survive after the annihilation
    process.

#figure(
    image("../assets/baryongen.png", width: 50%),
    caption: [A picture of the process of baryogenesis.],
) <fig-baryongen>


=== Sakharov's Conditions

There are several conditions for baryogenesis to happen, which are
called the Sakharov's conditions:

+ *Baryon number violation*: there must be some process that violates
    the baryon number, otherwise we cannot generate a baryon
    asymmetry.

+ *C and CP violation*: there must be some process that violates the C
    and CP symmetries.

+ *Departure from thermal equilibrium*: there must be some process
    that takes place out of thermal equilibrium, otherwise the baryon
    asymmetry will be washed out by the inverse process.

We then can see that the *standard model* is a good candidate for
baryogenesis, since it has all the three conditions.

== Baryongenesis Process

A fact is that the *standard model* statisfies all three Sakharov's
conditions, thus it is a good candidate for baryogenesis.

=== Sphaleron Process

Naively, the standard model preserved baryon number. In reality we
didn't see any protons decay.

- Indeed, perturbatively, the standard model preserved baryon number

- However, there are non-perturbative processes that violate baryon
    number, which are called the *sphaleron* processes.

The decay rate of the sphaleron process is given by:
$
    Gamma_("sph") tilde e^(-E_("sph") slash T ) quad E_("sph") tilde 100 "GeV"
$
we can see that at low temperture, the sphaleron process is highly
suppressed, however, at high temperture, the sphaleron process can be
very efficient.

Naively, we see a process of violating baryon number. However, if we
look deeper, it has the opposite effect we want, if we generate a
baryon asymetry throught whatever process, the sphaleron process will
wash out the baryon asymmetry.

- However, in SM $B-L$ is an exact symmetry, thus if some process
    generates a non-zero $B-L$ asymmetry, then the sphaleron process
    will not wash out the baryon asymmetry.
#remark[
    Note that $B$ here is baryon number $B = n_B - n_(overline(B))$
    and $L$ is lepton number $L = n_L - n_(overline(L))$.
]
Thus a crutial point of having baryongenesis to survive the sphaleron
process is to have a non-zero $B-L$ asymmetry. There are several
models of baryogenesis

+ *Beyond SM*: A common assumption is to add heavy particles in SM
    that can decay in a way that violates $B-L$ symmetry, thus
    generating a non-zero $B-L$ asymmetry.

+ *Within SM*: there is a possibility of generating a non-zero $B-L$
    asymmetry within the standard model, which is called the
    *electroweak baryogenesis*.

#remark([
    However, this is based on some assumptions that didn't really hold
    in reality, thus it is not a very good model of baryogenesis.
])


=== Electroweak Baryogenesis

This mechanism is based on a "wrong" assumption that the electroweak
phase transition is a first order phase transition, which is not the
case in reality.

However, if so, then

=== Residue of Antibaryons



