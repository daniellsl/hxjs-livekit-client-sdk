package livekit_client;

@:jsRequire("livekit-client", "DefaultReconnectPolicy") extern class DefaultReconnectPolicy {
	function new(?retryDelays:Array<Float>);
	private final _retryDelays : Dynamic;
	function nextRetryDelayInMs(context:Dynamic):Null<Float>;
	static var prototype : DefaultReconnectPolicy;
}