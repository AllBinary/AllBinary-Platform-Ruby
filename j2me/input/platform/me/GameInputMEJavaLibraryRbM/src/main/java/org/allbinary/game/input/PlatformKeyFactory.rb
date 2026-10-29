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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/game/input/J2MEGameKey"
require "org/allbinary/game/input/J2MEKeyFactory"

class PlatformKeyFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

