package com.models  {
	
	import flash.events.Event;
	
	public class ExtendableModel extends Model {

		public function ExtendableModel() {
			super(SingletonLock);
		}

	}
	
}
class SingletonLock{}