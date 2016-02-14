//*****************************
// Siege Client settings class
//*****************************
class sgClientSettings expands Object
	config
	perobjectconfig;

var() config float GuiSensitivity; //0-1
var() config float SirenVol; //0-1
var() config string FingerPrint;
var() config bool bUseSmallGui;
var() config bool bNoConstructorScreen;
var() config bool bBuildingLights;
var() config bool bFPnoReplace; //Never replace fingerprint
var() config bool bBuildInfo;
var() config bool bClientIGDropFix;
var() config bool bHighPerformance;
var() config float ScoreboardBrightness;
var() config bool bUseSmallGui;

defaultproperties
{
     GuiSensitivity=0.400000
     SirenVol=1.000000
     bBuildInfo=True
}
