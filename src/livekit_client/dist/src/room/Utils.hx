package livekit_client.dist.src.room;

@:jsRequire("livekit-client/dist/src/room/utils") @valueModuleOnly extern class Utils {
	static function unpackStreamId(packed:String):Array<String>;
	static function sleep(duration:Float):js.lib.Promise<ts.Undefined>;
	static function supportsTransceiver():Bool;
	static function supportsAddTrack():Bool;
	static function supportsAdaptiveStream():Bool;
	static function supportsDynacast():Bool;
	static function supportsAV1():Bool;
	static function supportsSetCodecPreferences(transceiver:js.html.rtc.RtpTransceiver):Bool;
	static function isBrowserSupported():Bool;
	static function isFireFox():Bool;
	static function isSafari():Bool;
	static function isMobile():Bool;
	static function isWeb():Bool;
	static function compareVersions(v1:String, v2:String):Float;
	static function getClientInfo():livekit_client.dist.src.proto.livekit_models.ClientInfo;
	static function getEmptyVideoStreamTrack():js.html.MediaStreamTrack;
	static function getEmptyAudioStreamTrack():js.html.MediaStreamTrack;
	static function getResizeObserver():Dynamic;
	static function getIntersectionObserver():js.html.IntersectionObserver;
}