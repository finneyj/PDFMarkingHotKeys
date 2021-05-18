#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Enabled := 0
KeyDelay := 50
QuestionHeader:= ""

add_mark(MarkValue)
{
    global KeyDelay
    global QuestionHeader

    Click
    Send,^6
    Sleep,KeyDelay
    Send,%QuestionHeader%
    Send,%MarkValue%
    Sleep,KeyDelay
    Send,{Esc}
    return
}

test_add_mark(MarkValue)
{
    global Enabled
    if (Enabled = 1)
        add_mark(MarkValue)
    else
        Send,%MarkValue%
   
   return
}

$^m::
global Enabled
if (Enabled = 0)
   Enabled := 1
else
   Enabled := 0
return

F1::
  global QuestionHeader
  QuestionHeader = Q1:{+}
  return

F2::
  global QuestionHeader
  QuestionHeader = Q2:{+}
  return

F3::
  global QuestionHeader
  QuestionHeader = Q3:{+}
  return

F4::
  global QuestionHeader
  QuestionHeader = Q4:{+}
  return


$`::
global Enabled
if (Enabled = 1)
   add_mark(0`.5)
else
    Send,``
return

$#::
if (Enabled = 1)
{
   Click
   Send,^6
}
else
{
   Send,{#}
}
return

$0::
test_add_mark(0)
return

$1::
test_add_mark(1)
return

$2::
test_add_mark(2)
return

$3::
test_add_mark(3)
return

$4::
test_add_mark(4)
return

$5::
test_add_mark(5)
return

$6::
test_add_mark(6)
return

$7::
test_add_mark(7)
return

$8::
test_add_mark(8)
return

$9::
test_add_mark(9)
return
