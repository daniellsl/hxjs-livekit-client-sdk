package livekit_client;

@:jsRequire("livekit-client", "TrackPublication") extern class TrackPublication {
	function new(kind:livekit_client.track.Kind, id:String, name:String);
	var kind : livekit_client.track.Kind;
	var trackName : String;
	var trackSid : String;
	@:optional
	var track : Track;
	var source : livekit_client.track.Source;
	/**
		MimeType of the published track
	**/
	@:optional
	var mimeType : String;
	/**
		dimension of the original published stream, video-only
	**/
	@:optional
	var dimensions : livekit_client.track.Dimensions;
	/**
		true if track was simulcasted to server, video-only
	**/
	@:optional
	var simulcasted : Bool;
	@:optional
	var trackInfo : Dynamic;
	private var metadataMuted : Bool;
	function setTrack(?track:Track):Void;
	final isMuted : Bool;
	final isEnabled : Bool;
	final isSubscribed : Bool;
	/**
		an [AudioTrack] if this publication holds an audio track
	**/
	final audioTrack : Null<ts.AnyOf2<LocalAudioTrack, RemoteAudioTrack>>;
	/**
		an [VideoTrack] if this publication holds a video track
	**/
	final videoTrack : Null<ts.AnyOf2<LocalVideoTrack, RemoteVideoTrack>>;
	dynamic function handleMuted():Void;
	dynamic function handleUnmuted():Void;
	function updateInfo(info:Dynamic):Void;
	static var prototype : TrackPublication;
}