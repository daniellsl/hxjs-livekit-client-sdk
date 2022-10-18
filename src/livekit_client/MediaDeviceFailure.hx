package livekit_client;

@:jsRequire("livekit-client", "MediaDeviceFailure") @:enum extern abstract MediaDeviceFailure(String) from String to String {
	var PermissionDenied;
	var NotFound;
	var DeviceInUse;
	var Other;
	static function getFailure(error:Dynamic):Null<String>;
}