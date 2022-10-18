package livekit_client;

@:jsRequire("livekit-client", "EngineEvent") @:enum extern abstract EngineEvent(String) from String to String {
	var TransportsCreated;
	var Connected;
	var Disconnected;
	var Resuming;
	var Resumed;
	var Restarting;
	var Restarted;
	var SignalResumed;
	var MediaTrackAdded;
	var ActiveSpeakersUpdate;
	var DataPacketReceived;
}