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
# package org.allbinary.input.motion


module ::Org; module Allbinary; module Input; module Motion

class CompleteMotionGestureInputToGameMotionGestureInput
    attr_accessor :commonStrings

    def jfields_org_allbinary_input_motion_CompleteMotionGestureInputToGameMotionGestureInput
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_input_motion_CompleteMotionGestureInputToGameMotionGestureInput
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def init()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("No Touch Button = No Compound Motion Gestures", self, @commonStrings.INIT)
    end

    def self.instance()
        CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CompleteMotionGestureInputToGameMotionGestureInput.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CompleteMotionGestureInputToGameMotionGestureInput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    CompleteMotionGestureInputToGameMotionGestureInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

