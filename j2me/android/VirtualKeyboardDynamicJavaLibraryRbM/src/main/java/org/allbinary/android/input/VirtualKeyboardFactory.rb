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
# package org.allbinary.android.input


module ::Org; module Allbinary; module Android; module Input

class VirtualKeyboardFactory
    

    def self.init(activity)
        _SDK_VERSION = ::Org::Allbinary::Android::AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION <= 2
            VirtualKeyboardFactory.virtualKeyboard = ::Org::Allbinary::Android::Input::Api1::VirtualKeyboardAPI1.new(activity)
        else
            VirtualKeyboardFactory.virtualKeyboard = ::Org::Allbinary::Android::Input::Api3::VirtualKeyboardAPI3.new(activity)
        end
    end
    

    def self.getInstance()
        return VirtualKeyboardFactory.virtualKeyboard
    end

    def self.virtualKeyboard()
        VirtualKeyboardFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@virtualKeyboard) ? @@virtualKeyboard : nil
    end

    def self.virtualKeyboard=(value)
        VirtualKeyboardFactory.java_static_fields unless @java_static_fields_started
        @@virtualKeyboard = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@virtualKeyboard = VirtualKeyboard::NULL_VIRTUAL_KEYBOARD
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VirtualKeyboardFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Android; autoload :AndroidInfoFactory, "org/allbinary/android/AndroidInfoFactory" unless const_defined?(:AndroidInfoFactory, false); end; end; end
module ::Org; module Allbinary; module Android; module Input; module Api1; autoload :VirtualKeyboardAPI1, "org/allbinary/android/input/api1/VirtualKeyboardAPI1" unless const_defined?(:VirtualKeyboardAPI1, false); end; end; end; end; end
module ::Org; module Allbinary; module Android; module Input; module Api3; autoload :VirtualKeyboardAPI3, "org/allbinary/android/input/api3/VirtualKeyboardAPI3" unless const_defined?(:VirtualKeyboardAPI3, false); end; end; end; end; end
module ::Android; module App; autoload :Activity, "android/app/Activity" unless const_defined?(:Activity, false); end; end
autoload :VirtualKeyboard, "org/allbinary/android/input/VirtualKeyboard" unless const_defined?(:VirtualKeyboard, false)

begin
    VirtualKeyboardFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

