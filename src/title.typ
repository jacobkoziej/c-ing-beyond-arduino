// SPDX-License-Identifier: CC-BY-NC-SA-4.0
//
// Copyright (C) 2025  Jacob Koziej <jacobkoziej@gmail.com>

#import "metadata.typ": author, description, title, version

#page[
  #set text(size: 14pt)
  #set align(top + right)

  #let width = 80%

  #v(2em)
  #heading[#text(size: 1.5em)[#emph[#title]]]
  #v(0.1em)
  #text(size: 0.8em)[#smallcaps[#description]]
  #v(-0.5em)
  #line(length: width, stroke: 0.1em)
  #v(-0.7em)
  #box(width: width)[
    #set align(left)
    #set text(size: 0.5em)
    #raw(version)
  ]
  #v(-1.2em)
  #smallcaps[#author]
]
