package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "RTPStats") extern class RTPStats {
	@:optional
	var startTime : js.lib.Date;
	@:optional
	var endTime : js.lib.Date;
	var duration : Float;
	var packets : Float;
	var packetRate : Float;
	var bytes : Float;
	var headerBytes : Float;
	var bitrate : Float;
	var packetsLost : Float;
	var packetLossRate : Float;
	var packetLossPercentage : Float;
	var packetsDuplicate : Float;
	var packetDuplicateRate : Float;
	var bytesDuplicate : Float;
	var headerBytesDuplicate : Float;
	var bitrateDuplicate : Float;
	var packetsPadding : Float;
	var packetPaddingRate : Float;
	var bytesPadding : Float;
	var headerBytesPadding : Float;
	var bitratePadding : Float;
	var packetsOutOfOrder : Float;
	var frames : Float;
	var frameRate : Float;
	var jitterCurrent : Float;
	var jitterMax : Float;
	var gapHistogram : Array<Float>;
	var nacks : Float;
	var nackAcks : Float;
	var nackMisses : Float;
	var nackRepeated : Float;
	var plis : Float;
	@:optional
	var lastPli : js.lib.Date;
	var firs : Float;
	@:optional
	var lastFir : js.lib.Date;
	var rttCurrent : Float;
	var rttMax : Float;
	var keyFrames : Float;
	@:optional
	var lastKeyFrame : js.lib.Date;
	var layerLockPlis : Float;
	@:optional
	var lastLayerLockPli : js.lib.Date;
}