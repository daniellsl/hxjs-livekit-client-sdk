package livekit_client.dist.src.proto.livekit_rtc;

typedef IJoinResponse = {
	@:optional
	var room : livekit_client.dist.src.proto.livekit_models.Room;
	@:optional
	var participant : livekit_client.dist.src.proto.livekit_models.ParticipantInfo;
	var otherParticipants : Array<livekit_client.dist.src.proto.livekit_models.ParticipantInfo>;
	/**
		deprecated. use server_info.version instead.
	**/
	var serverVersion : String;
	var iceServers : Array<ICEServer>;
	/**
		use subscriber as the primary PeerConnection
	**/
	var subscriberPrimary : Bool;
	/**
		when the current server isn't available, return alternate url to retry connection
		when this is set, the other fields will be largely empty
	**/
	var alternativeUrl : String;
	@:optional
	var clientConfiguration : livekit_client.dist.src.proto.livekit_models.ClientConfiguration;
	/**
		deprecated. use server_info.region instead.
	**/
	var serverRegion : String;
	var pingTimeout : Float;
	var pingInterval : Float;
	@:optional
	var serverInfo : livekit_client.dist.src.proto.livekit_models.ServerInfo;
};