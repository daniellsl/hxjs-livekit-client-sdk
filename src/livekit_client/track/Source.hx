package livekit_client.track;

@:jsRequire("livekit-client", "Track.Source") @:enum extern abstract Source(String) from String to String {
	var Camera;
	var Microphone;
	var ScreenShare;
	var ScreenShareAudio;
	var Unknown;
}