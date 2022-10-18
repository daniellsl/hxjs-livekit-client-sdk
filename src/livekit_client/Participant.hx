package livekit_client;

@:jsRequire("livekit-client", "Participant") extern class Participant {
	function new(sid:String, identity:String, ?name:String, ?metadata:String);
	@:optional
	private var participantInfo : livekit_client.dist.src.proto.livekit_models.ParticipantInfo;
	var audioTracks : js.lib.Map<String, Dynamic>;
	var videoTracks : js.lib.Map<String, Dynamic>;
	/**
		map of track sid => all published tracks
	**/
	var tracks : js.lib.Map<String, Dynamic>;
	/**
		audio level between 0-1.0, 1 being loudest, 0 being softest
	**/
	var audioLevel : Float;
	/**
		if participant is currently speaking
	**/
	var isSpeaking : Bool;
	/**
		server assigned unique id
	**/
	var sid : String;
	/**
		client assigned identity, encoded in JWT token
	**/
	var identity : String;
	/**
		client assigned display name, encoded in JWT token
	**/
	@:optional
	var name : String;
	/**
		client metadata, opaque to livekit
	**/
	@:optional
	var metadata : String;
	@:optional
	var lastSpokeAt : js.lib.Date;
	@:optional
	var permissions : livekit_client.dist.src.proto.livekit_models.ParticipantPermission;
	private var _connectionQuality : Dynamic;
	function getTracks():Array<Dynamic>;
	/**
		Finds the first track that matches the source filter, for example, getting
		the user's camera track with getTrackBySource(Track.Source.Camera).
	**/
	function getTrack(source:livekit_client.track.Source):Dynamic;
	/**
		Finds the first track that matches the track's name.
	**/
	function getTrackByName(name:String):Dynamic;
	final connectionQuality : ConnectionQuality;
	final isCameraEnabled : Bool;
	final isMicrophoneEnabled : Bool;
	final isScreenShareEnabled : Bool;
	final isLocal : Bool;
	/**
		when participant joined the room
	**/
	final joinedAt : Null<js.lib.Date>;
	function updateInfo(info:livekit_client.dist.src.proto.livekit_models.ParticipantInfo):Void;
	function setMetadata(md:String):Void;
	function setPermissions(permissions:livekit_client.dist.src.proto.livekit_models.ParticipantPermission):Bool;
	function setIsSpeaking(speaking:Bool):Void;
	function setConnectionQuality(q:livekit_client.dist.src.proto.livekit_models.ConnectionQuality):Void;
	private function addTrackPublication(publication:Dynamic):Void;
	static var prototype : Participant;
}