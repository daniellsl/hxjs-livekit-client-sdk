package livekit_client;

@:jsRequire("livekit-client", "RemoteParticipant") extern class RemoteParticipant extends Participant {
	function new(signalClient:Dynamic, sid:String, ?identity:String, ?name:String, ?metadata:String);
	var signalClient : Dynamic;
	@:optional
	private var volume : Dynamic;
	@:optional
	private var audioContext : Dynamic;
	private function addTrackPublication(publication:RemoteTrackPublication):Void;
	/**
		Finds the first track that matches the source filter, for example, getting
		the user's camera track with getTrackBySource(Track.Source.Camera).
	**/
	function getTrack(source:livekit_client.track.Source):Null<RemoteTrackPublication>;
	/**
		Finds the first track that matches the track's name.
	**/
	function getTrackByName(name:String):Null<RemoteTrackPublication>;
	/**
		sets the volume on the participant's microphone track
		if no track exists the volume will be applied when the microphone track is added
	**/
	function setVolume(volume:Float):Void;
	/**
		gets the volume on the participant's microphone track
	**/
	function getVolume():Null<Float>;
	function addSubscribedMediaTrack(mediaTrack:js.html.MediaStreamTrack, sid:String, mediaStream:js.html.MediaStream, ?receiver:js.html.rtc.RtpReceiver, ?adaptiveStreamSettings:Dynamic, ?triesLeft:Float):Null<RemoteTrackPublication>;
	final hasMetadata : Bool;
	function getTrackPublication(sid:String):Null<RemoteTrackPublication>;
	function updateInfo(info:Dynamic):Void;
	function unpublishTrack(sid:String, ?sendUnpublish:Bool):Void;
	function setAudioContext(ctx:Null<js.html.audio.AudioContext>):Void;
	function emit<E>(event:E, args:haxe.extern.Rest<Any>):Bool;
	static var prototype : RemoteParticipant;
	static function fromParticipantInfo(signalClient:Dynamic, pi:Dynamic):RemoteParticipant;
}