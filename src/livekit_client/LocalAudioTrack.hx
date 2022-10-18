package livekit_client;

@:jsRequire("livekit-client", "LocalAudioTrack") extern class LocalAudioTrack extends LocalTrack {
	function new(mediaTrack:js.html.MediaStreamTrack, ?constraints:js.html.MediaTrackConstraints, ?userProvidedTrack:Bool);
	var stopOnMute : Bool;
	@:optional
	private var prevStats : Dynamic;
	function setDeviceId(deviceId:String):js.lib.Promise<ts.Undefined>;
	function mute():js.lib.Promise<LocalAudioTrack>;
	function unmute():js.lib.Promise<LocalAudioTrack>;
	function restartTrack(?options:Dynamic):js.lib.Promise<ts.Undefined>;
	function startMonitor():Void;
	function getSenderStats():js.lib.Promise<Null<livekit_client.dist.src.room.stats.AudioSenderStats>>;
	function checkForSilence():js.lib.Promise<ts.Undefined>;
	static var prototype : LocalAudioTrack;
}