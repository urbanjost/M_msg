program demo_help_command
use M_io,   only : swallow
use M_help, only : help_command
character(len=:),allocatable  :: help_text(:)
integer                        :: position(2)
character(len=128)             :: string
   position=[0,23]
   write(*,'(*(g0))',advance='no')'enter position array>'
   read(*,*)position
   call swallow('app/sample.hlp',help_text)
   do
      write(*,'(*(g0))',advance='no')'enter topic>'
      read(*,'(a)')string
      call help_command(help_text,string,position)
   enddo
   end program demo_help_command
