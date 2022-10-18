package livekit_client.dist.src.api.signalclient;

typedef SignalOptions = {
	var autoSubscribe : Bool;
	@:optional
	var publishOnly : String;
	@:optional
	var adaptiveStream : Bool;
};