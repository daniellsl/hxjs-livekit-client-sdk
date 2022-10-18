package livekit_client.track;

@:jsRequire("livekit-client", "Track.Kind") @:enum extern abstract Kind(String) from String to String {
	var Audio;
	var Video;
	var Unknown;
}