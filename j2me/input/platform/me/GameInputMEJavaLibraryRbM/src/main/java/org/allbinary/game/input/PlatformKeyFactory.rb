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
# package org.allbinary.game.input


class PlatformKeyFactory
    

    def self.getInstance()
        if PlatformKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT
            PlatformKeyFactory.instance = PlatformKeyFactory.new()
        end
        return PlatformKeyFactory.instance
    end
    

    def getString(keyCode)
        return J2MEGameKey.getString(keyCode)
    end
    

    def isSubmission(input)
        return J2MEKeyFactory.getInstance().isSubmission(input)
    end
    

    def isDelete(input)
        return J2MEKeyFactory.getInstance().isDelete(input)
    end
    

    def isBackSpace(input)
        return J2MEKeyFactory.getInstance().isBackSpace(input)
    end
    

    def isLeft(input)
        return J2MEKeyFactory.getInstance().isLeft(input)
    end
    

    def isRight(input)
        return J2MEKeyFactory.getInstance().isRight(input)
    end
    

    def isUp(input)
        return J2MEKeyFactory.getInstance().isUp(input)
    end
    

    def isDown(input)
        return J2MEKeyFactory.getInstance().isDown(input)
    end
    

    def isEnter(input)
        return J2MEKeyFactory.getInstance().isEnter(input)
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
            @@instance = NullUtil.getInstance().NULL_OBJECT
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

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :Input, "org/allbinary/game/input/Input"
autoload :J2MEGameKey, "org/allbinary/game/input/J2MEGameKey"
autoload :J2MEKeyFactory, "org/allbinary/game/input/J2MEKeyFactory"

begin
    PlatformKeyFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

