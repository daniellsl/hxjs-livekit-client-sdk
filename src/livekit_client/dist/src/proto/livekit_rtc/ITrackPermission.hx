package livekit_client.dist.src.proto.livekit_rtc;

typedef ITrackPermission = {
	/**
		permission could be granted either by participant sid or identity
	**/
	var participantSid : String;
	var allTracks : Bool;
	var trackSids : Array<String>;
	var participantIdentity : String;
};