#pragma once

#pragma once

#include "CEvent.h"
#include "../Ref.h"
#include "../objects/IPlayer.h"

namespace alt
{
	class CPlayerChangeInteriorEvent : public CEvent
	{
	public:
		CPlayerChangeInteriorEvent(Ref<IPlayer> _target, uint32_t _oldInteriorLocation, uint32_t _newInteriorLocation) :
			CEvent(Type::PLAYER_CHANGE_INTERIOR_EVENT),
			target(_target),
			oldInteriorLocation(_oldInteriorLocation),
			newInteriorLocation(_newInteriorLocation)
		{}

		Ref<IPlayer> GetTarget() const { return target; }
		uint32_t GetOldInteriorLocation() const { return oldInteriorLocation; }
		uint32_t GetNewInteriorLocation() const { return newInteriorLocation; }

	private:
		Ref<IPlayer> target;
		uint32_t oldInteriorLocation;
		uint32_t newInteriorLocation;
	};
}

