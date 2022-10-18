package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "Room") extern class Room {
	var sid : String;
	var name : String;
	var emptyTimeout : Float;
	var maxParticipants : Float;
	var creationTime : Float;
	var turnPassword : String;
	var enabledCodecs : Array<Codec>;
	var metadata : String;
	var numParticipants : Float;
	var activeRecording : Bool;
}