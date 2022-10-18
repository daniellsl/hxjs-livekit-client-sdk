package livekit_client;

@:jsRequire("livekit-client", "UnexpectedConnectionState") extern class UnexpectedConnectionState extends LivekitError {
	function new(?message:String);
	static var prototype : UnexpectedConnectionState;
}