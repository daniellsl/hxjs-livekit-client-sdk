package livekit_client;

@:jsRequire("livekit-client", "RemoteAudioTrack") extern class RemoteAudioTrack extends RemoteTrack {
	function new(mediaTrack:js.html.MediaStreamTrack, sid:String, ?receiver:js.html.rtc.RtpReceiver, ?audioContext:js.html.audio.AudioContext);
	@:optional
	private var prevStats : Dynamic;
	private var elementVolume : Dynamic;
	@:optional
	private var audioContext : Dynamic;
	@:optional
	private var gainNode : Dynamic;
	@:optional
	private var sourceNode : Dynamic;
	private var webAudioPluginNodes : Dynamic;
	/**
		sets the volume for all attached audio elements
	**/
	function setVolume(volume:Float):Void;
	/**
		gets the volume of attached audio elements (loudest)
	**/
	function getVolume():Float;
	function setAudioContext(audioContext:Null<js.html.audio.AudioContext>):Void;
	function setWebAudioPlugins(nodes:Array<js.html.audio.AudioNode>):Void;
	private var connectWebAudio : Dynamic;
	private var disconnectWebAudio : Dynamic;
	private function getReceiverStats():js.lib.Promise<Null<livekit_client.dist.src.room.stats.AudioReceiverStats>>;
	static var prototype : RemoteAudioTrack;
}