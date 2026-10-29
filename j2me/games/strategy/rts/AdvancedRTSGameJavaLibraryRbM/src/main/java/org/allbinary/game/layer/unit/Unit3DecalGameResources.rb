# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.unit

require "org/allbinary/game/layer/resources/BasicGameResources"

class Unit3DecalGameResources < BasicGameResources
    

    def initialize()
        super()
        _ROOT = "/unit_decal"
        _SMALL = "_40_by_40.png"
        _MEDIUM = _SMALL
        _SIZE_FOUR = _SMALL
        _SIZE_FIVE = _SMALL
        _SIZE_SIX = _SMALL
        _SIZE = [_SMALL, _MEDIUM, _SIZE_FOUR, _SIZE_FIVE, _SIZE_SIX]
        self.class.superclass.instance_method(:init).bind(self).call(_ROOT, _SIZE)
    end
    

    # throws Exception
    def append(_ROOT, sizeString)
        super(_ROOT, sizeString)
    end
    

    # throws Exception
    def getString()
        if AndroidUtil.isAndroid()
            return GameGraphicsResourceUtil.getInstance().getStringForFeature(GraphicsFeatureFactory.getInstance().SPRITE_QUARTER_ROTATION_GRAPHICS)
        else
            return super()
        end
    end
    

    def self.getInstance()
        return Unit3DecalGameResources.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/resources/GameGraphicsResourceUtil"
require "org/allbinary/AndroidUtil"
require "org/allbinary/game/configuration/feature/GraphicsFeatureFactory"

class Unit3DecalGameResources
    @@instance = Unit3DecalGameResources.new()
end

