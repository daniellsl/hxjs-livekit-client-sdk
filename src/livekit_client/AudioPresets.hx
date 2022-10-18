package livekit_client;

@:jsRequire("livekit-client", "AudioPresets") @valueModuleOnly extern class AudioPresets {
	static final telephone : AudioPreset;
	static final speech : AudioPreset;
	static final music : AudioPreset;
	static final musicStereo : AudioPreset;
	static final musicHighQuality : AudioPreset;
	static final musicHighQualityStereo : AudioPreset;
}