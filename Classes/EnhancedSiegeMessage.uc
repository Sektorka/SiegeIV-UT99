//=============================================================================
// EnhancedSiegeMessage.
//=============================================================================
class EnhancedSiegeMessage expands CriticalEventPlus;

var() string MessageText;
var() color MessageColor;
var() sound AlertSound;

static function color GetColor(
  optional int Switch,
  optional PlayerReplicationInfo RelatedPRI_1, 
  optional PlayerReplicationInfo RelatedPRI_2)
{
	return Default.MessageColor;
}

static function string GetString(
  optional int Switch,
  optional PlayerReplicationInfo RelatedPRI_1, 
  optional PlayerReplicationInfo RelatedPRI_2,
  optional Object OptionalObject)
{
	return Default.MessageText;
}

static simulated function ClientReceive( 
  PlayerPawn P,
  optional int Switch,
  optional PlayerReplicationInfo RelatedPRI_1, 
  optional PlayerReplicationInfo RelatedPRI_2,
  optional Object OptionalObject)
{
	Super.ClientReceive(P, Switch, RelatedPRI_1, RelatedPRI_2, OptionalObject);
    P.PlaySound(Default.AlertSound,, 4.0);
}

defaultproperties
{
     MessageText="耨Ì"
     MessageColor=(G=255)
     AlertSound=Sound'PickUpRespawn'
}
