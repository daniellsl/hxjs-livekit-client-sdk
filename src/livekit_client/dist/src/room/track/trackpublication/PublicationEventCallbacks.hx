package livekit_client.dist.src.room.track.trackpublication;

typedef PublicationEventCallbacks = {
	dynamic function muted():Void;
	dynamic function unmuted():Void;
	dynamic function ended(?track:livekit_client.Track):Void;
	dynamic function updateSettings(settings:Dynamic):Void;
	dynamic function subscriptionPermissionChanged(status:livekit_client.trackpublication.PermissionStatus, prevStatus:livekit_client.trackpublication.PermissionStatus):Void;
	dynamic function updateSubscription(sub:Dynamic):Void;
	dynamic function subscribed(track:Dynamic):Void;
	dynamic function unsubscribed(track:Dynamic):Void;
	dynamic function subscriptionStatusChanged(status:livekit_client.trackpublication.SubscriptionStatus, prevStatus:livekit_client.trackpublication.SubscriptionStatus):Void;
};