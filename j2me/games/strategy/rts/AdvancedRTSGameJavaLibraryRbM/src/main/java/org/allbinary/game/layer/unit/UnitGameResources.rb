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

class UnitGameResources < BasicGameResources
    attr_accessor :NAME, :RESOURCE_ICON_ANIMATION, :RESOURCE_ICON_BUILD, :RESOURCE_ICON, :ICON_SIZE

    def initialize_fields
        @NAME = StringUtil.getInstance().EMPTY_STRING
        @RESOURCE_ICON_ANIMATION = StringUtil.getInstance().EMPTY_STRING
        @RESOURCE_ICON_BUILD = StringUtil.getInstance().EMPTY_STRING
        @RESOURCE_ICON = StringUtil.getInstance().EMPTY_STRING
        @ICON_SIZE = "_64_by_64.png"
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    # throws Exception
    def append(_ROOT, sizeString)
        super(_ROOT, sizeString)
        string = GameGraphicsResourceUtil.getInstance().getName()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(_ROOT)
        BasicGameResources.stringBuffer.append(UnitGameResources::DESTROY)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        @RESOURCE_DESTROY = BasicGameResources.stringBuffer.to_s
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(UnitGameResources::ICON)
        BasicGameResources.stringBuffer.append(_ROOT)
        @RESOURCE_ICON_ANIMATION = BasicGameResources.stringBuffer.to_s
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(_ROOT)
        BasicGameResources.stringBuffer.append(UnitGameResources::ICON)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(@ICON_SIZE)
        @RESOURCE_ICON = BasicGameResources.stringBuffer.to_s
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(_ROOT)
        BasicGameResources.stringBuffer.append(UnitGameResources::ICON_BUILD)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(@ICON_SIZE)
        @RESOURCE_ICON_BUILD = BasicGameResources.stringBuffer.to_s
    end
    

    # throws Exception
    def getString()
        if AndroidUtil.isAndroid()
            return GameGraphicsResourceUtil.getInstance().getStringForFeature(GraphicsFeatureFactory.getInstance().SPRITE_QUARTER_ROTATION_GRAPHICS)
        else
            return super()
        end
    end
end

require "org/allbinary/game/layer/resources/GameGraphicsResourceUtil"
require "org/allbinary/AndroidUtil"
require "org/allbinary/game/configuration/feature/GraphicsFeatureFactory"
require "org/allbinary/logic/string/StringUtil"

class UnitGameResources
    ICON = "_icon"
    BUILD = "_build"
    DESTROY = "_destroy"
    ICON_BUILD = "_icon" + (UnitGameResources::BUILD).to_s
end

