# author: gonzaloolmo19
# It is a wrapper the :make command (also a
# wrapper). It simply changes the makecmd to 'just', runs the :make command 
# and sets makecmd to its default value: 'make'. Effectively, it just runs the
# just command, and shows its output in a new buffer. It can be very useful
# for linting, running, etc. In general, running just commands.

define-command -params .. \
    -docstring %{
        just [<arguments>]: just utility wrapper All the optional arguments
        are forwarded to the just utility
     } just %{ evaluate-commands %sh{
        printf %s\\n "set-option global makecmd 'just'
            execute-keys ':make $@<ret>'
            set-option global makecmd 'make'"
}}
