package livekit_client.dist.src.room.participant.participanttrackpermission;

typedef ParticipantTrackPermission = {
	/**
		The participant identity this permission applies to.
		You can either provide this or `participantSid`
	**/
	@:optional
	var participantIdentity : String;
	/**
		The participant server id this permission applies to.
		You can either provide this or `participantIdentity`
	**/
	@:optional
	var participantSid : String;
	/**
		Grant permission to all all tracks. Takes precedence over allowedTrackSids.
		false if unset.
	**/
	@:optional
	var allowAll : Bool;
	/**
		The list of track ids that the target participant can subscribe to.
		When unset, it'll allow all tracks to be subscribed by the participant.
		When empty, this participant is disallowed from subscribing to any tracks.
	**/
	@:optional
	var allowedTrackSids : Array<String>;
};