package livekit_client.dist.src.proto.livekit_models;

typedef IParticipantPermission = {
	/**
		allow participant to subscribe to other tracks in the room
	**/
	var canSubscribe : Bool;
	/**
		allow participant to publish new tracks to room
	**/
	var canPublish : Bool;
	/**
		allow participant to publish data
	**/
	var canPublishData : Bool;
	/**
		indicates that it's hidden to others
	**/
	var hidden : Bool;
	/**
		indicates it's a recorder instance
	**/
	var recorder : Bool;
};