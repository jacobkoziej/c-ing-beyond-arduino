# SPDX-License-Identifier: MPL-2.0

version_typ = vcs_tag(
  input : 'version.typ.in',
  output : 'version.typ',
  fallback : 'v' + meson.project_version(),
  replace_string : '@VERSION@',
  command : [
    git,
    'describe',
    '--always',
    '--broken',
    '--dirty',
    '--tags',
  ],
)

ciba = custom_target(
  'c-ing-beyond-arduino.d',
  output : 'c-ing-beyond-arduino.pdf',
  input : 'c-ing-beyond-arduino.typ',
  depfile : 'c-ing-beyond-arduino.d',
  depends : [
    version_typ,
  ],
  build_by_default : true,
  command : [
    typst,
    'compile',
    '--root',
    '/',
    '--input',
    'build_dir=' + meson.current_build_dir() + '/',
    '--make-deps',
    '@DEPFILE@',
    '@INPUT@',
    '@OUTPUT@',
  ],
)
