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

package org.osmf.player.chrome.widgets
{
	import flash.display.StageDisplayState;
	import flash.events.Event;
	import flash.events.FullScreenEvent;
	import flash.events.MouseEvent;
	import flash.external.ExternalInterface;
	
	import org.osmf.containers.MediaContainer;
	import org.osmf.media.MediaElement;
	import org.osmf.player.chrome.assets.AssetIDs;
	import org.osmf.player.chrome.events.WidgetEvent;
	import org.osmf.traits.MediaTraitType;
	import org.osmf.traits.PlayState;
	import org.osmf.traits.PlayTrait;
	
	public class LogoButton extends PlayableButton
	{
		public var twoStepFullScreen:Boolean = false;
		
		public function LogoButton()
		{		
			//addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			upFace = AssetIDs.LOGO_BUTTON_NORMAL;
			downFace = AssetIDs.LOGO_BUTTON_NORMAL;
			overFace = AssetIDs.LOGO_BUTTON_NORMAL;
		}
		
		override protected function onMouseClick(event:MouseEvent):void
		{
			ExternalInterface.call("window.open",'http://www.nmg.com.hk');
			event.stopImmediatePropagation();
		}
	}
}