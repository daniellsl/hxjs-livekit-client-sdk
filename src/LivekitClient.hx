@:jsRequire("livekit-client") @valueModuleOnly extern class LivekitClient {
	static function setLogLevel(level:ts.AnyOf2<Int, String>):Void;
	/**
		use this to hook into the logging function to allow sending internal livekit logs to third party services
		if set, the browser logs will lose their stacktrace information (see https://github.com/pimterry/loglevel#writing-plugins)
	**/
	static function setLogExtension(extension:livekit_client.dist.src.logger.LogExtension):Void;
	static function getEmptyAudioStreamTrack():js.html.MediaStreamTrack;
	static function getEmptyVideoStreamTrack():js.html.MediaStreamTrack;
	static function isBrowserSupported():Bool;
	static function supportsAdaptiveStream():Bool;
	static function supportsDynacast():Bool;
	static function supportsAV1():Bool;
	static final RoomState : { };
	static var ParticipantTrackPermission : Dynamic;
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
	static function isBackupCodec(codec:String):Bool;
	/**
		Sane presets for video resolution/encoding
	**/
	static final VideoPresets : {
		final h90 : livekit_client.VideoPreset;
		final h180 : livekit_client.VideoPreset;
		final h216 : livekit_client.VideoPreset;
		final h360 : livekit_client.VideoPreset;
		final h540 : livekit_client.VideoPreset;
		final h720 : livekit_client.VideoPreset;
		final h1080 : livekit_client.VideoPreset;
		final h1440 : livekit_client.VideoPreset;
		final h2160 : livekit_client.VideoPreset;
	};
	/**
		Four by three presets
	**/
	static final VideoPresets43 : {
		final h120 : livekit_client.VideoPreset;
		final h180 : livekit_client.VideoPreset;
		final h240 : livekit_client.VideoPreset;
		final h360 : livekit_client.VideoPreset;
		final h480 : livekit_client.VideoPreset;
		final h540 : livekit_client.VideoPreset;
		final h720 : livekit_client.VideoPreset;
		final h1080 : livekit_client.VideoPreset;
		final h1440 : livekit_client.VideoPreset;
	};
	static final ScreenSharePresets : {
		final h360fps3 : livekit_client.VideoPreset;
		final h720fps5 : livekit_client.VideoPreset;
		final h720fps15 : livekit_client.VideoPreset;
		final h1080fps15 : livekit_client.VideoPreset;
		final h1080fps30 : livekit_client.VideoPreset;
	};
	static function attachToElement(track:js.html.MediaStreamTrack, element:js.html.MediaElement):Void;
	static function detachTrack(track:js.html.MediaStreamTrack, element:js.html.MediaElement):Void;
	static final version : String;
	static final protocolVersion : Int;
}