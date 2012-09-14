package com.controllers {
	
	import flash.display.MovieClip;
	import com.models.Model;
	import flash.events.Event;
	
	public class Loading extends MovieClip {
		
		private var m:Model = Model.instance;
		
		public function Loading() {
			trace("Class Loading Start Init");
			addEventListener(Event.ADDED_TO_STAGE, onLoad);
		}
		
		public function onLoad(e:Event):void{
			trace("Class Loading Start Loaded");
			Object(parent).dispatchEvent(new Event(Model.CLASS_START_LOADED));
		}
	}
	
}/**/
