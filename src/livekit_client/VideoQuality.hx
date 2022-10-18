package livekit_client;

@:jsRequire("livekit-client", "VideoQuality") @:enum extern abstract VideoQuality(Int) from Int to Int {
	var LOW;
	var MEDIUM;
	var HIGH;
	var OFF;
	var UNRECOGNIZED;
}