package livekit_client.dist.src.room.rtcengine;

typedef EngineEventCallbacks = {
	dynamic function connected():Void;
	dynamic function disconnected(?reason:livekit_client.DisconnectReason):Void;
	dynamic function resuming():Void;
	dynamic function resumed():Void;
	dynamic function restarting():Void;
	dynamic function restarted(joinResp:livekit_client.dist.src.proto.livekit_rtc.JoinResponse):Void;
	dynamic function signalResumed():Void;
	dynamic function mediaTrackAdded(track:js.html.MediaStreamTrack, streams:js.html.MediaStream, ?receiver:js.html.rtc.RtpReceiver):Void;
	dynamic function activeSpeakersUpdate(speakers:Array<livekit_client.dist.src.proto.livekit_models.SpeakerInfo>):Void;
	dynamic function dataPacketReceived(userPacket:livekit_client.dist.src.proto.livekit_models.UserPacket, kind:livekit_client.DataPacket_Kind):Void;
	dynamic function transportsCreated(publisher:livekit_client.dist.src.room.pctransport.Default, subscriber:livekit_client.dist.src.room.pctransport.Default):Void;
};