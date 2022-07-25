%module altsdk

// %feature("flatnested");

%{
#include "CRefCountable.h"

#include "types/Types.h"
#include "types/RGBA.h"
// #include "types/Array.h"
// #include "types/MValue.h"

#include "objects/IBaseObject.h"
#include "objects/IWorldObject.h"
#include "objects/IEntity.h"
#include "objects/IPlayer.h"
#include "objects/IVehicle.h"

#include "script-objects/ICheckpoint.h"
#include "script-objects/IBlip.h"
#include "script-objects/IVoiceChannel.h"
#include "script-objects/IHttpClient.h"

#include "events/CEvent.h"
#include "events/CServerScriptEvent.h"
#include "events/CClientScriptEvent.h"
#include "events/CPlayerConnectEvent.h"
#include "events/CPlayerDisconnectEvent.h"
#include "events/CPlayerDamageEvent.h"
#include "events/CPlayerDeathEvent.h"
#include "events/CColShapeEvent.h"
#include "events/CPlayerEnterVehicleEvent.h"
#include "events/CPlayerLeaveVehicleEvent.h"
#include "events/CPlayerChangeVehicleSeatEvent.h"
#include "events/CDataNodeReceivedEvent.h"
#include "events/CRemoveEntityEvent.h"
#include "events/CConsoleCommandEvent.h"
#include "events/CWeaponDamageEvent.h"
#include "events/CExplosionEvent.h"
#include "events/CResourceStartEvent.h"
#include "events/CResourceStopEvent.h"
#include "events/CResourceErrorEvent.h"
#include "events/CSyncedMetaDataChangeEvent.h"
#include "events/CStreamSyncedMetaDataChangeEvent.h"
#include "events/CGlobalMetaDataChangeEvent.h"
#include "events/CGlobalSyncedMetaDataChangeEvent.h"
#include "events/CLocalMetaDataChangeEvent.h"
#include "events/CVehicleDestroyEvent.h"
#include "events/CCreateBaseObjectEvent.h"
#include "events/CRemoveBaseObjectEvent.h"
#include "events/CFireEvent.h"
#include "events/CStartProjectileEvent.h"
#include "events/CPlayerWeaponChangeEvent.h"
#include "events/CVehicleAttachEvent.h"
#include "events/CVehicleDetachEvent.h" 
#include "events/CNetOwnerChangeEvent.h" 
#include "events/CPlayerEnteringVehicleEvent.h"
#include "events/CVehicleDamageEvent.h" 
#include "events/CPlayerBeforeConnectEvent.h"
#include "events/CConnectionQueueAddEvent.h"
#include "events/CConnectionQueueRemoveEvent.h"
#include "events/CPlayerRequestControlEvent.h"
#include "events/CPlayerChangeAnimationEvent.h"
#include "events/CPlayerChangeInteriorEvent.h"

#include "IPackage.h"
#include "IResource.h"
#include "IScriptRuntime.h"

#include "ICore.h"
%}

%include <std_string.i>
%include <stdint.i>
%include <std_vector.i>

%include "CRefCountable.h"

%include alt_array.i
%include alt_mvalue.i

%include "types/Types.h"
%include "types/RGBA.h"
// %include "types/Array.h"
// %include "types/MValue.h"

%include "objects/IBaseObject.h"
%include "objects/IWorldObject.h"
%include "objects/IEntity.h"
%include "objects/IPlayer.h"
%include "objects/IVehicle.h"

%include "script-objects/ICheckpoint.h"
%include "script-objects/IBlip.h"
%include "script-objects/IVoiceChannel.h"
%feature("flatnested");
%include "script-objects/IHttpClient.h"
%feature("flatnested", "");

%include "events/CEvent.h"
%include "events/CServerScriptEvent.h"
%include "events/CClientScriptEvent.h"
%include "events/CPlayerConnectEvent.h"
%include "events/CPlayerDisconnectEvent.h"
%include "events/CPlayerDamageEvent.h"
%include "events/CPlayerDeathEvent.h"
%include "events/CColShapeEvent.h"
%include "events/CPlayerEnterVehicleEvent.h"
%include "events/CPlayerLeaveVehicleEvent.h"
%include "events/CPlayerChangeVehicleSeatEvent.h"
%include "events/CDataNodeReceivedEvent.h"
%include "events/CRemoveEntityEvent.h"
%include "events/CConsoleCommandEvent.h"
%include "events/CWeaponDamageEvent.h"
%include "events/CExplosionEvent.h"
%include "events/CResourceStartEvent.h"
%include "events/CResourceStopEvent.h"
%include "events/CResourceErrorEvent.h"
%include "events/CSyncedMetaDataChangeEvent.h"
%include "events/CStreamSyncedMetaDataChangeEvent.h"
%include "events/CGlobalMetaDataChangeEvent.h"
%include "events/CGlobalSyncedMetaDataChangeEvent.h"
%include "events/CLocalMetaDataChangeEvent.h"
%include "events/CVehicleDestroyEvent.h"
%include "events/CCreateBaseObjectEvent.h"
%include "events/CRemoveBaseObjectEvent.h"
%feature("flatnested");
%include "events/CFireEvent.h"
%feature("flatnested", "");
%include "events/CStartProjectileEvent.h"
%include "events/CPlayerWeaponChangeEvent.h"
%include "events/CVehicleAttachEvent.h"
%include "events/CVehicleDetachEvent.h" 
%include "events/CNetOwnerChangeEvent.h" 
%include "events/CPlayerEnteringVehicleEvent.h"
%include "events/CVehicleDamageEvent.h" 
%include "events/CPlayerBeforeConnectEvent.h"
%include "events/CConnectionQueueAddEvent.h"
%include "events/CConnectionQueueRemoveEvent.h"
%include "events/CPlayerRequestControlEvent.h"
%include "events/CPlayerChangeAnimationEvent.h"
%include "events/CPlayerChangeInteriorEvent.h"

%feature("flatnested");
%include "IPackage.h"
%feature("flatnested", "");
%include "IResource.h"
%include "IScriptRuntime.h"

%include "ICore.h"