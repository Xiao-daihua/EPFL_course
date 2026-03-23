#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [QFT 2 Lecture Note],
    author: [Yu Liu],
    abstract: [This is a lecture note of the QFT 2 course in EPFL ],
)

#pagebreak()
#include "doc/lec1.typ"

#pagebreak()
#include "doc/lec2.typ"

#pagebreak()
#include "doc/lec3.typ"


#pagebreak()
#bibliography("references.bib")

