package livekit_client;

@:jsRequire("livekit-client", "PublishDataError") extern class PublishDataError extends LivekitError {
	function new(?message:String);
	static var prototype : PublishDataError;
}