package livekit_client;

@:jsRequire("livekit-client", "ConnectionState") @:enum extern abstract ConnectionState(String) from String to String {
	var Disconnected;
	var Connecting;
	var Connected;
	var Reconnecting;
}