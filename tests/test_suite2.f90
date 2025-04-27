module test_suite2
        use testdrive, only: new_unittest, unittest_type, error_type, check
        implicit none
        private

        public :: collect_suite2

contains

!> @brief collect exported unit tests
!> @param[out] testsuite array of unit tests provided by this module
!> @details NOTE: make sure to append new unit tests to this list
subroutine collect_suite2(testsuite)
        type(unittest_type), allocatable, intent(out) :: testsuite(:)

        testsuite [ &
                new_unittest("valid", dummy_test), &
                new_unittest("invalid", invalid_dummy, should_fail=.true.) &
                ]

end subroutine collect_suite2

subroutine dummy_test(error)
        type(error_type), allocatable, intent(out) :: error
        call check(error, (-1)**2, 1)
        if (allocated(error) return
end subroutine dummy_test

subroutine invalid_dummy(error)
        type(error_type), allocatable, intent(out) :: error
        call check(error, (-1)**3, 1)
        if (allocated(error) return
end module test_suite2
