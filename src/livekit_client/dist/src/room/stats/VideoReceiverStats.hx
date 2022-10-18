package livekit_client.dist.src.room.stats;

typedef VideoReceiverStats = {
	var type : String;
	var framesDecoded : Float;
	var framesDropped : Float;
	var framesReceived : Float;
	@:optional
	var frameWidth : Float;
	@:optional
	var frameHeight : Float;
	@:optional
	var firCount : Float;
	@:optional
	var pliCount : Float;
	@:optional
	var nackCount : Float;
	@:optional
	var decoderImplementation : String;
	@:optional
	var jitterBufferDelay : Float;
	/**
		packets reported lost by remote
	**/
	@:optional
	var packetsLost : Float;
	/**
		number of packets sent
	**/
	@:optional
	var packetsReceived : Float;
	@:optional
	var bytesReceived : Float;
	@:optional
	var streamId : String;
	@:optional
	var jitter : Float;
	var timestamp : Float;
};