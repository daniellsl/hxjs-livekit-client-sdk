package livekit_client;

/**
	Options for Room.connect()
**/
typedef RoomConnectOptions = {
	/**
		autosubscribe to room tracks after joining, defaults to true
	**/
	@:optional
	var autoSubscribe : Bool;
	/**
		use to override any RTCConfiguration options.
	**/
	@:optional
	var rtcConfig : js.html.RTCConfiguration;
	@:optional
	var publishOnly : String;
};