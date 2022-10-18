package livekit_client;

@:jsRequire("livekit-client", "TrackInvalidError") extern class TrackInvalidError extends LivekitError {
	function new(?message:String);
	static var prototype : TrackInvalidError;
}