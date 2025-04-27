!> @brief provide a function f to used in the tabulation, for demostration
module user_functions
        implicit none
contains

!> @brief f(x) = x - x^2 + sin(x), just a function to demostrate.
!> @param[in] x real value, no range restriction
!> @return f, the result of the above described computation.
real function f ( x )
        real, intent(in) :: x
        f = x - x**2 + sin(x)
end function f

end module user_functions
