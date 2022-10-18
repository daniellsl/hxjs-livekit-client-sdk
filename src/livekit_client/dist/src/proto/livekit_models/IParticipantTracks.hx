package livekit_client.dist.src.proto.livekit_models;

typedef IParticipantTracks = {
	/**
		participant ID of participant to whom the tracks belong
	**/
	var participantSid : String;
	var trackSids : Array<String>;
};