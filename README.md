# Buildsystems for fortran

From fortran-lang.org [resources](https://fortran-lang.org/learn/building_programs/build_tools/) candidates are:

- meson
- scon
- cmake

I will follow the provided tutorial in this project to take an informed decision.

## meson

So far my first experience with it. Looking forward to working with it. I have used ninja before through cmake projects.
meson seams to address key issues I have runned before into from cmake perspective. I think is worth giving it a try.
Here a cool [resources page on how to do X in meson](https://mesonbuild.com/howtox.html).

# Related topics

Outlook to desired features beyond the build system itself.

## Documentation system

From previous experience I stay with [Doxygen]. Its Fortran support is enough for my needs. 

As a vim user I found usefull (thanks to chatgpt) [UltiSnips](https://github.com/SirVer/ultisnips) a great tool. I tried to implement dynamic snippets at could be expanded at runtime depending of the number of parameters of a routine and for functions if it had a return value, but failed to make them run properly. So I stepped back to having single liner snippets to generate and insert this templates as I type the code, here I share an extract of my snippets.fortran file.

```
snippet db "Doxygen brief line" b
!> @brief ${1:Short description}
endsnippet

snippet dp "parameter with direction choice" b
!> @param[${1|in,out,inout|}] ${2:name} ${3:description}
endsnippet

snippet dr "Doxygen return line" b
!> @return ${1:description of return value}
endsnippet

snippet dd "Doxygen details line" b
!> @details ${1:More information.}
endsnippet

snippet de "Doxygen empty comment line."
!>
endsnippet
```

So that while in vim insert mode, in a fortran file (.f90), when I type one of the snippet names and hit `<tab>` I get into SELECT mode and can replace the placeholder text with whatever I want to document, jump around place holders with `<tab>` and backwards with `<Shift-tab>`. For example if I type `dp<tab>` I get my parameter with direction choice snippet expanded, and I can choose, in the first field with 1, 2 or 3 whether in, out or inout stay. Then after `<tab>` I am editing the parameter name, and another `<tab>` and I am in the description field.

Note: hit `<esc>` only at the end when all place holders have been replaced, otherwise, there is no way to reexpand the snippet once out.
