package livekit_client;

@:jsRequire("livekit-client", "LogLevel") @:enum extern abstract LogLevel(Int) from Int to Int {
	var trace;
	var debug;
	var info;
	var warn;
	var error;
	var silent;
}