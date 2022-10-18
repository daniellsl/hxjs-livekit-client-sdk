package livekit_client.dist.src.room.pctransport;

@:jsRequire("livekit-client/dist/src/room/PCTransport", "default") extern class Default {
	function new(?config:js.html.RTCConfiguration);
	var pc : js.html.rtc.PeerConnection;
	var pendingCandidates : Array<js.html.RTCIceCandidateInit>;
	var restartingIce : Bool;
	var renegotiate : Bool;
	var trackBitrates : Array<livekit_client.TrackBitrateInfo>;
	@:optional
	dynamic function onOffer(offer:js.html.RTCSessionDescriptionInit):Void;
	final isICEConnected : Bool;
	function addIceCandidate(candidate:js.html.RTCIceCandidateInit):js.lib.Promise<ts.Undefined>;
	function setRemoteDescription(sd:js.html.RTCSessionDescriptionInit):js.lib.Promise<ts.Undefined>;
	var negotiate : {
		@:selfCall
		function call(args:haxe.extern.Rest<Any>):js.lib.Promise<ts.Undefined>;
		dynamic function cancel(?reason:Dynamic):Void;
	};
	function createAndSendOffer(?options:js.html.RTCOfferOptions):js.lib.Promise<ts.Undefined>;
	function createAndSetAnswer():js.lib.Promise<js.html.RTCSessionDescriptionInit>;
	function setTrackCodecBitrate(sid:String, codec:String, maxbr:Float):Void;
	function close():Void;
	private var setMungedLocalDescription : Dynamic;
	static var prototype : Default;
}