package com.utils  {
	import flash.events.Event;
	
	public class CustomEvent extends Event {
		public static const COMPLETE_TRAINING:String = "trainingcomplete";
		public static const LOAD_GLADIATOR_CLASS:String = "loadgladiatorclass";
		public static const CHANGE_SCREEN:String = "changescreen";
		public static const STATUS_UPDATE:String = "statusupdate";
		public static const LOAD_TRAINING:String = "loadtraining";
		public static const LOAD_ARMORY:String = "loadarmory";
			
		public var dataObj:*;
		
		public function CustomEvent(type:String, dataObj:* = null) {
			this.dataObj = dataObj;
			super(type, false, false);
		}
		
		override public function clone():Event{
			return new CustomEvent(type, dataObj);
		}
	}
}
