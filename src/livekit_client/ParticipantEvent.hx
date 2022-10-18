package livekit_client;

@:jsRequire("livekit-client", "ParticipantEvent") @:enum extern abstract ParticipantEvent(String) from String to String {
	/**
		When a new track is published to room *after* the local
		participant has joined. It will not fire for tracks that are already published.
		
		A track published doesn't mean the participant has subscribed to it. It's
		simply reflecting the state of the room.
		
		args: ([[RemoteTrackPublication]])
	**/
	var TrackPublished;
	/**
		Successfully subscribed to the [[RemoteParticipant]]'s track.
		This event will **always** fire as long as new tracks are ready for use.
		
		args: ([[RemoteTrack]], [[RemoteTrackPublication]])
	**/
	var TrackSubscribed;
	/**
		Could not subscribe to a track
		
		args: (track sid)
	**/
	var TrackSubscriptionFailed;
	/**
		A [[RemoteParticipant]] has unpublished a track
		
		args: ([[RemoteTrackPublication]])
	**/
	var TrackUnpublished;
	/**
		A subscribed track is no longer available. Clients should listen to this
		event and ensure they detach tracks.
		
		args: ([[RemoteTrack]], [[RemoteTrackPublication]])
	**/
	var TrackUnsubscribed;
	/**
		A track that was muted, fires on both [[RemoteParticipant]]s and [[LocalParticipant]]
		
		args: ([[TrackPublication]])
	**/
	var TrackMuted;
	/**
		A track that was unmuted, fires on both [[RemoteParticipant]]s and [[LocalParticipant]]
		
		args: ([[TrackPublication]])
	**/
	var TrackUnmuted;
	/**
		A local track was published successfully. This event is helpful to know
		when to update your local UI with the newly published track.
		
		args: ([[LocalTrackPublication]])
	**/
	var LocalTrackPublished;
	/**
		A local track was unpublished. This event is helpful to know when to remove
		the local track from your UI.
		
		When a user stops sharing their screen by pressing "End" on the browser UI,
		this event will also fire.
		
		args: ([[LocalTrackPublication]])
	**/
	var LocalTrackUnpublished;
	/**
		Participant metadata is a simple way for app-specific state to be pushed to
		all users.
		When RoomService.UpdateParticipantMetadata is called to change a participant's
		state, *all*  participants in the room will fire this event.
		To access the current metadata, see [[Participant.metadata]].
		
		args: (prevMetadata: string)
	**/
	var ParticipantMetadataChanged;
	/**
		Data received from this participant as sender.
		Data packets provides the ability to use LiveKit to send/receive arbitrary payloads.
		All participants in the room will receive the messages sent to the room.
		
		args: (payload: Uint8Array, kind: [[DataPacket_Kind]])
	**/
	var DataReceived;
	/**
		Has speaking status changed for the current participant
		
		args: (speaking: boolean)
	**/
	var IsSpeakingChanged;
	/**
		Connection quality was changed for a Participant. It'll receive updates
		from the local participant, as well as any [[RemoteParticipant]]s that we are
		subscribed to.
		
		args: (connectionQuality: [[ConnectionQuality]])
	**/
	var ConnectionQualityChanged;
	/**
		StreamState indicates if a subscribed track has been paused by the SFU
		(typically this happens because of subscriber's bandwidth constraints)
		
		When bandwidth conditions allow, the track will be resumed automatically.
		TrackStreamStateChanged will also be emitted when that happens.
		
		args: (pub: [[RemoteTrackPublication]], streamState: [[Track.StreamState]])
	**/
	var TrackStreamStateChanged;
	/**
		One of subscribed tracks have changed its permissions for the current
		participant. If permission was revoked, then the track will no longer
		be subscribed. If permission was granted, a TrackSubscribed event will
		be emitted.
		
		args: (pub: [[RemoteTrackPublication]],
		        status: [[TrackPublication.SubscriptionStatus]])
	**/
	var TrackSubscriptionPermissionChanged;
	/**
		One of the remote participants publications has changed its subscription status.
	**/
	var TrackSubscriptionStatusChanged;
	var MediaDevicesError;
	/**
		A participant's permission has changed. Currently only fired on LocalParticipant.
		args: (prevPermissions: [[ParticipantPermission]])
	**/
	var ParticipantPermissionsChanged;
}