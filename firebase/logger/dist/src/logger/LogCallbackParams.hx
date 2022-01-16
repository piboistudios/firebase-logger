package firebase.logger.dist.src.logger;

typedef LogCallbackParams = {
	var level : firebase.logger.LogLevelString;
	var message : String;
	var args : Array<Any>;
	var type : String;
};