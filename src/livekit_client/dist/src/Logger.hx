package livekit_client.dist.src;

@:jsRequire("livekit-client/dist/src/logger") @valueModuleOnly extern class Logger {
	static function setLogLevel(level:ts.AnyOf2<Int, String>):Void;
	/**
		use this to hook into the logging function to allow sending internal livekit logs to third party services
		if set, the browser logs will lose their stacktrace information (see https://github.com/pimterry/loglevel#writing-plugins)
	**/
	static function setLogExtension(extension:livekit_client.dist.src.logger.LogExtension):Void;
	@:native("default")
	static final default_ : livekit_client.StructuredLogger;
}