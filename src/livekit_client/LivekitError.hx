package livekit_client;

@:jsRequire("livekit-client", "LivekitError") extern class LivekitError extends js.lib.Error {
	function new(code:Float, ?message:String);
	var code : Float;
	static var prototype : LivekitError;
}