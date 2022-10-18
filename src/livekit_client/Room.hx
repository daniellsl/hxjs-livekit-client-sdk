package livekit_client;

/**
	In LiveKit, a room is the logical grouping for a list of participants.
	Participants in a room can publish tracks, and subscribe to others' tracks.
	
	a Room fires [[RoomEvent | RoomEvents]].
**/
@:jsRequire("livekit-client", "Room") extern class Room {
	/**
		Creates a new Room, the primary construct for a LiveKit session.
	**/
	function new(?options:Dynamic);
	var state : ConnectionState;
	/**
		map of sid: [[RemoteParticipant]]
	**/
	var participants : js.lib.Map<String, RemoteParticipant>;
	/**
		list of participants that are actively speaking. when this changes
		a [[RoomEvent.ActiveSpeakersChanged]] event is fired
	**/
	var activeSpeakers : Array<Dynamic>;
	var engine : livekit_client.dist.src.room.rtcengine.Default;
	/**
		server assigned unique room id
	**/
	var sid : String;
	/**
		user assigned name, derived from JWT token
	**/
	var name : String;
	/**
		the current participant
	**/
	var localParticipant : LocalParticipant;
	/**
		room metadata
	**/
	var metadata : Null<String>;
	/**
		options of room
	**/
	var options : Dynamic;
	private var identityToSid : Dynamic;
	/**
		connect options of room
	**/
	@:optional
	private var connOptions : Dynamic;
	private var audioEnabled : Dynamic;
	@:optional
	private var audioContext : Dynamic;
	/**
		used for aborting pending connections to a LiveKit server
	**/
	@:optional
	private var abortController : Dynamic;
	/**
		future holding client initiated connection attempt
	**/
	@:optional
	private var connectFuture : Dynamic;
	/**
		future holding sdk initiated reconnection attempt
	**/
	@:optional
	private var reconnectFuture : Dynamic;
	private var createEngine : Dynamic;
	/**
		prepares the connection to the livekit server by sending a HEAD request in order to
		1. speed up DNS resolution
		2. speed up TLS setup
		on the actual connection request
		throws an error if server is not reachable after the request timeout
	**/
	function prepareConnection(url:String):js.lib.Promise<ts.Undefined>;
	dynamic function connect(url:String, token:String, ?opts:Dynamic):js.lib.Promise<ts.Undefined>;
	/**
		disconnects the room, emits [[RoomEvent.Disconnected]]
	**/
	dynamic function disconnect(?stopTracks:Bool):js.lib.Promise<ts.Undefined>;
	/**
		retrieves a participant by identity
	**/
	function getParticipantByIdentity(identity:String):Dynamic;
	private var clearConnectionFutures : Dynamic;
	function simulateScenario(scenario:String):Void;
	private var onBeforeUnload : Dynamic;
	/**
		Browsers have different policies regarding audio playback. Most requiring
		some form of user interaction (click/tap/etc).
		In those cases, audio will be silent until a click/tap triggering one of the following
		- `startAudio`
		- `getUserMedia`
	**/
	function startAudio():js.lib.Promise<ts.Undefined>;
	/**
		Returns true if audio playback is enabled
	**/
	final canPlaybackAudio : Bool;
	/**
		Switches all active device used in this room to the given device.
		
		Note: setting AudioOutput is not supported on some browsers. See [setSinkId](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement/setSinkId#browser_compatibility)
	**/
	function switchActiveDevice(kind:js.html.MediaDeviceKind, deviceId:String):js.lib.Promise<ts.Undefined>;
	private var recreateEngine : Dynamic;
	private var onTrackAdded : Dynamic;
	private var handleRestarting : Dynamic;
	private var handleRestarted : Dynamic;
	private var handleDisconnect : Dynamic;
	private var handleParticipantUpdates : Dynamic;
	private var handleParticipantDisconnected : Dynamic;
	private var handleActiveSpeakersUpdate : Dynamic;
	private var handleSpeakersChanged : Dynamic;
	private var handleStreamStateUpdate : Dynamic;
	private var handleSubscriptionPermissionUpdate : Dynamic;
	private var handleDataPacket : Dynamic;
	private var handleAudioPlaybackStarted : Dynamic;
	private var handleAudioPlaybackFailed : Dynamic;
	private var handleDeviceChange : Dynamic;
	private var handleRoomUpdate : Dynamic;
	private var handleConnectionQualityUpdate : Dynamic;
	private var acquireAudioContext : Dynamic;
	private var createParticipant : Dynamic;
	private var getOrCreateParticipant : Dynamic;
	private var sendSyncState : Dynamic;
	/**
		After resuming, we'll need to notify the server of the current
		subscription settings.
	**/
	private var updateSubscriptions : Dynamic;
	private var setAndEmitConnectionState : Dynamic;
	private var emitWhenConnected : Dynamic;
	private var onLocalParticipantMetadataChanged : Dynamic;
	private var onLocalTrackMuted : Dynamic;
	private var onLocalTrackUnmuted : Dynamic;
	private var onLocalTrackPublished : Dynamic;
	private var onLocalTrackUnpublished : Dynamic;
	private var onLocalConnectionQualityChanged : Dynamic;
	private var onMediaDevicesError : Dynamic;
	private var onLocalParticipantPermissionsChanged : Dynamic;
	function emit<E>(event:E, args:haxe.extern.Rest<Any>):Bool;
	static var prototype : Room;
	/**
		getLocalDevices abstracts navigator.mediaDevices.enumerateDevices.
		In particular, it handles Chrome's unique behavior of creating `default`
		devices. When encountered, it'll be removed from the list of devices.
		The actual default device will be placed at top.
	**/
	static function getLocalDevices(?kind:js.html.MediaDeviceKind, ?requestPermissions:Bool):js.lib.Promise<Array<js.html.MediaDeviceInfo>>;
}