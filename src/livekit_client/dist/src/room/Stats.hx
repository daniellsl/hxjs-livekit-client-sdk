package livekit_client.dist.src.room;

@:jsRequire("livekit-client/dist/src/room/stats") @valueModuleOnly extern class Stats {
	static function computeBitrate<T>(currentStats:T, ?prevStats:T):Float;
	static final monitorFrequency : Int;
}