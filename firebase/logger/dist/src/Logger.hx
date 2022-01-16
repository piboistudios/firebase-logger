package firebase.logger.dist.src;

@:jsRequire("@firebase/logger/dist/src/logger") @valueModuleOnly extern class Logger {
	static function setLogLevel(level:ts.AnyOf2<String, Int>):Void;
	static function setUserLogHandler(logCallback:Null<firebase.logger.LogCallback>, ?options:firebase.logger.LogOptions):Void;
	/**
		A container for all of the Logger instances
	**/
	static final instances : Array<firebase.logger.Logger>;
}