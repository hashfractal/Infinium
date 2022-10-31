Scriptname zxInfinium extends ObjectReference

message property addmenu auto
message property submenu auto
spell property bookspell auto
float mag = 0.0

Actor Infiniumactor

Event OnEquipped(Actor akActor)
  if akActor == Game.GetPlayer()
    Utility.WaitMenuMode(1.0)
    menu()
    If (mag != 0.00)
      bookspell.SetNthEffectMagnitude(0, mag)
      bookspell.SetNthEffectMagnitude(1, mag)
      bookspell.SetNthEffectMagnitude(2, mag)
      bookspell.cast(akActor, akActor)
    EndIf
  endIf
endEvent

function menu()
  bool mode = true
  
  While (true)
    if (mode)
      int buttonSelection = addmenu.show(mag)
      If (buttonSelection == 0)
        return
      elseIf (buttonSelection == 1)
        mode = false
      elseIf (buttonSelection == 2)
        mag = mag + 1.0
      elseIf (buttonSelection == 3)
        mag = mag + 10.0
      elseIf (buttonSelection == 4)
        mag = mag + 100.0
      elseIf (buttonSelection == 5)
        mag = mag + 1000.0
      elseIf (buttonSelection == 6)
        mag = mag + 10000.0
      elseIf (buttonSelection == 7)
        mag = mag + 100000.0
      elseIf (buttonSelection == 8)
        mag = mag + 1000000.0
      elseIf (buttonSelection == 9)
        mag = 0.0
      endIf
    else
      int buttonSelection = submenu.show(mag)
      If (buttonSelection == 0)
        return
      elseIf (buttonSelection == 1)
        mode = true
      elseIf (buttonSelection == 2)
        mag = mag - 1.0
      elseIf (buttonSelection == 3)
        mag = mag - 10.0
      elseIf (buttonSelection == 4)
        mag = mag - 100.0
      elseIf (buttonSelection == 5)
        mag = mag - 1000.0
      elseIf (buttonSelection == 6)
        mag = mag - 10000.0
      elseIf (buttonSelection == 7)
        mag = mag - 100000.0
      elseIf (buttonSelection == 8)
        mag = mag - 1000000.0
      elseIf (buttonSelection == 9)
        mag = 0.0
      endIf
    endif
  EndWhile
EndFunction