package livekit_client;

typedef TrackEventCallbacks = {
	dynamic function message():Void;
	dynamic function muted(?track:Dynamic):Void;
	dynamic function unmuted(?track:Dynamic):Void;
	dynamic function ended(?track:Dynamic):Void;
	dynamic function updateSettings():Void;
	dynamic function updateSubscription():Void;
	dynamic function audioPlaybackStarted():Void;
	dynamic function audioPlaybackFailed(error:js.lib.Error):Void;
	dynamic function audioSilenceDetected():Void;
	dynamic function visibilityChanged(visible:Bool, ?track:Dynamic):Void;
	dynamic function videoDimensionsChanged(dimensions:livekit_client.track.Dimensions, ?track:Dynamic):Void;
	dynamic function elementAttached(element:js.html.MediaElement):Void;
	dynamic function elementDetached(element:js.html.MediaElement):Void;
	dynamic function upstreamPaused(track:Dynamic):Void;
	dynamic function upstreamResumed(track:Dynamic):Void;
};