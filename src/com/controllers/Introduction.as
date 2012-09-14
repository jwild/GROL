/*********************************************
(GROL) Gladiators: Rise of Legends - Introduction.as
Class for introduction screen, just a simple click through screen
*********************************************/
package com.controllers {
	
	import flash.display.MovieClip;
	import com.models.Model;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import com.utils.CustomEvent;
	
	public class Introduction extends MovieClip {
		
		private var m:Model = Model.instance;
		
		public function Introduction() {
			addEventListener(Event.ADDED_TO_STAGE, onLoad);
		}
		
		public function onLoad(e:Event):void{
			trace("Class Introduction Loaded");
			addEventListener(MouseEvent.CLICK, parseTouch);
			m.addEventListener(CustomEvent.LOAD_GLADIATOR_CLASS, loadGladiatorClass);
		}
		
		public function parseTouch(e:MouseEvent):void{
			switch(e.target.name){
				case "cont_bttn_mc" :
					m.gotoScreen = "firstQuest";
					break;
				default : break;
			}
		}
		
		public function loadGladiatorClass(event:CustomEvent):void{
			//switch(m.gladiatorClass){
			switch(event.dataObj){
				case "slave" :
					title_txt.text = "PLEASANT WELCOME";
					amb_txt.text = "You waken to a sharp kick in your ribs and a harsh laugh from the soldier standing over you...";
					ver_txt.text = "\"Up you get slave! We will see your worth before we throw the likes of you in the arena... so make sure you give us a good show... or a good death.\"";
					break;
				case "freemen" :
					title_txt.text = "OLD SOLDIER";
					amb_txt.text = "Walking into the training grounds, an old soldier looks over at you, a gleam of respect in his eyes as he nods your way.";
					ver_txt.text = "\"You seem familiar, were we in the same phalanx last winter? Keep your wits about you and you may make it out of here alive.\"";
					break;
				case "auctorati" :
					title_txt.text = "PROPER WELCOME";
					amb_txt.text = "Striding into the training grounds from your carriage, the soldier at the door bows deeply before you.";
					ver_txt.text = "\"My Lord, the training yard awaits you, I hope our foder is sufficient for your practice.\"";
					break;
				case "amazone" :
					title_txt.text = "WHAT IS THIS!?";
					amb_txt.text = "You wake coughing and wheezing as the pain in your chest comes back to you. A soldier looks down on you sneering...";
					ver_txt.text = "\"What is this we have here... a murdering wench come to feed the lions and tigers! Get up, it's dinner time for our pets!\"";
					break;
				default : break;
			}
		}
	}
	
}
