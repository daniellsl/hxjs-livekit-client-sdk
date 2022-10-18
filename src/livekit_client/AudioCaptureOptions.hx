package livekit_client;

typedef AudioCaptureOptions = {
	/**
		specifies whether automatic gain control is preferred and/or required
	**/
	@:optional
	var autoGainControl : js.html.ConstrainBoolean;
	/**
		the channel count or range of channel counts which are acceptable and/or required
	**/
	@:optional
	var channelCount : js.html.ConstrainULong;
	/**
		A ConstrainDOMString object specifying a device ID or an array of device
		IDs which are acceptable and/or required.
	**/
	@:optional
	var deviceId : js.html.ConstrainDOMString;
	/**
		whether or not echo cancellation is preferred and/or required
	**/
	@:optional
	var echoCancellation : js.html.ConstrainBoolean;
	/**
		the latency or range of latencies which are acceptable and/or required.
	**/
	@:optional
	var latency : js.html.ConstrainDouble;
	/**
		whether noise suppression is preferred and/or required.
	**/
	@:optional
	var noiseSuppression : js.html.ConstrainBoolean;
	/**
		the sample rate or range of sample rates which are acceptable and/or required.
	**/
	@:optional
	var sampleRate : js.html.ConstrainULong;
	/**
		sample size or range of sample sizes which are acceptable and/or required.
	**/
	@:optional
	var sampleSize : js.html.ConstrainULong;
};