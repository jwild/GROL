package com.controllers {
	
	import flash.display.MovieClip;
	import com.models.Model;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import com.utils.CustomEvent;
	
	public class FirstQuest extends MovieClip{
		
		private var m:Model = Model.instance;
		
		public function FirstQuest() {
			addEventListener(Event.ADDED_TO_STAGE, onLoad);
		}
		
		public function onLoad(e:Event):void{
			trace("Class FirstQuest Loaded");
			addEventListener(MouseEvent.CLICK, parseTouch);
			m.addEventListener(CustomEvent.LOAD_GLADIATOR_CLASS, loadGladiatorClass);
		}
		
		public function parseTouch(e:MouseEvent):void{
			switch(e.target.name){
				case "bttn_doit_mc" :
					//trace("Do Quest");
					m.train(0);
					//fire the call here which will be in the model and will be listened for on the training screen
					break;
				default : break;
			}
		}
		
		public function loadGladiatorClass(event:CustomEvent):void{
			trace("<><>"+m.gladiatorClass);
			//switch(m.gladiatorClass){
			switch(event.dataObj){
				case "slave" :
					ver_txt.text = "\"Get in there slave. Your death awaits you!\"";
					quest_f1.title_txt.text = "Rabid Wolves";
					quest_f1.coin_min_txt.text = "2 -";
					quest_f1.coin_max_txt.text = "5";
					quest_f1.exp_txt.text = "+1 Experience";
					quest_f1.quest_rank_txt.text = "0% Rank 1";
					quest_f1.req_txt.text = "1";
					break;
				case "freemen" :
					ver_txt.text = "\"Let's see how you hold up in training. This should be a good refresher for you!\"";
					quest_f1.title_txt.text = "Weapons Master";
					quest_f1.coin_min_txt.text = "3 -";
					quest_f1.coin_max_txt.text = "4";
					quest_f1.exp_txt.text = "+1 Experience";
					quest_f1.quest_rank_txt.text = "0% Rank 1";
					quest_f1.req_txt.text = "1";
					break;
				case "auctorati" :
					ver_txt.text = "\"Sir, your first challenge awaits you... I hope he proves worthy of your sword.\"";
					quest_f1.title_txt.text = "One-eyed Slave";
					quest_f1.coin_min_txt.text = "1 -";
					quest_f1.coin_max_txt.text = "6";
					quest_f1.exp_txt.text = "+1 Experience";
					quest_f1.quest_rank_txt.text = "0% Rank 1";
					quest_f1.req_txt.text = "1";
					break;
				case "amazone" :
					ver_txt.text = "\"Get in there wench and die. Don't dirty up my yard with to much of your blood!\"";
					quest_f1.title_txt.text = "Burley Slave";
					quest_f1.coin_min_txt.text = "2 -";
					quest_f1.coin_max_txt.text = "5";
					quest_f1.exp_txt.text = "+1 Experience";
					quest_f1.quest_rank_txt.text = "0% Rank 1";
					quest_f1.req_txt.text = "1";
					break;
				default : break;
			}
		}

	}
	
}
