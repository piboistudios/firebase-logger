package firebase.logger;

@:jsRequire("@firebase/logger", "Logger") extern class Logger {
	/**
		Gives you an instance of a Logger to capture messages according to
		Firebase's logging scheme.
	**/
	function new(name:String);
	var name : String;
	/**
		The log level of the given Logger instance.
	**/
	private var _logLevel : Dynamic;
	var logLevel : LogLevel;
	function setLogLevel(val:ts.AnyOf2<String, Int>):Void;
	/**
		The main (internal) log handler for the Logger instance.
		Can be set to a new function in internal package code but not by user.
	**/
	private var _logHandler : Dynamic;
	dynamic function logHandler(loggerInstance:Logger, logType:LogLevel, args:haxe.extern.Rest<Any>):Void;
	/**
		The optional, additional, user-defined log handler for the Logger instance.
	**/
	private var _userLogHandler : Dynamic;
	@:optional
	dynamic function userLogHandler(loggerInstance:Logger, logType:LogLevel, args:haxe.extern.Rest<Any>):Void;
	/**
		The functions below are all based on the `console` interface
	**/
	function debug(args:haxe.extern.Rest<Any>):Void;
	function log(args:haxe.extern.Rest<Any>):Void;
	function info(args:haxe.extern.Rest<Any>):Void;
	function warn(args:haxe.extern.Rest<Any>):Void;
	function error(args:haxe.extern.Rest<Any>):Void;
	static var prototype : Logger;
}