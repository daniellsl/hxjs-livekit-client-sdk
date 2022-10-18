package livekit_client.dist.src.room.stats;

typedef AudioReceiverStats = {
	var type : String;
	@:optional
	var concealedSamples : Float;
	@:optional
	var concealmentEvents : Float;
	@:optional
	var silentConcealedSamples : Float;
	@:optional
	var silentConcealmentEvents : Float;
	@:optional
	var totalAudioEnergy : Float;
	@:optional
	var totalSamplesDuration : Float;
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