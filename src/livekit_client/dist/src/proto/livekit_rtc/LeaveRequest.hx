package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "LeaveRequest") extern class LeaveRequest {
	/**
		sent when server initiates the disconnect due to server-restart
		indicates clients should attempt full-reconnect sequence
	**/
	var canReconnect : Bool;
	var reason : livekit_client.DisconnectReason;
}