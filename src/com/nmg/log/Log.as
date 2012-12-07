package com.nmg.log
{
	public class Log
	{
		import cim.fx.logging.targets.LocalConnectionTarget;
		
		import mx.controls.Alert;
		import mx.logging.ILogger;
		import mx.logging.LogEventLevel;
		import mx.logging.LogLogger;
		private static var isInit:Boolean = false;
		private static var logger:ILogger = new LogLogger("nmg");//参数是类别。
		
		private static function init():void
		{
			if(isInit == false){
				var loggingTarget:LocalConnectionTarget = new LocalConnectionTarget("_player");	//必须以_开头
				loggingTarget.filters=["*"];
				loggingTarget.level = LogEventLevel.ERROR;//记录的LOG级别。若为error级别则不会记录csxs的debug和info的记录。
				loggingTarget.includeDate = true;
				loggingTarget.includeTime = true;
				loggingTarget.includeCategory = true;
				loggingTarget.includeLevel = true;
				loggingTarget.addLogger(logger);
				isInit = true;
			}
		}
		
		public static function add(message:String):void
		{
			Log.init();
			logger.error(message);
		}
		
	}
}