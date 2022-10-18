package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "ICEServer") extern class ICEServer {
	var urls : Array<String>;
	var username : String;
	var credential : String;
}