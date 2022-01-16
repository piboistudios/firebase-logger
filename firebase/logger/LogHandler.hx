package firebase.logger;

/**
	We allow users the ability to pass their own log handler. We will pass the
	type of log, the current log level, and any other arguments passed (i.e. the
	messages that the user wants to log) to this function.
**/
typedef LogHandler = (loggerInstance:Logger, logType:LogLevel, args:haxe.extern.Rest<Any>) -> Void;