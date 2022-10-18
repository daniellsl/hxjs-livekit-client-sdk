package livekit_client;

typedef ElementInfo = {
	var element : Dynamic;
	function width():Float;
	function height():Float;
	var visible : Bool;
	var visibilityChangedAt : Null<Float>;
	@:optional
	dynamic function handleResize():Void;
	@:optional
	dynamic function handleVisibilityChanged():Void;
	function observe():Void;
	function stopObserving():Void;
};