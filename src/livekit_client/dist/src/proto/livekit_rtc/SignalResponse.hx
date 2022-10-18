package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "SignalResponse") extern class SignalResponse {
	@:optional
	var message : ts.AnyOf17<{
		@:native("$case")
		var DollarCase : String;
		var join : JoinResponse;
	}, {
		@:native("$case")
		var DollarCase : String;
		var answer : SessionDescription;
	}, {
		@:native("$case")
		var DollarCase : String;
		var offer : SessionDescription;
	}, {
		@:native("$case")
		var DollarCase : String;
		var trickle : TrickleRequest;
	}, {
		@:native("$case")
		var DollarCase : String;
		var update : ParticipantUpdate;
	}, {
		@:native("$case")
		var DollarCase : String;
		var trackPublished : TrackPublishedResponse;
	}, {
		@:native("$case")
		var DollarCase : String;
		var leave : LeaveRequest;
	}, {
		@:native("$case")
		var DollarCase : String;
		var mute : MuteTrackRequest;
	}, {
		@:native("$case")
		var DollarCase : String;
		var speakersChanged : SpeakersChanged;
	}, {
		@:native("$case")
		var DollarCase : String;
		var roomUpdate : RoomUpdate;
	}, {
		@:native("$case")
		var DollarCase : String;
		var connectionQuality : ConnectionQualityUpdate;
	}, {
		@:native("$case")
		var DollarCase : String;
		var streamStateUpdate : StreamStateUpdate;
	}, {
		@:native("$case")
		var DollarCase : String;
		var subscribedQualityUpdate : SubscribedQualityUpdate;
	}, {
		@:native("$case")
		var DollarCase : String;
		var subscriptionPermissionUpdate : SubscriptionPermissionUpdate;
	}, {
		@:native("$case")
		var DollarCase : String;
		var refreshToken : String;
	}, {
		@:native("$case")
		var DollarCase : String;
		var trackUnpublished : TrackUnpublishedResponse;
	}, {
		@:native("$case")
		var DollarCase : String;
		var pong : Float;
	}>;
}