package livekit_client.dist.src.api.signalclient;

@:jsRequire("livekit-client/dist/src/api/SignalClient", "SignalClient") extern class SignalClient {
	function new(?useJSON:Bool);
	var isConnected : Bool;
	var isReconnecting : Bool;
	var requestQueue : async_await_queue.Queue;
	var queuedRequests : Array<() -> js.lib.Promise<ts.Undefined>>;
	var useJSON : Bool;
	/**
		simulate signaling latency by delaying messages
	**/
	@:optional
	var signalLatency : Float;
	@:optional
	dynamic function onClose(reason:String):Void;
	@:optional
	dynamic function onAnswer(sd:js.html.RTCSessionDescriptionInit):Void;
	@:optional
	dynamic function onOffer(sd:js.html.RTCSessionDescriptionInit):Void;
	@:optional
	dynamic function onTrickle(sd:js.html.RTCIceCandidateInit, target:livekit_client.dist.src.proto.livekit_rtc.SignalTarget):Void;
	@:optional
	dynamic function onParticipantUpdate(updates:Array<livekit_client.dist.src.proto.livekit_models.ParticipantInfo>):Void;
	@:optional
	dynamic function onLocalTrackPublished(res:livekit_client.dist.src.proto.livekit_rtc.TrackPublishedResponse):Void;
	@:optional
	dynamic function onNegotiateRequested():Void;
	@:optional
	dynamic function onSpeakersChanged(res:Array<livekit_client.dist.src.proto.livekit_models.SpeakerInfo>):Void;
	@:optional
	dynamic function onRemoteMuteChanged(trackSid:String, muted:Bool):Void;
	@:optional
	dynamic function onRoomUpdate(room:livekit_client.dist.src.proto.livekit_models.Room):Void;
	@:optional
	dynamic function onConnectionQuality(update:livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityUpdate):Void;
	@:optional
	dynamic function onStreamStateUpdate(update:livekit_client.dist.src.proto.livekit_rtc.StreamStateUpdate):Void;
	@:optional
	dynamic function onSubscribedQualityUpdate(update:livekit_client.dist.src.proto.livekit_rtc.SubscribedQualityUpdate):Void;
	@:optional
	dynamic function onSubscriptionPermissionUpdate(update:livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermissionUpdate):Void;
	@:optional
	dynamic function onLocalTrackUnpublished(res:livekit_client.dist.src.proto.livekit_rtc.TrackUnpublishedResponse):Void;
	@:optional
	dynamic function onTokenRefresh(token:String):Void;
	@:optional
	dynamic function onLeave(leave:livekit_client.dist.src.proto.livekit_rtc.LeaveRequest):Void;
	@:optional
	var connectOptions : livekit_client.ConnectOpts;
	@:optional
	var ws : js.html.WebSocket;
	@:optional
	private var options : Dynamic;
	private var pingTimeout : Dynamic;
	private var pingTimeoutDuration : Dynamic;
	private var pingIntervalDuration : Dynamic;
	private var pingInterval : Dynamic;
	function join(url:String, token:String, opts:SignalOptions, ?abortSignal:js.html.AbortSignal):js.lib.Promise<livekit_client.dist.src.proto.livekit_rtc.JoinResponse>;
	function reconnect(url:String, token:String, ?sid:String):js.lib.Promise<ts.Undefined>;
	function connect(url:String, token:String, opts:livekit_client.ConnectOpts, ?abortSignal:js.html.AbortSignal):js.lib.Promise<ts.AnyOf2<ts.Undefined, livekit_client.dist.src.proto.livekit_rtc.JoinResponse>>;
	function close():Void;
	function sendOffer(offer:js.html.RTCSessionDescriptionInit):Void;
	function sendAnswer(answer:js.html.RTCSessionDescriptionInit):Void;
	function sendIceCandidate(candidate:js.html.RTCIceCandidateInit, target:livekit_client.dist.src.proto.livekit_rtc.SignalTarget):Void;
	function sendMuteTrack(trackSid:String, muted:Bool):Void;
	function sendAddTrack(req:livekit_client.dist.src.proto.livekit_rtc.AddTrackRequest):Void;
	function sendUpdateTrackSettings(settings:livekit_client.dist.src.proto.livekit_rtc.UpdateTrackSettings):Void;
	function sendUpdateSubscription(sub:livekit_client.dist.src.proto.livekit_rtc.UpdateSubscription):Void;
	function sendSyncState(sync:livekit_client.dist.src.proto.livekit_rtc.SyncState):Void;
	function sendUpdateVideoLayers(trackSid:String, layers:Array<livekit_client.dist.src.proto.livekit_models.VideoLayer>):Void;
	function sendUpdateSubscriptionPermissions(allParticipants:Bool, trackPermissions:Array<livekit_client.dist.src.proto.livekit_rtc.TrackPermission>):Void;
	function sendSimulateScenario(scenario:livekit_client.dist.src.proto.livekit_rtc.SimulateScenario):Void;
	function sendPing():Void;
	function sendLeave():js.lib.Promise<ts.Undefined>;
	function sendRequest(message:Null<ts.AnyOf13<{ @:native("$case") var DollarCase : String; var offer : livekit_client.dist.src.proto.livekit_rtc.SessionDescription; }, { @:native("$case") var DollarCase : String; var answer : livekit_client.dist.src.proto.livekit_rtc.SessionDescription; }, { @:native("$case") var DollarCase : String; var trickle : livekit_client.dist.src.proto.livekit_rtc.TrickleRequest; }, { @:native("$case") var DollarCase : String; var addTrack : livekit_client.dist.src.proto.livekit_rtc.AddTrackRequest; }, { @:native("$case") var DollarCase : String; var mute : livekit_client.dist.src.proto.livekit_rtc.MuteTrackRequest; }, { @:native("$case") var DollarCase : String; var subscription : livekit_client.dist.src.proto.livekit_rtc.UpdateSubscription; }, { @:native("$case") var DollarCase : String; var trackSetting : livekit_client.dist.src.proto.livekit_rtc.UpdateTrackSettings; }, { @:native("$case") var DollarCase : String; var leave : livekit_client.dist.src.proto.livekit_rtc.LeaveRequest; }, { @:native("$case") var DollarCase : String; var updateLayers : livekit_client.dist.src.proto.livekit_rtc.UpdateVideoLayers; }, { @:native("$case") var DollarCase : String; var subscriptionPermission : livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermission; }, { @:native("$case") var DollarCase : String; var syncState : livekit_client.dist.src.proto.livekit_rtc.SyncState; }, { @:native("$case") var DollarCase : String; var simulate : livekit_client.dist.src.proto.livekit_rtc.SimulateScenario; }, { @:native("$case") var DollarCase : String; var ping : Float; }>>, ?fromQueue:Bool):js.lib.Promise<ts.Undefined>;
	private var handleSignalResponse : Dynamic;
	function setReconnected():Void;
	private var handleWSError : Dynamic;
	private var resetPingTimeout : Dynamic;
	private var clearPingTimeout : Dynamic;
	private var startPingInterval : Dynamic;
	private var clearPingInterval : Dynamic;
	static var prototype : SignalClient;
}