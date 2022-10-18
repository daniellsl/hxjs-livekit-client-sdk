package livekit_client.dist.src.room.track;

@:jsRequire("livekit-client/dist/src/room/track/Track") @valueModuleOnly extern class Track {
	static function attachToElement(track:js.html.MediaStreamTrack, element:js.html.MediaElement):Void;
	static function detachTrack(track:js.html.MediaStreamTrack, element:js.html.MediaElement):Void;
}