package livekit_client.dist.src.proto.livekit_rtc;

typedef ISyncState = {
	/**
		last subscribe answer before reconnecting
	**/
	@:optional
	var answer : SessionDescription;
	@:optional
	var subscription : UpdateSubscription;
	var publishTracks : Array<TrackPublishedResponse>;
	var dataChannels : Array<DataChannelInfo>;
	/**
		last received server side offer before reconnecting
	**/
	@:optional
	var offer : SessionDescription;
};