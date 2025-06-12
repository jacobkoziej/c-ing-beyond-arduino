# SPDX-License-Identifier: MPL-2.0

ciba = custom_target(
  'c-ing-beyond-arduino.d',
  output : 'c-ing-beyond-arduino.pdf',
  input : 'c-ing-beyond-arduino.typ',
  depfile: 'c-ing-beyond-arduino.d',
  build_by_default : true,
  command : [
    typst,
    'compile',
    '--make-deps',
    '@DEPFILE@',
    '@INPUT@',
    '@OUTPUT@',
  ],
)
