
formattedSmallChair = []
for character in smallChair
  switch character
    when '\n' then break
    when ' ' then break
    else formattedSmallChair.push character

smallChair = []
for characterIndex in [ 0 .. formattedSmallChair.length - 1 ] by 1
  if (characterIndex % 2) is 0
    smallChair.push formattedSmallChair[ characterIndex ]
  else
    smallChair[ characterIndex // 2 ] += formattedSmallChair[ characterIndex ]

# console.log smallChair

# time = 0
# while time < 80


smallChair = _.map smallChair, (character) ->
  String.fromCharCode (parseInt character, 16)

smallChair = _.reduce smallChair, (memo, character) ->
  memo += character

console.log smallChair




# StlReader = require 'stl-reader'
# StlReader = new StlReader()

# toArrayBuffer = (buffer) ->
#   ab    = new ArrayBuffer buffer.length
#   view  = new Uint8Array(ab)

#   for index in [ 0 .. buffer.length - 1 ] by 1
#     view[ index ] = buffer[ index ]

#   ab

# fs.readFile 'smallChair.stl', (err, data) ->

#   StlReader.read toArrayBuffer(data), (vn, v, n) ->

#     console.log v