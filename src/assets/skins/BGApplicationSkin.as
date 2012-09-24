package assets.skins
{
	import mx.core.FlexSprite;
	import spark.skins.mobile.ViewNavigatorApplicationSkin;
	
	public class BGApplicationSkin extends ViewNavigatorApplicationSkin
	{
		override protected function drawBackground(w:Number, h:Number):void
		{
			/*
			var bgClass:Class       = this.getStyle('backgroundImage') as Class;
			var bgColor:uint        = this.getStyle('backgroundColor') as uint;
			
			this._background        = new bgClass() as DisplayObject;
			
			this.graphics.beginFill(bgColor, 1);
			this.graphics.drawRect(0, 0, w, h);
			this.graphics.endFill();
			
			this._background.width  = w;
			this._background.height = h;
			
			//Add the background at the lowest display hierarchy.
			this.addChildAt(this._background, 0);
			*/
		}
	}
}