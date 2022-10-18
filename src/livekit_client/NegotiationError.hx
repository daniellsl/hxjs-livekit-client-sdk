package livekit_client;

@:jsRequire("livekit-client", "NegotiationError") extern class NegotiationError extends LivekitError {
	function new(?message:String);
	static var prototype : NegotiationError;
}