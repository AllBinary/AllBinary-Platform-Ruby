# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input


module ::Org; module Allbinary; module Game; module Input

class PlatformKeyFactory
    attr_accessor :androidKeyFactory

    def jfields_org_allbinary_game_input_PlatformKeyFactory
        @androidKeyFactory = ActivityFractureControllerUtilFactory.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_input_PlatformKeyFactory
    end
    

    def self.getInstance()
        if PlatformKeyFactory.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            PlatformKeyFactory.instance = PlatformKeyFactory.new()
        end
        return PlatformKeyFactory.instance
    end
    

    def getString(keyCode)
        return AndroidGameKey.getString(keyCode)
    end
    

    def isSubmission(input)
        return @androidKeyFactory.isSubmission(input)
    end
    

    def isDelete(input)
        return @androidKeyFactory.isDelete(input)
    end
    

    def isBackSpace(input)
        return @androidKeyFactory.isBackSpace(input)
    end
    

    def isLeft(input)
        return @androidKeyFactory.isLeft(input)
    end
    

    def isRight(input)
        return @androidKeyFactory.isRight(input)
    end
    

    def isUp(input)
        return @androidKeyFactory.isUp(input)
    end
    

    def isDown(input)
        return @androidKeyFactory.isDown(input)
    end
    

    def isEnter(input)
        return @androidKeyFactory.isEnter(input)
    end

    def self.instance()
        PlatformKeyFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PlatformKeyFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PlatformKeyFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :ActivityFractureControllerUtilFactory, "org/allbinary/game/input/ActivityFractureControllerUtilFactory" unless const_defined?(:ActivityFractureControllerUtilFactory, false)
autoload :AndroidGameKey, "org/allbinary/game/input/AndroidGameKey" unless const_defined?(:AndroidGameKey, false)
autoload :AndroidKeyFactory, "org/allbinary/game/input/AndroidKeyFactory" unless const_defined?(:AndroidKeyFactory, false)
autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false)

begin
    PlatformKeyFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

