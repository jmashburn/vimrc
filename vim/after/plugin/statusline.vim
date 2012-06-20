" put fugitive info in statusline if available
if exists('g:loaded_fugitive')
   set statusline=%f\ %m\ (%L\ lines)\ %r\ %=%{fugitive#statusline()}\ (%l,%c)\ %y
else
   set statusline=%<%{StatusFN(0)}%1*%{StatusFN(1)}%m%0*\ %F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [\%03.3b\x10]\ [\%02.2B\x16]\ [LEN=%L]\ %=%04l,%03v\ [%p%%]
   "set statusline=%f\ %m\ (%L\ lines)\ %r\ %=(%l,%c)\ %y
endif
