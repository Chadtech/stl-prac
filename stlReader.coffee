fs  = require 'fs'
_   = require 'lodash'
stl = require 'stl'


shape = [
  {
    normal: [0, 0, 0]
    verts: [
      [0, 0, 0]   # A
      [5, 0, 0]   # B
      [2.5, 0, 5] # C
    ]
  }

  {
    normal: [0, 0, 0]
    verts: [
      [0, 0, 0]   # A
      [5, 0, 0]   # B
      [2.5, 5, 0] # D
    ]
  }

  {
    normal: [0, 0, 0]
    verts: [
      [0, 0, 0]   # A
      [2.5, 5, 0] # D
      [2.5, 0, 5] # C
    ]
  }

  {
    normal: [0, 0, 0]
    verts: [
      [5, 0, 0]   # B
      [2.5, 0, 5] # C
      [2.5, 5, 0] # D
    ]
  }

]

shape =
  description:  'ye its shape'
  facets:       shape

fs.writeFileSync 'shape1.stl', (stl.fromObject shape, false)






