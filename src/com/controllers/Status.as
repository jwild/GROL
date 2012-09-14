/*********************************************
(GROL) Gladiators: Rise of Legends - Status.as
Class for the Status Bar:
coin_txt	exp_txt			level_txt
vigor_txt	intensity_txt	endurance_txt
*********************************************/
package com.controllers {
	
	import flash.display.MovieClip;
	import com.models.Model;
	import com.utils.CustomEvent;
	import flash.events.Event;
	
	
	public class Status extends MovieClip {
		
		private var m:Model = Model.instance;
		
		public function Status() {
			addEventListener(Event.ADDED_TO_STAGE, onLoad);
		}
		
		public function onLoad(e:Event):void{
			trace("Class StatusBar Loaded");
			m.addEventListener(CustomEvent.STATUS_UPDATE, updateStatus);
		}
		
		public function updateStatus(event:CustomEvent):void{
			var xml:XMLList = event.dataObj;
			m.currentCoin 		= coin_txt.htmlText 	 = xml.coin;
			m.currentXP 		= exp_txt.htmlText 		 = "Exp: "+xml.exp+"<FONT color='#999999'> / "+xml.exp_max+"</FONT>";
			m.currentLevel 		= level_txt.htmlText 	 = xml.level;
			m.currentVigor 		= vigor_txt.htmlText 	 = xml.vigor+"<FONT color='#999999'> / "+xml.vigor_max+"</FONT>";
			m.currentIntensity 	= intensity_txt.htmlText = xml.intensity+"<FONT color='#999999'> / "+xml.intensity_max+"</FONT>";
			m.currentEndurance 	= endurance_txt.htmlText = xml.endurance+"<FONT color='#999999'> / "+xml.endurance_max+"</FONT>";
		}
	}
}
