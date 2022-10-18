package livekit_client;

@:jsRequire("livekit-client", "DataPacket_Kind") @:enum extern abstract DataPacket_Kind(Int) from Int to Int {
	var RELIABLE;
	var LOSSY;
	var UNRECOGNIZED;
}