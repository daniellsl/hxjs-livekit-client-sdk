package livekit_client;

typedef ScreenShareCaptureOptions = {
	/**
		true to capture audio shared. browser support for audio capturing in
		screenshare is limited: https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getDisplayMedia#browser_compatibility
	**/
	@:optional
	var audio : ts.AnyOf2<Bool, AudioCaptureOptions>;
	/**
		capture resolution, defaults to full HD
	**/
	@:optional
	var resolution : VideoResolution;
};