package livekit_client;

typedef ConnectOpts = {
	var autoSubscribe : Bool;
	/**
		internal
	**/
	@:optional
	var reconnect : Bool;
	/**
		internal
	**/
	@:optional
	var sid : String;
	@:optional
	var publishOnly : String;
	@:optional
	var adaptiveStream : Bool;
};