package livekit_client;

typedef AdaptiveStreamSettings = {
	/**
		Set a custom pixel density, defaults to 1
		When streaming videos on a ultra high definition screen this setting
		let's you account for the devicePixelRatio of those screens.
		Set it to `screen` to use the actual pixel density of the screen
		Note: this might significantly increase the bandwidth consumed by people
		streaming on high definition screens.
	**/
	@:optional
	var pixelDensity : ts.AnyOf2<Float, String>;
	/**
		If true, video gets paused when switching to another tab.
		Defaults to true.
	**/
	@:optional
	var pauseVideoInBackground : Bool;
};