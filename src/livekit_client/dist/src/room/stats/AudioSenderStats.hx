package livekit_client.dist.src.room.stats;

typedef AudioSenderStats = {
	var type : String;
	/**
		number of packets sent
	**/
	@:optional
	var packetsSent : Float;
	/**
		number of bytes sent
	**/
	@:optional
	var bytesSent : Float;
	/**
		jitter as perceived by remote
	**/
	@:optional
	var jitter : Float;
	/**
		packets reported lost by remote
	**/
	@:optional
	var packetsLost : Float;
	/**
		RTT reported by remote
	**/
	@:optional
	var roundTripTime : Float;
	/**
		ID of the outbound stream
	**/
	@:optional
	var streamId : String;
	var timestamp : Float;
};