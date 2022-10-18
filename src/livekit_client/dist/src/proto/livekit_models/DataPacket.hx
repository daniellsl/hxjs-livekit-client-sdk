package livekit_client.dist.src.proto.livekit_models;

/**
	new DataPacket API
**/
@:jsRequire("livekit-client/dist/src/proto/livekit_models", "DataPacket") extern class DataPacket {
	var kind : livekit_client.DataPacket_Kind;
	@:optional
	var value : ts.AnyOf2<{
		@:native("$case")
		var DollarCase : String;
		var user : UserPacket;
	}, {
		@:native("$case")
		var DollarCase : String;
		var speaker : ActiveSpeakerUpdate;
	}>;
}