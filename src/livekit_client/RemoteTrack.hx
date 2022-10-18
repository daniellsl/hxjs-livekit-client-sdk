package livekit_client;

@:jsRequire("livekit-client", "RemoteTrack") extern class RemoteTrack extends Track {
	function new(mediaTrack:js.html.MediaStreamTrack, sid:String, kind:livekit_client.track.Kind, ?receiver:js.html.rtc.RtpReceiver);
	@:optional
	var receiver : js.html.rtc.RtpReceiver;
	function setMuted(muted:Bool):Void;
	function setMediaStream(stream:js.html.MediaStream):Void;
	function start():Void;
	function startMonitor():Void;
	private function monitorReceiver():Void;
	static var prototype : RemoteTrack;
}