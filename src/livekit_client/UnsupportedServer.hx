package livekit_client;

@:jsRequire("livekit-client", "UnsupportedServer") extern class UnsupportedServer extends LivekitError {
	function new(?message:String);
	static var prototype : UnsupportedServer;
}