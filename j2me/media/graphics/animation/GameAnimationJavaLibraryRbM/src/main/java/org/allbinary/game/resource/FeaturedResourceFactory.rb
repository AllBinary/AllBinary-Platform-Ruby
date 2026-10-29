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
# package org.allbinary.game.resource


class FeaturedResourceFactory
    attr_accessor :logUtil, :list, :commonStrings, :ANIMATION_FEATURES, :IMAGE_LABEL, :IMAGE_GRAPHICS_ARRAY, :IMAGE_GRAPHICS_ROTATION, :SPRITE_QUARTER, :SPRITE_FULL, :IS_LOADING_LEVEL_LABEL, :IS_FEATURE, :GAME_FEATURE_CONTROLLED

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @list = BasicArrayListD.new()
        @commonStrings = CommonStrings.getInstance()
        @ANIMATION_FEATURES = "Animation Features: Vector: "
        @IMAGE_LABEL = " Image: "
        @IMAGE_GRAPHICS_ARRAY = "Image Array: "
        @IMAGE_GRAPHICS_ROTATION = "Image Rotate: "
        @SPRITE_QUARTER = " Sprite Quarter: "
        @SPRITE_FULL = " Sprite Full: "
        @IS_LOADING_LEVEL_LABEL = " isLoadingLevel "
        @IS_FEATURE = " isFeature: "
        @GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: "
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def init(level)
        size = @list.size()
        (0...size).each do |index|
            featureInterface = @list.objectArray[index]
            isLoadingLevel = featureInterface.isLoadingLevel(level)
            isFeature = featureInterface.isFeature()
            @logUtil.putF(StringMaker.new().append(@GAME_FEATURE_CONTROLLED).append(featureInterface.to_s).append(@IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(CommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(@IS_FEATURE).appendboolean(isFeature).to_s, self, @commonStrings.INIT)
            if isLoadingLevel && isFeature
                featureInterface.init(level)
            end
        end
        features = Features.getInstance()
        graphicsFeatureFactory = GraphicsFeatureFactory.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@ANIMATION_FEATURES)
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.VECTOR_GRAPHICS))
        stringBuffer.append(@IMAGE_LABEL)
        stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS))
        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.INIT)
        if features.isFeature(graphicsFeatureFactory.IMAGE_GRAPHICS)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append(@IMAGE_GRAPHICS_ARRAY)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.append(@IMAGE_GRAPHICS_ROTATION)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.append(@SPRITE_QUARTER)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_QUARTER_ROTATION_GRAPHICS))
            stringBuffer.append(@SPRITE_FULL)
            stringBuffer.appendboolean(features.isFeature(graphicsFeatureFactory.SPRITE_FULL_GRAPHICS))
            @logUtil.putF(stringBuffer.to_s, self, @commonStrings.INIT)
        end
    end
    

    def clear()
        @list.clear()
    end
    

    def add(featureInterface)
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(featureInterface)).to_s, self, @commonStrings.ADD)
        @list.add(featureInterface)
    end
    

    def getList()
        return @list
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureControlledInterface"
require "org/allbinary/game/configuration/feature/GraphicsFeatureFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"

