/***********************************************************
 * Copyright 2010 Adobe Systems Incorporated.  All Rights Reserved.
 *
 * *********************************************************
 * The contents of this file are subject to the Berkeley Software Distribution (BSD) Licence
 * (the "License"); you may not use this file except in
 * compliance with the License. 
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 *
 * The Initial Developer of the Original Code is Adobe Systems Incorporated.
 * Portions created by Adobe Systems Incorporated are Copyright (C) 2010 Adobe Systems
 * Incorporated. All Rights Reserved.
 **********************************************************/

package org.osmf.player.chrome.assets
{
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;
	
	public class BitmapAsset extends DisplayObjectAsset
	{
		public function BitmapAsset(bitmap:Bitmap, scale9:Rectangle = null)
		{
			_bitmap = bitmap;
			_scale9 = scale9;
			super();
		}
		
		override public function get displayObject():DisplayObject
		{
			return _scale9
				? new Scale9Bitmap(_bitmap, _scale9)
				: new Bitmap(_bitmap.bitmapData.clone(), _bitmap.pixelSnapping, _bitmap.smoothing);
		}
		
		private var _bitmap:Bitmap;
		private var _scale9:Rectangle;
		
	}
}