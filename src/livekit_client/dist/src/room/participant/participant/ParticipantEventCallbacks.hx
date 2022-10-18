package livekit_client.dist.src.room.participant.participant;

typedef ParticipantEventCallbacks = {
	dynamic function trackPublished(publication:Dynamic):Void;
	dynamic function trackSubscribed(track:Dynamic, publication:Dynamic):Void;
	dynamic function trackSubscriptionFailed(trackSid:String):Void;
	dynamic function trackUnpublished(publication:Dynamic):Void;
	dynamic function trackUnsubscribed(track:Dynamic, publication:Dynamic):Void;
	dynamic function trackMuted(publication:Dynamic):Void;
	dynamic function trackUnmuted(publication:Dynamic):Void;
	dynamic function localTrackPublished(publication:Dynamic):Void;
	dynamic function localTrackUnpublished(publication:Dynamic):Void;
	dynamic function participantMetadataChanged(prevMetadata:Null<String>, ?participant:Dynamic):Void;
	dynamic function dataReceived(payload:js.lib.Uint8Array, kind:livekit_client.DataPacket_Kind):Void;
	dynamic function isSpeakingChanged(speaking:Bool):Void;
	dynamic function connectionQualityChanged(connectionQuality:livekit_client.ConnectionQuality):Void;
	dynamic function trackStreamStateChanged(publication:Dynamic, streamState:livekit_client.track.StreamState):Void;
	dynamic function trackSubscriptionPermissionChanged(publication:Dynamic, status:Dynamic):Void;
	dynamic function mediaDevicesError(error:js.lib.Error):Void;
	dynamic function participantPermissionsChanged(prevPermissions:livekit_client.dist.src.proto.livekit_models.ParticipantPermission):Void;
	dynamic function trackSubscriptionStatusChanged(publication:Dynamic, status:Dynamic):Void;
};