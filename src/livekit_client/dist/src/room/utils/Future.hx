package livekit_client.dist.src.room.utils;

@:jsRequire("livekit-client/dist/src/room/utils", "Future") extern class Future<T> {
	function new(?futureBase:(resolve:(arg:T) -> Void, reject:(e:Dynamic) -> Void) -> Void, ?onFinally:() -> Void);
	var promise : js.lib.Promise<T>;
	@:optional
	dynamic function resolve(arg:T):Void;
	@:optional
	dynamic function reject(e:Dynamic):Void;
	@:optional
	dynamic function onFinally():Void;
	static var prototype : Future<Dynamic>;
}