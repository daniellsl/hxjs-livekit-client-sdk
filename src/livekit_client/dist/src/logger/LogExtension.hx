package livekit_client.dist.src.logger;

typedef LogExtension = ts.AnyOf2<(level:livekit_client.LogLevel, msg:String) -> Void, (level:livekit_client.LogLevel, msg:String, context:Dynamic) -> Void>;