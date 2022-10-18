package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "ClientInfo_SDK") @:enum extern abstract ClientInfo_SDK(Int) from Int to Int {
	var UNKNOWN;
	var JS;
	var SWIFT;
	var ANDROID;
	var FLUTTER;
	var GO;
	var UNITY;
	var UNRECOGNIZED;
}