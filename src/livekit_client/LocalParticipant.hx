package livekit_client;

@:jsRequire("livekit-client", "LocalParticipant") extern class LocalParticipant extends Participant {
	function new(sid:String, identity:String, engine:Dynamic, options:Dynamic);
	var engine : Dynamic;
	private var pendingPublishing : Dynamic;
	private var cameraError : Dynamic;
	private var microphoneError : Dynamic;
	private var participantTrackPermissions : Dynamic;
	private var allParticipantsAllowedToSubscribe : Dynamic;
	@:optional
	private var roomOptions : Dynamic;
	final lastCameraError : Null<js.lib.Error>;
	final lastMicrophoneError : Null<js.lib.Error>;
	/**
		Finds the first track that matches the source filter, for example, getting
		the user's camera track with getTrackBySource(Track.Source.Camera).
	**/
	function getTrack(source:livekit_client.track.Source):Null<LocalTrackPublication>;
	/**
		Finds the first track that matches the track's name.
	**/
	function getTrackByName(name:String):Null<LocalTrackPublication>;
	/**
		Enable or disable a participant's camera track.
		
		If a track has already published, it'll mute or unmute the track.
		Resolves with a `LocalTrackPublication` instance if successful and `undefined` otherwise
	**/
	function setCameraEnabled(enabled:Bool, ?options:VideoCaptureOptions, ?publishOptions:TrackPublishOptions):js.lib.Promise<Null<LocalTrackPublication>>;
	/**
		Enable or disable a participant's microphone track.
		
		If a track has already published, it'll mute or unmute the track.
		Resolves with a `LocalTrackPublication` instance if successful and `undefined` otherwise
	**/
	function setMicrophoneEnabled(enabled:Bool, ?options:AudioCaptureOptions, ?publishOptions:TrackPublishOptions):js.lib.Promise<Null<LocalTrackPublication>>;
	/**
		Start or stop sharing a participant's screen
		Resolves with a `LocalTrackPublication` instance if successful and `undefined` otherwise
	**/
	function setScreenShareEnabled(enabled:Bool, ?options:ScreenShareCaptureOptions, ?publishOptions:TrackPublishOptions):js.lib.Promise<Null<LocalTrackPublication>>;
	/**
		Enable or disable publishing for a track by source. This serves as a simple
		way to manage the common tracks (camera, mic, or screen share).
		Resolves with LocalTrackPublication if successful and void otherwise
	**/
	private var setTrackEnabled : Dynamic;
	/**
		Publish both camera and microphone at the same time. This is useful for
		displaying a single Permission Dialog box to the end user.
	**/
	function enableCameraAndMicrophone():js.lib.Promise<ts.Undefined>;
	/**
		Create local camera and/or microphone tracks
	**/
	function createTracks(?options:CreateLocalTracksOptions):js.lib.Promise<Array<LocalTrack>>;
	/**
		Creates a screen capture tracks with getDisplayMedia().
		A LocalVideoTrack is always created and returned.
		If { audio: true }, and the browser supports audio capture, a LocalAudioTrack is also created.
	**/
	function createScreenTracks(?options:ScreenShareCaptureOptions):js.lib.Promise<Array<LocalTrack>>;
	/**
		Publish a new track to the room
	**/
	function publishTrack(track:ts.AnyOf2<js.html.MediaStreamTrack, LocalTrack>, ?options:TrackPublishOptions):js.lib.Promise<LocalTrackPublication>;
	function publishAdditionalCodecForTrack(track:ts.AnyOf2<js.html.MediaStreamTrack, LocalTrack>, videoCodec:String, ?options:TrackPublishOptions):js.lib.Promise<ts.Undefined>;
	function unpublishTrack(track:ts.AnyOf2<js.html.MediaStreamTrack, LocalTrack>, ?stopOnUnpublish:Bool):Null<LocalTrackPublication>;
	function unpublishTracks(tracks:ts.AnyOf2<Array<LocalTrack>, Array<js.html.MediaStreamTrack>>):Array<LocalTrackPublication>;
	/**
		Publish a new data payload to the room. Data will be forwarded to each
		participant in the room if the destination argument is empty
	**/
	function publishData(data:js.lib.Uint8Array, kind:DataPacket_Kind, ?destination:ts.AnyOf2<Array<RemoteParticipant>, Array<String>>):js.lib.Promise<ts.Undefined>;
	/**
		Control who can subscribe to LocalParticipant's published tracks.
		
		By default, all participants can subscribe. This allows fine-grained control over
		who is able to subscribe at a participant and track level.
		
		Note: if access is given at a track-level (i.e. both [allParticipantsAllowed] and
		[ParticipantTrackPermission.allTracksAllowed] are false), any newer published tracks
		will not grant permissions to any participants and will require a subsequent
		permissions update to allow subscription.
	**/
	function setTrackSubscriptionPermissions(allParticipantsAllowed:Bool, ?participantTrackPermissions:Array<livekit_client.dist.src.room.participant.participanttrackpermission.ParticipantTrackPermission>):Void;
	private var updateTrackSubscriptionPermissions : Dynamic;
	private var onTrackUnmuted : Dynamic;
	private var onTrackMuted : Dynamic;
	private var onTrackUpstreamPaused : Dynamic;
	private var onTrackUpstreamResumed : Dynamic;
	private var handleSubscribedQualityUpdate : Dynamic;
	private var handleLocalTrackUnpublished : Dynamic;
	private var handleTrackEnded : Dynamic;
	private var getPublicationForTrack : Dynamic;
	function publishedTracksInfo():Array<livekit_client.dist.src.proto.livekit_rtc.TrackPublishedResponse>;
	function dataChannelsInfo():Array<livekit_client.dist.src.proto.livekit_rtc.DataChannelInfo>;
	static var prototype : LocalParticipant;
}