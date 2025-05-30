!> @brief Test driver suggested by [test-drive](https://github.com/fortran-lang/test-drive) getting started documentatation
!>
!> @details This is the necesary boiler plate to collect and run the tests.
        
program tester
  use, intrinsic :: iso_fortran_env, only : error_unit
  use testdrive, only : run_testsuite, new_testsuite, testsuite_type
  use test_suite1, only : collect_suite1
  use test_suite2, only : collect_suite2
  implicit none
  integer :: stat, is
  type(testsuite_type), allocatable :: testsuites(:)
  character(len=*), parameter :: fmt = '("#", *(1x, a))'

  stat = 0

  testsuites = [ &
    new_testsuite("suite1", collect_suite1), &
    new_testsuite("suite2", collect_suite2) &
    ]

  do is = 1, size(testsuites)
    write(error_unit, fmt) "Testing:", testsuites(is)%name
    call run_testsuite(testsuites(is)%collect, error_unit, stat)
  end do

  if (stat > 0) then
    write(error_unit, '(i0, 1x, a)') stat, "test(s) failed!"
    error stop
  end if

end program tester
