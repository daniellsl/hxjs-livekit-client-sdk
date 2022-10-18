package livekit_client;

@:jsRequire("livekit-client", "TrackEvent") @:enum extern abstract TrackEvent(String) from String to String {
	var Message;
	var Muted;
	var Unmuted;
	var Ended;
	var Subscribed;
	var Unsubscribed;
	var UpdateSettings;
	var UpdateSubscription;
	var AudioPlaybackStarted;
	var AudioPlaybackFailed;
	var AudioSilenceDetected;
	var VisibilityChanged;
	var VideoDimensionsChanged;
	var ElementAttached;
	var ElementDetached;
	var UpstreamPaused;
	var UpstreamResumed;
	var SubscriptionPermissionChanged;
	/**
		Fires on RemoteTrackPublication
	**/
	var SubscriptionStatusChanged;
}