package livekit_client;

typedef StructuredLogger = {
	dynamic function trace(msg:String, ?context:Dynamic):Void;
	dynamic function debug(msg:String, ?context:Dynamic):Void;
	dynamic function info(msg:String, ?context:Dynamic):Void;
	dynamic function warn(msg:String, ?context:Dynamic):Void;
	dynamic function error(msg:String, ?context:Dynamic):Void;
};