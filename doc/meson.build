doxygen = find_program('doxygen', required: true)
doxyfile = files('Doxyfile')

doxygen_target = custom_target(
  'doc',
  input: doxyfile,
  output: 'html',
  command: [doxygen, '@INPUT@'],
  build_by_default: false
)
