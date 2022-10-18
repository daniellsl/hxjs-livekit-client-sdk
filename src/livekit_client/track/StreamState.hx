package livekit_client.track;

@:jsRequire("livekit-client", "Track.StreamState") @:enum extern abstract StreamState(String) from String to String {
	var Active;
	var Paused;
	var Unknown;
}