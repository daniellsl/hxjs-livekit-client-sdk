package livekit_client;

@:jsRequire("livekit-client", "LocalVideoTrack") extern class LocalVideoTrack extends LocalTrack {
	function new(mediaTrack:js.html.MediaStreamTrack, ?constraints:js.html.MediaTrackConstraints, ?userProvidedTrack:Bool);
	@:optional
	var signalClient : Dynamic;
	@:optional
	private var prevStats : Dynamic;
	@:optional
	private var encodings : Dynamic;
	var simulcastCodecs : js.lib.Map<Dynamic, livekit_client.dist.src.room.track.localvideotrack.SimulcastTrackInfo>;
	@:optional
	private var subscribedCodecs : Dynamic;
	final isSimulcast : Bool;
	function startMonitor(signalClient:Dynamic):Void;
	function mute():js.lib.Promise<LocalVideoTrack>;
	function unmute():js.lib.Promise<LocalVideoTrack>;
	function getSenderStats():js.lib.Promise<Array<livekit_client.dist.src.room.stats.VideoSenderStats>>;
	function setPublishingQuality(maxQuality:VideoQuality):Void;
	function setDeviceId(deviceId:String):js.lib.Promise<ts.Undefined>;
	function restartTrack(?options:Dynamic):js.lib.Promise<ts.Undefined>;
	function addSimulcastTrack(codec:Dynamic, ?encodings:Array<js.html.RTCRtpEncodingParameters>):livekit_client.dist.src.room.track.localvideotrack.SimulcastTrackInfo;
	function setSimulcastTrackSender(codec:Dynamic, sender:js.html.rtc.RtpSender):Void;
	function setPublishingCodecs(codecs:Array<Dynamic>):js.lib.Promise<Array<Dynamic>>;
	function setPublishingLayers(qualities:Array<Dynamic>):js.lib.Promise<ts.Undefined>;
	static var prototype : LocalVideoTrack;
}