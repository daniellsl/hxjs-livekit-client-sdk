package livekit_client.dist.src.room.track;

@:jsRequire("livekit-client/dist/src/room/track/LocalVideoTrack") @valueModuleOnly extern class LocalVideoTrack {
	static function videoQualityForRid(rid:String):livekit_client.VideoQuality;
	static function videoLayersFromEncodings(width:Float, height:Float, ?encodings:Array<js.html.RTCRtpEncodingParameters>):Array<livekit_client.dist.src.proto.livekit_models.VideoLayer>;
}