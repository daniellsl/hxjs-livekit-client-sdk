package livekit_client;

@:jsRequire("livekit-client", "LocalTrack") extern class LocalTrack extends Track {
	private function new(mediaTrack:js.html.MediaStreamTrack, kind:livekit_client.track.Kind, ?constraints:js.html.MediaTrackConstraints, ?userProvidedTrack:Bool);
	@:optional
	var sender : js.html.rtc.RtpSender;
	@:optional
	var codec : Dynamic;
	private var constraints : js.html.MediaTrackConstraints;
	private var reacquireTrack : Bool;
	private var providedByUser : Bool;
	private var muteQueue : async_await_queue.Queue;
	final id : String;
	final dimensions : Null<livekit_client.track.Dimensions>;
	private var _isUpstreamPaused : Dynamic;
	final isUpstreamPaused : Bool;
	final isUserProvided : Bool;
	function getDeviceId():js.lib.Promise<Null<String>>;
	function mute():js.lib.Promise<LocalTrack>;
	function unmute():js.lib.Promise<LocalTrack>;
	function replaceTrack(track:js.html.MediaStreamTrack, ?userProvidedTrack:Bool):js.lib.Promise<LocalTrack>;
	private function restart(?constraints:js.html.MediaTrackConstraints):js.lib.Promise<LocalTrack>;
	private function setTrackMuted(muted:Bool):Void;
	private final needsReAcquisition : Bool;
	private var handleEnded : Dynamic;
	function pauseUpstream():js.lib.Promise<ts.Undefined>;
	function resumeUpstream():js.lib.Promise<ts.Undefined>;
	private function monitorSender():Void;
	static var prototype : LocalTrack;
}