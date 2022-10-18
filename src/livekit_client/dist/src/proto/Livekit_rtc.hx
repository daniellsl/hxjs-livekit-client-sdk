package livekit_client.dist.src.proto;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc") @valueModuleOnly extern class Livekit_rtc {
	static function signalTargetFromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SignalTarget;
	static function signalTargetToJSON(object:livekit_client.dist.src.proto.livekit_rtc.SignalTarget):String;
	static function streamStateFromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.StreamState;
	static function streamStateToJSON(object:livekit_client.dist.src.proto.livekit_rtc.StreamState):String;
	static function candidateProtocolFromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.CandidateProtocol;
	static function candidateProtocolToJSON(object:livekit_client.dist.src.proto.livekit_rtc.CandidateProtocol):String;
	static final protobufPackage : String;
	static final SignalRequest : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SignalRequest, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SignalRequest;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SignalRequest;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SignalRequest):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SignalRequest;
	};
	static final SignalResponse : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SignalResponse, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SignalResponse;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SignalResponse;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SignalResponse):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SignalResponse;
	};
	static final SimulcastCodec : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SimulcastCodec, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SimulcastCodec;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SimulcastCodec;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SimulcastCodec):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SimulcastCodec;
	};
	static final AddTrackRequest : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.AddTrackRequest, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.AddTrackRequest;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.AddTrackRequest;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.AddTrackRequest):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.AddTrackRequest;
	};
	static final TrickleRequest : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.TrickleRequest, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.TrickleRequest;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.TrickleRequest;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.TrickleRequest):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.TrickleRequest;
	};
	static final MuteTrackRequest : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.MuteTrackRequest, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.MuteTrackRequest;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.MuteTrackRequest;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.MuteTrackRequest):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.MuteTrackRequest;
	};
	static final JoinResponse : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.JoinResponse, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.JoinResponse;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.JoinResponse;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.JoinResponse):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.JoinResponse;
	};
	static final TrackPublishedResponse : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.TrackPublishedResponse, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.TrackPublishedResponse;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.TrackPublishedResponse;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.TrackPublishedResponse):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.TrackPublishedResponse;
	};
	static final TrackUnpublishedResponse : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.TrackUnpublishedResponse, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.TrackUnpublishedResponse;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.TrackUnpublishedResponse;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.TrackUnpublishedResponse):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.TrackUnpublishedResponse;
	};
	static final SessionDescription : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SessionDescription, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SessionDescription;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SessionDescription;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SessionDescription):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SessionDescription;
	};
	static final ParticipantUpdate : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.ParticipantUpdate, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.ParticipantUpdate;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.ParticipantUpdate;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.ParticipantUpdate):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.ParticipantUpdate;
	};
	static final UpdateSubscription : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.UpdateSubscription, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.UpdateSubscription;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.UpdateSubscription;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.UpdateSubscription):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.UpdateSubscription;
	};
	static final UpdateTrackSettings : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.UpdateTrackSettings, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.UpdateTrackSettings;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.UpdateTrackSettings;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.UpdateTrackSettings):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.UpdateTrackSettings;
	};
	static final LeaveRequest : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.LeaveRequest, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.LeaveRequest;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.LeaveRequest;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.LeaveRequest):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.LeaveRequest;
	};
	/**
		message to indicate published video track dimensions are changing
	**/
	static final UpdateVideoLayers : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.UpdateVideoLayers, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.UpdateVideoLayers;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.UpdateVideoLayers;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.UpdateVideoLayers):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.UpdateVideoLayers;
	};
	static final ICEServer : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.ICEServer, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.ICEServer;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.ICEServer;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.ICEServer):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.ICEServer;
	};
	static final SpeakersChanged : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SpeakersChanged, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SpeakersChanged;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SpeakersChanged;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SpeakersChanged):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SpeakersChanged;
	};
	static final RoomUpdate : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.RoomUpdate, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.RoomUpdate;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.RoomUpdate;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.RoomUpdate):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.RoomUpdate;
	};
	static final ConnectionQualityInfo : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityInfo, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityInfo;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityInfo;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityInfo):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityInfo;
	};
	static final ConnectionQualityUpdate : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityUpdate, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityUpdate;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityUpdate;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityUpdate):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.ConnectionQualityUpdate;
	};
	static final StreamStateInfo : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.StreamStateInfo, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.StreamStateInfo;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.StreamStateInfo;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.StreamStateInfo):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.StreamStateInfo;
	};
	static final StreamStateUpdate : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.StreamStateUpdate, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.StreamStateUpdate;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.StreamStateUpdate;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.StreamStateUpdate):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.StreamStateUpdate;
	};
	static final SubscribedQuality : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SubscribedQuality, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SubscribedQuality;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SubscribedQuality;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SubscribedQuality):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SubscribedQuality;
	};
	static final SubscribedCodec : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SubscribedCodec, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SubscribedCodec;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SubscribedCodec;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SubscribedCodec):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SubscribedCodec;
	};
	static final SubscribedQualityUpdate : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SubscribedQualityUpdate, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SubscribedQualityUpdate;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SubscribedQualityUpdate;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SubscribedQualityUpdate):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SubscribedQualityUpdate;
	};
	static final TrackPermission : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.TrackPermission, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.TrackPermission;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.TrackPermission;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.TrackPermission):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.TrackPermission;
	};
	static final SubscriptionPermission : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermission, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermission;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermission;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermission):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermission;
	};
	static final SubscriptionPermissionUpdate : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermissionUpdate, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermissionUpdate;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermissionUpdate;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermissionUpdate):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SubscriptionPermissionUpdate;
	};
	static final SyncState : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SyncState, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SyncState;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SyncState;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SyncState):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SyncState;
	};
	static final DataChannelInfo : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.DataChannelInfo, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.DataChannelInfo;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.DataChannelInfo;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.DataChannelInfo):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.DataChannelInfo;
	};
	static final SimulateScenario : {
		function encode(message:livekit_client.dist.src.proto.livekit_rtc.SimulateScenario, ?writer:Dynamic):Dynamic;
		function decode(input:Dynamic, ?length:Float):livekit_client.dist.src.proto.livekit_rtc.SimulateScenario;
		function fromJSON(object:Dynamic):livekit_client.dist.src.proto.livekit_rtc.SimulateScenario;
		function toJSON(message:livekit_client.dist.src.proto.livekit_rtc.SimulateScenario):Any;
		function fromPartial<I>(object:I):livekit_client.dist.src.proto.livekit_rtc.SimulateScenario;
	};
}