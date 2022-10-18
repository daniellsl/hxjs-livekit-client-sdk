package livekit_client.trackpublication;

@:jsRequire("livekit-client", "TrackPublication.PermissionStatus") @:enum extern abstract PermissionStatus(String) from String to String {
	var Allowed;
	var NotAllowed;
}