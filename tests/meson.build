testdrive_dep = dependency('test-drive', fallback: ['test-drive', 'testdrive_dep'])

tests = [
  'suite1',
  'suite2',
  # ...
]

test_srcs = files(
  'tester.f90',
)
foreach t : tests
  test_srcs += files('test_@0@.f90'.format(t.underscorify()))
endforeach

tester = executable(
  'tester',
  sources: test_srcs,
  dependencies: [testdrive_dep], # add here my sut later
)

test('all tests', tester)

foreach t : tests
  test(t, tester, args: t)
endforeach
