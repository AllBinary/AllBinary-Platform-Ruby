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


module ::Org; module Allbinary; module Game; module Resource

class FeaturedResourceFactory
    attr_accessor :logUtil, :list, :commonStrings, :ANIMATION_FEATURES, :IMAGE_LABEL, :IMAGE_GRAPHICS_ARRAY, :IMAGE_GRAPHICS_ROTATION, :SPRITE_QUARTER, :SPRITE_FULL, :IS_LOADING_LEVEL_LABEL, :IS_FEATURE, :GAME_FEATURE_CONTROLLED

    def jfields_org_allbinary_game_resource_FeaturedResourceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
        jfields_org_allbinary_game_resource_FeaturedResourceFactory
    end
    

    # throws Exception
    def init(level)
        size = @list.size()
        (0...size).each do |index|
            featureInterface = @list.objectArray[index]
            isLoadingLevel = featureInterface.isLoadingLevel(level)
            isFeature = featureInterface.isFeature()
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@GAME_FEATURE_CONTROLLED).append(featureInterface.to_s).append(@IS_LOADING_LEVEL_LABEL).append(ResourceLoadingLevelFactory.getInstance().getLevelString(level)).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON_SEP).appendboolean(isLoadingLevel).append(@IS_FEATURE).appendboolean(isFeature).to_s, self, @commonStrings.INIT)
            if isLoadingLevel && isFeature
                featureInterface.init(level)
            end
        end
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        graphicsFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GraphicsFeatureFactory.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(featureInterface)).to_s, self, @commonStrings.ADD)
        @list.add(featureInterface)
    end
    

    def getList()
        return @list
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureControlledInterface, "org/allbinary/game/configuration/feature/GameFeatureControlledInterface" unless const_defined?(:GameFeatureControlledInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GraphicsFeatureFactory, "org/allbinary/game/configuration/feature/GraphicsFeatureFactory" unless const_defined?(:GraphicsFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false)

end; end; end; end

