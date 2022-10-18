package livekit_client.dist.src.room.track.localvideotrack;

@:jsRequire("livekit-client/dist/src/room/track/LocalVideoTrack", "SimulcastTrackInfo") extern class SimulcastTrackInfo {
	function new(codec:Dynamic, mediaStreamTrack:js.html.MediaStreamTrack);
	var codec : Dynamic;
	var mediaStreamTrack : js.html.MediaStreamTrack;
	@:optional
	var sender : js.html.rtc.RtpSender;
	@:optional
	var encodings : Array<js.html.RTCRtpEncodingParameters>;
	static var prototype : SimulcastTrackInfo;
}