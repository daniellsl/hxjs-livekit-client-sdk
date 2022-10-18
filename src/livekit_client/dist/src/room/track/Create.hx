package livekit_client.dist.src.room.track;

@:jsRequire("livekit-client/dist/src/room/track/create") @valueModuleOnly extern class Create {
	/**
		Creates a local video and audio track at the same time. When acquiring both
		audio and video tracks together, it'll display a single permission prompt to
		the user instead of two separate ones.
	**/
	static function createLocalTracks(?options:livekit_client.CreateLocalTracksOptions):js.lib.Promise<Array<Dynamic>>;
	/**
		Creates a [[LocalVideoTrack]] with getUserMedia()
	**/
	static function createLocalVideoTrack(?options:livekit_client.VideoCaptureOptions):js.lib.Promise<livekit_client.LocalVideoTrack>;
	static function createLocalAudioTrack(?options:livekit_client.AudioCaptureOptions):js.lib.Promise<livekit_client.LocalAudioTrack>;
	/**
		Creates a screen capture tracks with getDisplayMedia().
		A LocalVideoTrack is always created and returned.
		If { audio: true }, and the browser supports audio capture, a LocalAudioTrack is also created.
	**/
	static function createLocalScreenTracks(?options:livekit_client.ScreenShareCaptureOptions):js.lib.Promise<Array<Dynamic>>;
}