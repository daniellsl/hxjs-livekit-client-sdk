package livekit_client;

typedef InternalRoomConnectOptions = {
	/**
		autosubscribe to room tracks after joining, defaults to true
	**/
	var autoSubscribe : Bool;
	/**
		use to override any RTCConfiguration options.
	**/
	@:optional
	var rtcConfig : js.html.RTCConfiguration;
	@:optional
	var publishOnly : String;
};