package livekit_client;

@:jsRequire("livekit-client", "ConnectionError") extern class ConnectionError extends LivekitError {
	function new(?message:String);
	static var prototype : ConnectionError;
}