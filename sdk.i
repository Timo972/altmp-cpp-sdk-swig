%module altsdk

// %feature("flatnested");
%define ALT_SERVER_API
%enddef

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
namespace std {
    // using namespace alt;
    %template(vectorstr) vector<string>;
    %template(vectorv2f) vector<Vector2f>;
    %template(vectorrefplayer) vector<Ref<alt::IPlayer>>;
    %template(vectorptrresource) vector<alt::IResource*>;
}

%include "CRefCountable.h"

/*%include alt_ref.i
%template(wrefplayer) alt::Ref<alt::IPlayer>;
%template(wrefaltentity) alt::Ref<alt::IEntity>;
%template(wrefvehicle) alt::Ref<alt::IVehicle>;
%template(wrefbaseobject) alt::Ref<alt::IBaseObject>;

%template(refentity) alt::RefBase<RefStore<alt::IEntity>>;
%template(refplayer) alt::RefBase<RefStore<alt::IPlayer>>;
%template(refbaseobject) alt::RefBase<RefStore<alt::IBaseObject>>;
%template(refvehicle) alt::RefBase<RefStore<alt::IVehicle>>;

%template(refstoreentity) RefStore<alt::IEntity>;
%template(refstoreplayer) RefStore<alt::IPlayer>;
%template(refstorevehicle) RefStore<alt::IVehicle>;
%template(refstorebaseobject) RefStore<alt::IBaseObject>;*/
%include alt_array.i
namespace alt {
%template(arrayrefplayer) Array<Ref<alt::IPlayer>>;
%template(arrayrefentity) Array<Ref<alt::IEntity>>;
%template(arrayrefvehicle) Array<Ref<alt::IVehicle>>;
%template(arrayrefblip) Array<Ref<alt::IBlip>>;
%template(arrayperm) Array<Permission>;
%template(arrayuint8) Array<uint8_t>;
%template(arraystr) Array<std::string>;
%template(arrayfireinfo) Array<alt::CFireEvent::FireInfo>;
%template(arrayuint32) Array<uint32_t>;
%template(arrayweapon) Array<Weapon>;
%template(arraymvalueconst) Array<ConstRef<alt::IMValue>>;
}
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