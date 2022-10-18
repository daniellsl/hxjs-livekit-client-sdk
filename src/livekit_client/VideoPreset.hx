package livekit_client;

@:jsRequire("livekit-client", "VideoPreset") extern class VideoPreset {
	function new(width:Float, height:Float, maxBitrate:Float, ?maxFramerate:Float);
	var encoding : VideoEncoding;
	var width : Float;
	var height : Float;
	final resolution : VideoResolution;
	static var prototype : VideoPreset;
}