﻿/*********************************************(GROL) Gladiators: Rise of Legends - Items.asClass for the Items: Weapons and armor class listing*********************************************/package com.utils {		public class Items {		public function Items() {			// constructor code		}				public function parseItems(item:String):*{			trace("Parse "+item);			var tempItem:Object;			switch(item){				case "noArmor" :					tempItem = new noArmor();					break				case "noWeapon" :					tempItem = new noWeapon();					break			}			return tempItem;		}	}	}