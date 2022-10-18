package livekit_client;

/**
	Events are the primary way LiveKit notifies your application of changes.
	
	The following are events emitted by [[Room]], listen to room events like
	
	```typescript
	room.on(RoomEvent.TrackPublished, (track, publication, participant) => {})
	```
**/
@:jsRequire("livekit-client", "RoomEvent") @:enum extern abstract RoomEvent(String) from String to String {
	/**
		When the connection to the server has been established
	**/
	var Connected;
	/**
		When the connection to the server has been interrupted and it's attempting
		to reconnect.
	**/
	var Reconnecting;
	/**
		Fires when a reconnection has been successful.
	**/
	var Reconnected;
	/**
		When disconnected from room. This fires when room.disconnect() is called or
		when an unrecoverable connection issue had occured
	**/
	var Disconnected;
	/**
		Whenever the connection state of the room changes
		
		args: ([[ConnectionState]])
	**/
	var ConnectionStateChanged;
	var StateChanged;
	/**
		When input or output devices on the machine have changed.
	**/
	var MediaDevicesChanged;
	/**
		When a [[RemoteParticipant]] joins *after* the local
		participant. It will not emit events for participants that are already
		in the room
		
		args: ([[RemoteParticipant]])
	**/
	var ParticipantConnected;
	/**
		When a [[RemoteParticipant]] leaves *after* the local
		participant has joined.
		
		args: ([[RemoteParticipant]])
	**/
	var ParticipantDisconnected;
	/**
		When a new track is published to room *after* the local
		participant has joined. It will not fire for tracks that are already published.
		
		A track published doesn't mean the participant has subscribed to it. It's
		simply reflecting the state of the room.
		
		args: ([[RemoteTrackPublication]], [[RemoteParticipant]])
	**/
	var TrackPublished;
	/**
		The [[LocalParticipant]] has subscribed to a new track. This event will **always**
		fire as long as new tracks are ready for use.
		
		args: ([[RemoteTrack]], [[RemoteTrackPublication]], [[RemoteParticipant]])
	**/
	var TrackSubscribed;
	/**
		Could not subscribe to a track
		
		args: (track sid, [[RemoteParticipant]])
	**/
	var TrackSubscriptionFailed;
	/**
		A [[RemoteParticipant]] has unpublished a track
		
		args: ([[RemoteTrackPublication]], [[RemoteParticipant]])
	**/
	var TrackUnpublished;
	/**
		A subscribed track is no longer available. Clients should listen to this
		event and ensure they detach tracks.
		
		args: ([[Track]], [[RemoteTrackPublication]], [[RemoteParticipant]])
	**/
	var TrackUnsubscribed;
	/**
		A track that was muted, fires on both [[RemoteParticipant]]s and [[LocalParticipant]]
		
		args: ([[TrackPublication]], [[Participant]])
	**/
	var TrackMuted;
	/**
		A track that was unmuted, fires on both [[RemoteParticipant]]s and [[LocalParticipant]]
		
		args: ([[TrackPublication]], [[Participant]])
	**/
	var TrackUnmuted;
	/**
		A local track was published successfully. This event is helpful to know
		when to update your local UI with the newly published track.
		
		args: ([[LocalTrackPublication]], [[LocalParticipant]])
	**/
	var LocalTrackPublished;
	/**
		A local track was unpublished. This event is helpful to know when to remove
		the local track from your UI.
		
		When a user stops sharing their screen by pressing "End" on the browser UI,
		this event will also fire.
		
		args: ([[LocalTrackPublication]], [[LocalParticipant]])
	**/
	var LocalTrackUnpublished;
	/**
		Active speakers changed. List of speakers are ordered by their audio level.
		loudest speakers first. This will include the LocalParticipant too.
		
		Speaker updates are sent only to the publishing participant and their subscribers.
		
		args: (Array<[[Participant]]>)
	**/
	var ActiveSpeakersChanged;
	/**
		Participant metadata is a simple way for app-specific state to be pushed to
		all users.
		When RoomService.UpdateParticipantMetadata is called to change a participant's
		state, *all*  participants in the room will fire this event.
		
		args: (prevMetadata: string, [[Participant]])
	**/
	var ParticipantMetadataChanged;
	/**
		Room metadata is a simple way for app-specific state to be pushed to
		all users.
		When RoomService.UpdateRoomMetadata is called to change a room's state,
		*all*  participants in the room will fire this event.
		
		args: (string)
	**/
	var RoomMetadataChanged;
	/**
		Data received from another participant.
		Data packets provides the ability to use LiveKit to send/receive arbitrary payloads.
		All participants in the room will receive the messages sent to the room.
		
		args: (payload: Uint8Array, participant: [[Participant]], kind: [[DataPacket_Kind]])
	**/
	var DataReceived;
	/**
		Connection quality was changed for a Participant. It'll receive updates
		from the local participant, as well as any [[RemoteParticipant]]s that we are
		subscribed to.
		
		args: (connectionQuality: [[ConnectionQuality]], participant: [[Participant]])
	**/
	var ConnectionQualityChanged;
	/**
		StreamState indicates if a subscribed (remote) track has been paused by the SFU
		(typically this happens because of subscriber's bandwidth constraints)
		
		When bandwidth conditions allow, the track will be resumed automatically.
		TrackStreamStateChanged will also be emitted when that happens.
		
		args: (pub: [[RemoteTrackPublication]], streamState: [[Track.StreamState]],
		        participant: [[RemoteParticipant]])
	**/
	var TrackStreamStateChanged;
	/**
		One of subscribed tracks have changed its permissions for the current
		participant. If permission was revoked, then the track will no longer
		be subscribed. If permission was granted, a TrackSubscribed event will
		be emitted.
		
		args: (pub: [[RemoteTrackPublication]],
		        status: [[TrackPublication.SubscriptionStatus]],
		        participant: [[RemoteParticipant]])
	**/
	var TrackSubscriptionPermissionChanged;
	/**
		One of subscribed tracks have changed its status for the current
		participant.
		
		args: (pub: [[RemoteTrackPublication]],
		        status: [[TrackPublication.SubscriptionStatus]],
		        participant: [[RemoteParticipant]])
	**/
	var TrackSubscriptionStatusChanged;
	/**
		LiveKit will attempt to autoplay all audio tracks when you attach them to
		audio elements. However, if that fails, we'll notify you via AudioPlaybackStatusChanged.
		`Room.canPlayAudio` will indicate if audio playback is permitted.
	**/
	var AudioPlaybackStatusChanged;
	/**
		When we have encountered an error while attempting to create a track.
		The errors take place in getUserMedia().
		Use MediaDeviceFailure.getFailure(error) to get the reason of failure.
		[[LocalParticipant.lastCameraError]] and [[LocalParticipant.lastMicrophoneError]]
		will indicate if it had an error while creating the audio or video track respectively.
		
		args: (error: Error)
	**/
	var MediaDevicesError;
	/**
		A participant's permission has changed. Currently only fired on LocalParticipant.
		args: (prevPermissions: [[ParticipantPermission]], participant: [[Participant]])
	**/
	var ParticipantPermissionsChanged;
	/**
		Signal connected, can publish tracks.
	**/
	var SignalConnected;
}