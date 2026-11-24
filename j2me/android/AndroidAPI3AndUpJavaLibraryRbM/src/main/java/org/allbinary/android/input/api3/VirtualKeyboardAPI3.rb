#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.android.input.api3

require "java/lang/JavaOverload"
require "org/allbinary/android/input/VirtualKeyboard"
require "org/allbinary/input/event/VirtualKeyboardEventListenerInterface"

module ::Org; module Allbinary; module Android; module Input; module Api3

class VirtualKeyboardAPI3 < ::Org::Allbinary::Android::Input::VirtualKeyboard
    include ::Org::Allbinary::Input::Event::VirtualKeyboardEventListenerInterface
    attr_accessor :virtualKeyboard, :activity, :showVirtualKeyboardRunnable, :hideVirtualKeyboardRunnable

    def jfields_org_allbinary_android_input_api3_VirtualKeyboardAPI3
        @virtualKeyboard = false unless instance_variable_defined?(:@virtualKeyboard)
        @activity = nil unless instance_variable_defined?(:@activity)
        @showVirtualKeyboardRunnable = nil unless instance_variable_defined?(:@showVirtualKeyboardRunnable)
        @hideVirtualKeyboardRunnable = nil unless instance_variable_defined?(:@hideVirtualKeyboardRunnable)
    end
    

    def initialize(activity)
        super()
        jfields_org_allbinary_android_input_api3_VirtualKeyboardAPI3
        @activity = activity
        @showVirtualKeyboardRunnable = ShowVirtualKeyboardRunnable.new(@activity)
        @hideVirtualKeyboardRunnable = HideVirtualKeyboardRunnable.new(@activity)
        virtualKeyboardEventHandler = ::Org::Allbinary::Input::Event::VirtualKeyboardEventHandler.getInstance()
        virtualKeyboardEventHandler.removeAllListeners()
        virtualKeyboardEventHandler.addListenerInterface(self)
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onVirtualKeyboardEvent(virtualKeyboardEvent)
        isShow = virtualKeyboardEvent.getSource()
        if isShow
            self.showVirtualKeyboard()
        else
            self.hideVirtualKeyboard()
        end
    end
    java_overload :onVirtualKeyboardEvent, 1
    

    def forceHide()
        self.hideVirtualKeyboard()
    end
    java_overload :forceHide, 0
    

    def hide()
        if @virtualKeyboard
            self.forceHide()
        end
    end
    java_overload :hide, 0
    

    def showVirtualKeyboard()
        @activity.runOnUiThread(@showVirtualKeyboardRunnable)
        @virtualKeyboard = true
    end
    java_overload :showVirtualKeyboard, 0
    

    def hideVirtualKeyboard()
        @activity.runOnUiThread(@hideVirtualKeyboardRunnable)
        @virtualKeyboard = false
    end
    java_overload :hideVirtualKeyboard, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MIN_API, 3)
        begin
            const_set(:MAX_API, 2147483647)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VirtualKeyboardAPI3"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAX_API, :MIN_API].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Org; module Allbinary; module Input; module Event; autoload :VirtualKeyboardEvent, "org/allbinary/input/event/VirtualKeyboardEvent" unless const_defined?(:VirtualKeyboardEvent, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Event; autoload :VirtualKeyboardEventHandler, "org/allbinary/input/event/VirtualKeyboardEventHandler" unless const_defined?(:VirtualKeyboardEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
autoload :HideVirtualKeyboardRunnable, "org/allbinary/android/input/api3/HideVirtualKeyboardRunnable" unless const_defined?(:HideVirtualKeyboardRunnable, false)
autoload :ShowVirtualKeyboardRunnable, "org/allbinary/android/input/api3/ShowVirtualKeyboardRunnable" unless const_defined?(:ShowVirtualKeyboardRunnable, false)
require "java/lang/Runnable"

begin
    VirtualKeyboardAPI3.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

