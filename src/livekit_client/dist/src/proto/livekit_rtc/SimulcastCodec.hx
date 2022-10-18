package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "SimulcastCodec") extern class SimulcastCodec {
	var codec : String;
	var cid : String;
	var enableSimulcastLayers : Bool;
}