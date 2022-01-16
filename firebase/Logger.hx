package firebase;

@:jsRequire("@firebase/logger") @valueModuleOnly extern class Logger {
	static function setLogLevel(level:ts.AnyOf2<String, Int>):Void;
	static function setUserLogHandler(logCallback:Null<firebase.logger.LogCallback>, ?options:firebase.logger.LogOptions):Void;
}