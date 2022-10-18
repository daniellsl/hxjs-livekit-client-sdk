package livekit_client;

@:jsRequire("livekit-client", "Track") extern class Track {
	private function new(mediaTrack:js.html.MediaStreamTrack, kind:livekit_client.track.Kind);
	var kind : livekit_client.track.Kind;
	var attachedElements : Array<js.html.MediaElement>;
	var isMuted : Bool;
	var source : livekit_client.track.Source;
	/**
		sid is set after track is published to server, or if it's a remote track
	**/
	@:optional
	var sid : String;
	@:optional
	var mediaStream : js.html.MediaStream;
	/**
		indicates current state of stream
	**/
	var streamState : livekit_client.track.StreamState;
	private var _mediaStreamTrack : js.html.MediaStreamTrack;
	private var _mediaStreamID : String;
	private var isInBackground : Bool;
	private var backgroundTimeout : Dynamic;
	private var _currentBitrate : Float;
	@:optional
	private var monitorInterval : Float;
	/**
		current receive bits per second
	**/
	final currentBitrate : Float;
	final mediaStreamTrack : js.html.MediaStreamTrack;
	final mediaStreamID : String;
	/**
		creates a new HTMLAudioElement or HTMLVideoElement, attaches to it, and returns it
		
		attaches track to an existing HTMLAudioElement or HTMLVideoElement
	**/
	@:overload(function(element:js.html.MediaElement):js.html.MediaElement { })
	function attach():js.html.MediaElement;
	/**
		Detaches from all attached elements
		
		Detach from a single element
	**/
	@:overload(function(element:js.html.MediaElement):js.html.MediaElement { })
	function detach():Array<js.html.MediaElement>;
	function stop():Void;
	private function enable():Void;
	private function disable():Void;
	function startMonitor(?signalClient:Dynamic):Void;
	private function stopMonitor():Void;
	private var recycleElement : Dynamic;
	private dynamic function appVisibilityChangedListener():Void;
	private function handleAppVisibilityChanged():js.lib.Promise<ts.Undefined>;
	static var prototype : Track;
	static function kindToProto(k:livekit_client.track.Kind):livekit_client.dist.src.proto.livekit_models.TrackType;
	static function kindFromProto(t:livekit_client.dist.src.proto.livekit_models.TrackType):Null<livekit_client.track.Kind>;
	static function sourceToProto(s:livekit_client.track.Source):livekit_client.dist.src.proto.livekit_models.TrackSource;
	static function sourceFromProto(s:livekit_client.dist.src.proto.livekit_models.TrackSource):livekit_client.track.Source;
	static function streamStateFromProto(s:livekit_client.dist.src.proto.livekit_rtc.StreamState):livekit_client.track.StreamState;
}