#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [GR 2 Lecture Note],
    author: [Note taken by: Yu Liu],
    abstract: [This is the lecture note of the GR 2 course in EPFL 2026 spring
        semester. Mainly covering the topics in cosmology],
)

#pagebreak()
#include "doc/lec1.typ"

#pagebreak()
#include "doc/lec2.typ"

#pagebreak()
#include "doc/lec3.typ"

#pagebreak()
#include "doc/lec4.typ"

#pagebreak() 
#include "doc/lec5.typ"

#pagebreak()
#include "doc/lec6.typ"

#pagebreak()
#bibliography("references.bib")

