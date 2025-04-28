module test_suite1
  use testdrive, only : new_unittest, unittest_type, error_type, check, test_failed
  implicit none
  private

  public :: collect_suite1

contains

!> Collect all exported unit tests
subroutine collect_suite1(testsuite)
  !> Collection of tests
  type(unittest_type), allocatable, intent(out) :: testsuite(:)

  testsuite = [ &
    new_unittest("valid", test_valid), &
    new_unittest("invalid", test_invalid, should_fail=.true.) &
    ]

end subroutine collect_suite1

!> @brief @test an example of a valid condition
subroutine test_valid(error)
  type(error_type), allocatable, intent(out) :: error
  call check(error, 1 + 2 == 3)
  if (allocated(error)) return

  ! equivalent to the above
  call check(error, 1 + 2, 3)
  if (allocated(error)) return

end subroutine test_valid

!> @brief @test an example of an invalid condition
subroutine test_invalid(error)
  type(error_type), allocatable, intent(out) :: error
  call test_failed(error, "Test failed", "additional context")
end subroutine test_invalid

end module test_suite1
