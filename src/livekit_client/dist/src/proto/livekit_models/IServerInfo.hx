package livekit_client.dist.src.proto.livekit_models;

/**
	details about the server
**/
typedef IServerInfo = {
	var edition : ServerInfo_Edition;
	var version : String;
	var protocol : Float;
	var region : String;
	var nodeId : String;
	/**
		additional debugging information. sent only if server is in development mode
	**/
	var debugInfo : String;
};