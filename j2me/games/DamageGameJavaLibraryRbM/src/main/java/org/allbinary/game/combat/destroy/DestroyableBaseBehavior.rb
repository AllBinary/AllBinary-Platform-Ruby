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
# package org.allbinary.game.combat.destroy

require "org/allbinary/game/combat/destroy/DestroyableInterface"

class DestroyableBaseBehavior
    include DestroyableInterface
    

    def self.getInstance()
        return DestroyableBaseBehavior.instance
    end
    

    def getName()
        return self.class.name
    end
    

    # throws Exception
    def isDestroyed()
        raise StandardError.new(CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    

    def setDestroyed(destroyed)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonStrings"

class DestroyableBaseBehavior
    @@instance = DestroyableBaseBehavior.new()
end

