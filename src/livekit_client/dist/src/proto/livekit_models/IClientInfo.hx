package livekit_client.dist.src.proto.livekit_models;

/**
	details about the client
**/
typedef IClientInfo = {
	var sdk : ClientInfo_SDK;
	var version : String;
	var protocol : Float;
	var os : String;
	var osVersion : String;
	var deviceModel : String;
	var browser : String;
	var browserVersion : String;
	var address : String;
	/**
		wifi, wired, cellular, vpn, empty if not known
	**/
	var network : String;
};