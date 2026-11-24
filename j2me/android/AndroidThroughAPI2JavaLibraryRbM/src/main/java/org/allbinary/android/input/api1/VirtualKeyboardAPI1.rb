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
# package org.allbinary.android.input.api1

require "java/lang/JavaOverload"
require "org/allbinary/android/input/VirtualKeyboard"
require "org/allbinary/input/event/VirtualKeyboardEventListenerInterface"

module ::Org; module Allbinary; module Android; module Input; module Api1

class VirtualKeyboardAPI1 < ::Org::Allbinary::Android::Input::VirtualKeyboard
    include ::Org::Allbinary::Input::Event::VirtualKeyboardEventListenerInterface
    

    def initialize(activity)
        super()
    end
    

    def onVirtualKeyboardEvent(virtualKeyboardEvent)
        VirtualKeyboardAPI1.superclass.java_super_method(:onVirtualKeyboardEvent, 1).bind(self).call(virtualKeyboardEvent)
    end
    java_overload :onVirtualKeyboardEvent, 1
    

    def onEvent(eventObject)
        VirtualKeyboardAPI1.superclass.java_super_method(:onEvent, 1).bind(self).call(eventObject)
    end
    java_overload :onEvent, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MIN_API, 1)
        const_set(:MAX_API, 2)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VirtualKeyboardAPI1"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MIN_API, :MAX_API].include?(name)
        end
        super
    end
end

module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
module ::Org; module Allbinary; module Input; module Event; autoload :VirtualKeyboardEvent, "org/allbinary/input/event/VirtualKeyboardEvent" unless const_defined?(:VirtualKeyboardEvent, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end

begin
    VirtualKeyboardAPI1.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

