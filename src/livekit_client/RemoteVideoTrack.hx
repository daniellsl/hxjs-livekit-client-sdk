package livekit_client;

@:jsRequire("livekit-client", "RemoteVideoTrack") extern class RemoteVideoTrack extends RemoteTrack {
	function new(mediaTrack:js.html.MediaStreamTrack, sid:String, ?receiver:js.html.rtc.RtpReceiver, ?adaptiveStreamSettings:Dynamic);
	@:optional
	private var prevStats : Dynamic;
	private var elementInfos : Dynamic;
	@:optional
	private var adaptiveStreamSettings : Dynamic;
	@:optional
	private var lastVisible : Dynamic;
	@:optional
	private var lastDimensions : Dynamic;
	private var hasUsedAttach : Dynamic;
	final isAdaptiveStream : Bool;
	/**
		Observe an ElementInfo for changes when adaptive streaming.
	**/
	function observeElementInfo(elementInfo:ElementInfo):Void;
	/**
		Stop observing an ElementInfo for changes.
	**/
	function stopObservingElementInfo(elementInfo:ElementInfo):Void;
	function getDecoderImplementation():Null<String>;
	private var getReceiverStats : Dynamic;
	private var stopObservingElement : Dynamic;
	private final debouncedHandleResize : Dynamic;
	private var updateVisibility : Dynamic;
	private var updateDimensions : Dynamic;
	static var prototype : RemoteVideoTrack;
}