************************************************************************************************
* Based on Microsoft Knowledge Base Articles 94927, 210590
*
* THIS SOFTWARE IS PROVIDED "AS IS" WITHOUT EXPRESS OR IMPLIED WARRANTY. ALL 
* IMPLIED WARRANTIES OF FITNESS FOR ANY PARTICULAR PURPOSE ARE HEREBY DISCLAIMED.
*
************************************************************************************************
* Function to Convert from Twips to Pixels
*
* Parameters:  
*     pnTwips        Value to convert to pixels
*     pcDirection    Screen direction; 'H' for horizontal and 'V' for vertical
*
* Returns:
*     Pixels value
*
FUNCTION GKKTwipsToPixels
LPARAMETERS tnTwips, tcDirection
LOCAL lhDeviceHdl, lnPixelsPerInch
#DEFINE LOGPIXELSX  88
#DEFINE LOGPIXELSY  90
lhDeviceHdl = apiGetDC(0)
DO CASE
	CASE tcDirection = "H"        && Horizontal
		lnPixelsPerInch = apiGetDeviceCaps(lhDeviceHdl,LOGPIXELSX)
	CASE tcDirection = "V"        && Vertical
		lnPixelsPerInch = apiGetDeviceCaps(lhDeviceHdl,LOGPIXELSY)
ENDCASE
lhDeviceHdl = apiReleaseDC(0,lhDeviceHdl)
RETURN tnTwips / 1440 * lnPixelsPerInch
ENDFUNC