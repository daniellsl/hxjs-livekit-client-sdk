package livekit_client.trackpublication;

@:jsRequire("livekit-client", "TrackPublication.SubscriptionStatus") @:enum extern abstract SubscriptionStatus(String) from String to String {
	var Desired;
	var Subscribed;
	var Unsubscribed;
}