package livekit_client;

@:jsRequire("livekit-client", "RemoteTrackPublication") extern class RemoteTrackPublication extends TrackPublication {
	function new(kind:Dynamic, id:String, name:String, autoSubscribe:Null<Bool>);
	private var allowed : Bool;
	@:optional
	private var subscribed : Bool;
	private var disabled : Bool;
	@:optional
	private var currentVideoQuality : VideoQuality;
	@:optional
	private var videoDimensions : Dynamic;
	/**
		Subscribe or unsubscribe to this remote track
	**/
	function setSubscribed(subscribed:Bool):Void;
	final subscriptionStatus : livekit_client.trackpublication.SubscriptionStatus;
	final permissionStatus : livekit_client.trackpublication.PermissionStatus;
	final isDesired : Bool;
	/**
		disable server from sending down data for this track. this is useful when
		the participant is off screen, you may disable streaming down their video
		to reduce bandwidth requirements
	**/
	function setEnabled(enabled:Bool):Void;
	/**
		for tracks that support simulcasting, adjust subscribed quality
		
		This indicates the highest quality the client can accept. if network
		bandwidth does not allow, server will automatically reduce quality to
		optimize for uninterrupted video
	**/
	function setVideoQuality(quality:VideoQuality):Void;
	function setVideoDimensions(dimensions:Dynamic):Void;
	final videoQuality : Null<VideoQuality>;
	function setTrack(?track:Dynamic):Void;
	function setAllowed(allowed:Bool):Void;
	function updateInfo(info:livekit_client.dist.src.proto.livekit_models.TrackInfo):Void;
	private var emitSubscriptionUpdateIfChanged : Dynamic;
	private var emitPermissionUpdateIfChanged : Dynamic;
	private var isManualOperationAllowed : Dynamic;
	private dynamic function handleEnded(track:Dynamic):Void;
	private final isAdaptiveStream : Bool;
	private dynamic function handleVisibilityChange(visible:Bool):Void;
	private dynamic function handleVideoDimensionsChange(dimensions:Dynamic):Void;
	function emitTrackUpdate():Void;
	static var prototype : RemoteTrackPublication;
}