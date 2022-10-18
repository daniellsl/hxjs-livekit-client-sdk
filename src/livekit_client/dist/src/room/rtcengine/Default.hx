package livekit_client.dist.src.room.rtcengine;

@:jsRequire("livekit-client/dist/src/room/RTCEngine", "default") extern class Default {
	function new(options:Dynamic);
	private var options : Dynamic;
	@:optional
	var publisher : livekit_client.dist.src.room.pctransport.Default;
	@:optional
	var subscriber : livekit_client.dist.src.room.pctransport.Default;
	var client : livekit_client.dist.src.api.signalclient.SignalClient;
	var rtcConfig : js.html.RTCConfiguration;
	final isClosed : Bool;
	@:optional
	private var lossyDC : Dynamic;
	@:optional
	private var lossyDCSub : Dynamic;
	@:optional
	private var reliableDC : Dynamic;
	@:optional
	private var reliableDCSub : Dynamic;
	private var subscriberPrimary : Dynamic;
	@:optional
	private var primaryPC : Dynamic;
	private var pcState : Dynamic;
	private var _isClosed : Dynamic;
	private var pendingTrackResolvers : Dynamic;
	private var hasPublished : Dynamic;
	@:optional
	private var url : Dynamic;
	@:optional
	private var token : Dynamic;
	@:optional
	private var signalOpts : Dynamic;
	private var reconnectAttempts : Dynamic;
	private var reconnectStart : Dynamic;
	private var fullReconnectOnNext : Dynamic;
	@:optional
	private var clientConfiguration : Dynamic;
	@:optional
	private var connectedServerAddr : Dynamic;
	private var attemptingReconnect : Dynamic;
	private var reconnectPolicy : Dynamic;
	@:optional
	private var reconnectTimeout : Dynamic;
	@:optional
	private var participantSid : Dynamic;
	function join(url:String, token:String, opts:livekit_client.dist.src.api.signalclient.SignalOptions, ?abortSignal:js.html.AbortSignal):js.lib.Promise<livekit_client.dist.src.proto.livekit_rtc.JoinResponse>;
	function close():Void;
	function addTrack(req:livekit_client.dist.src.proto.livekit_rtc.AddTrackRequest):js.lib.Promise<livekit_client.dist.src.proto.livekit_models.TrackInfo>;
	function removeTrack(sender:js.html.rtc.RtpSender):Void;
	function updateMuteStatus(trackSid:String, muted:Bool):Void;
	final dataSubscriberReadyState : Null<String>;
	final connectedServerAddress : Null<String>;
	private var configure : Dynamic;
	private var createDataChannels : Dynamic;
	private var handleDataChannel : Dynamic;
	private var handleDataMessage : Dynamic;
	private var handleDataError : Dynamic;
	private var setPreferredCodec : Dynamic;
	function createSender(track:Dynamic, opts:Dynamic, ?encodings:Array<js.html.RTCRtpEncodingParameters>):js.lib.Promise<js.html.rtc.RtpSender>;
	function createSimulcastSender(track:Dynamic, simulcastTrack:Dynamic, opts:Dynamic, ?encodings:Array<js.html.RTCRtpEncodingParameters>):js.lib.Promise<Null<js.html.rtc.RtpSender>>;
	private var createTransceiverRTCRtpSender : Dynamic;
	private var createSimulcastTransceiverSender : Dynamic;
	private var createRTCRtpSender : Dynamic;
	private var handleDisconnect : Dynamic;
	private var getNextRetryDelay : Dynamic;
	private var restartConnection : Dynamic;
	private var resumeConnection : Dynamic;
	function waitForPCConnected():js.lib.Promise<ts.Undefined>;
	function sendDataPacket(packet:livekit_client.dist.src.proto.livekit_models.DataPacket, kind:livekit_client.DataPacket_Kind):js.lib.Promise<ts.Undefined>;
	private var ensurePublisherConnected : Dynamic;
	function negotiate():Void;
	function dataChannelForKind(kind:livekit_client.DataPacket_Kind, ?sub:Bool):Null<js.html.rtc.DataChannel>;
	static var prototype : Default;
}