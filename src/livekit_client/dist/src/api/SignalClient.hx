package livekit_client.dist.src.api;

@:jsRequire("livekit-client/dist/src/api/SignalClient") @valueModuleOnly extern class SignalClient {
	static function toProtoSessionDescription(rsd:ts.AnyOf2<js.html.rtc.SessionDescription, js.html.RTCSessionDescriptionInit>):livekit_client.dist.src.proto.livekit_rtc.SessionDescription;
}