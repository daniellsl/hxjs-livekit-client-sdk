package livekit_client;

@:jsRequire("livekit-client", "LocalTrackPublication") extern class LocalTrackPublication extends TrackPublication {
	function new(kind:Dynamic, ti:Dynamic, ?track:Dynamic);
	@:optional
	var options : Dynamic;
	final isUpstreamPaused : Null<Bool>;
	function setTrack(?track:Dynamic):Void;
	/**
		Mute the track associated with this publication
	**/
	function mute():js.lib.Promise<Dynamic>;
	/**
		Unmute track associated with this publication
	**/
	function unmute():js.lib.Promise<Dynamic>;
	/**
		Pauses the media stream track associated with this publication from being sent to the server
		and signals "muted" event to other participants
		Useful if you want to pause the stream without pausing the local media stream track
	**/
	function pauseUpstream():js.lib.Promise<ts.Undefined>;
	/**
		Resumes sending the media stream track associated with this publication to the server after a call to [[pauseUpstream()]]
		and signals "unmuted" event to other participants (unless the track is explicitly muted)
	**/
	function resumeUpstream():js.lib.Promise<ts.Undefined>;
	dynamic function handleTrackEnded():Void;
	static var prototype : LocalTrackPublication;
}