**
FUNCTION GKCWMSGBOX
LPARAMETERS PCMESSAGE, PCTITLE, PNBUTTONS, PCICON
LOCAL LNBUTTON
IF TYPE('pcIcon')='L'
PCICON = 'EXCLAIM'
ENDIF
LNBUTTON = 0
DO FORM GKCMsgBox TO LNBUTTON WITH PCMESSAGE, PCTITLE, PNBUTTONS, PCICON
RETURN LNBUTTON
ENDFUNC
**