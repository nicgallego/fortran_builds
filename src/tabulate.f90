!> @brief A simple program that prints in console for the provided range and step x f(x) values for the number of sampling points
!inside the range.
program tabulate
        use user_functions

        implicit none
        real :: x, xbegin, xend
        integer :: i, steps

        write(*,*) 'Please enter the range (begin, end) and the number of steps:'
        read(*,*) xbegin, xend, steps

        do i = 0, steps
                x = xbegin + i * (xend - xbegin)/ steps
                write(*, '(2f10.4)') x, f(x)
        end do
end program
