package livekit_client.dist.src.proto.livekit_rtc;

typedef ISimulateScenario = {
	@:optional
	var scenario : ts.AnyOf5<{
		@:native("$case")
		var DollarCase : String;
		var speakerUpdate : Float;
	}, {
		@:native("$case")
		var DollarCase : String;
		var nodeFailure : Bool;
	}, {
		@:native("$case")
		var DollarCase : String;
		var migration : Bool;
	}, {
		@:native("$case")
		var DollarCase : String;
		var serverLeave : Bool;
	}, {
		@:native("$case")
		var DollarCase : String;
		var switchCandidateProtocol : CandidateProtocol;
	}>;
};