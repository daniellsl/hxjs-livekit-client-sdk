package livekit_client.dist.src.proto.livekit_rtc;

typedef ISignalRequest = {
	@:optional
	var message : ts.AnyOf13<{
		@:native("$case")
		var DollarCase : String;
		var offer : SessionDescription;
	}, {
		@:native("$case")
		var DollarCase : String;
		var answer : SessionDescription;
	}, {
		@:native("$case")
		var DollarCase : String;
		var trickle : TrickleRequest;
	}, {
		@:native("$case")
		var DollarCase : String;
		var addTrack : AddTrackRequest;
	}, {
		@:native("$case")
		var DollarCase : String;
		var mute : MuteTrackRequest;
	}, {
		@:native("$case")
		var DollarCase : String;
		var subscription : UpdateSubscription;
	}, {
		@:native("$case")
		var DollarCase : String;
		var trackSetting : UpdateTrackSettings;
	}, {
		@:native("$case")
		var DollarCase : String;
		var leave : LeaveRequest;
	}, {
		@:native("$case")
		var DollarCase : String;
		var updateLayers : UpdateVideoLayers;
	}, {
		@:native("$case")
		var DollarCase : String;
		var subscriptionPermission : SubscriptionPermission;
	}, {
		@:native("$case")
		var DollarCase : String;
		var syncState : SyncState;
	}, {
		@:native("$case")
		var DollarCase : String;
		var simulate : SimulateScenario;
	}, {
		@:native("$case")
		var DollarCase : String;
		var ping : Float;
	}>;
};