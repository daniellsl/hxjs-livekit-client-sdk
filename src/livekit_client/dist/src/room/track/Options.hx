package livekit_client.dist.src.room.track;

@:jsRequire("livekit-client/dist/src/room/track/options") @valueModuleOnly extern class Options {
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
}