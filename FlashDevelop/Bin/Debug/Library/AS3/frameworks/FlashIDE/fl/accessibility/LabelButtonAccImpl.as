﻿package fl.accessibility
{
	import flash.accessibility.Accessibility;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import fl.controls.LabelButton;
	import fl.core.UIComponent;
	import fl.events.ComponentEvent;

	/**
	 *  The LabelButtonAccImpl class, also called the LabelButton Accessibility Implementation class,
	 */
	public class LabelButtonAccImpl extends AccImpl
	{
		/**
		 *  @private
		 */
		private static var accessibilityHooked : Boolean;
		/**
		 *  @private
		 */
		private static const STATE_SYSTEM_PRESSED : uint = 0x00000008;
		/**
		 *  @private
		 */
		private static const EVENT_OBJECT_NAMECHANGE : uint = 0x800C;
		/**
		 *  @private
		 */
		private static const EVENT_OBJECT_STATECHANGE : uint = 0x800A;

		/**
		 *  @private
		 */
		protected function get eventsToHandle () : Array;

		/**
		 *  @private
		 */
		private static function hookAccessibility () : Boolean;
		/**
		 *  @private
		 */
		public static function createAccessibilityImplementation (component:UIComponent) : void;
		/**
		 *  Enables accessibility for a LabelButton component.
		 */
		public static function enableAccessibility () : void;
		/**
		 * @private
		 */
		public function LabelButtonAccImpl (component:UIComponent);
		/**
		 *  @private
		 */
		public function get_accState (childID:uint) : uint;
		/**
		 *  @private
		 */
		public function get_accDefaultAction (childID:uint) : String;
		/**
		 *  @private
		 */
		public function accDoDefaultAction (childID:uint) : void;
		/**
		 *  @private
		 */
		protected function getName (childID:uint) : String;
		/**
		 *  @private
		 */
		protected function eventHandler (event:Event) : void;
	}
}