package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "ParticipantTracks") extern class ParticipantTracks {
	/**
		participant ID of participant to whom the tracks belong
	**/
	var participantSid : String;
	var trackSids : Array<String>;
}