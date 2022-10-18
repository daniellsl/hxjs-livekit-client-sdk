package livekit_client;

typedef VideoCaptureOptions = {
	/**
		A ConstrainDOMString object specifying a device ID or an array of device
		IDs which are acceptable and/or required.
	**/
	@:optional
	var deviceId : js.html.ConstrainDOMString;
	/**
		a facing or an array of facings which are acceptable and/or required.
	**/
	@:optional
	var facingMode : String;
	@:optional
	var resolution : VideoResolution;
};