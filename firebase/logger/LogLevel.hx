package firebase.logger;

/**
	The JS SDK supports 5 log levels and also allows a user the ability to
	silence the logs altogether.
	
	The order is a follows:
	DEBUG < VERBOSE < INFO < WARN < ERROR
	
	All of the log types above the current log level will be captured (i.e. if
	you set the log level to `INFO`, errors will still be logged, but `DEBUG` and
	`VERBOSE` logs will not)
**/
@:jsRequire("@firebase/logger", "LogLevel") @:enum extern abstract LogLevel(Int) from Int to Int {
	var DEBUG;
	var VERBOSE;
	var INFO;
	var WARN;
	var ERROR;
	var SILENT;
}