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
# package org.allbinary.game.configuration.event

require "java/lang/JavaOverload"
require "org/allbinary/game/configuration/event/GameFeatureListenerInterface"

module ::Org; module Allbinary; module Game; module Configuration; module Event

class BaseChangedGameFeatureListener
    include GameFeatureListenerInterface
    attr_accessor :logUtil, :gameFeatureUtil, :list, :changed

    def jfields_org_allbinary_game_configuration_event_BaseChangedGameFeatureListener
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @gameFeatureUtil = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureUtil.getInstance()
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @changed = true
    end

    def initialize
        jfields_org_allbinary_game_configuration_event_BaseChangedGameFeatureListener
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED, self)
    end
    java_overload :onEvent, 1
    

    def onGameFeatureChange(gameFeatureEvent)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent.getWhatChanged()).to_s, self, @gameFeatureUtil.ON_GAME_FEATURE_CHANGE)
        @list.add(gameFeatureEvent.getGameOption())
        self.setChanged(true)
    end
    java_overload :onGameFeatureChange, 1
    

    def add(gameFeature)
        @list.add(gameFeature)
    end
    java_overload :add, 1
    

    def remove(gameFeature)
        @list.remove(gameFeature)
    end
    java_overload :remove, 1
    

    def setChanged(initialized)
        @changed = initialized
        if !self.isChanged()
            @list.clear()
        end
    end
    java_overload :setChanged, 1
    

    def isChangedFeature(gameFeature)
        isChanged = @list.contains(gameFeature)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("GameFeature: ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(gameFeature))
        stringBuffer.append(" isFeature: ")
        stringBuffer.appendboolean(::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(gameFeature))
        stringBuffer.append(" isChanged: ")
        stringBuffer.appendboolean(isChanged)
        @logUtil.putF(stringBuffer.to_s, self, "isChanged")
        return isChanged
    end
    java_overload :isChangedFeature, 1
    

    def isChanged()
        return @changed
    end
    java_overload :isChanged, 0
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Feature, "org/allbinary/game/configuration/feature/Feature" unless const_defined?(:Feature, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureUtil, "org/allbinary/game/configuration/feature/GameFeatureUtil" unless const_defined?(:GameFeatureUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :GameFeatureEvent, "org/allbinary/game/configuration/event/GameFeatureEvent" unless const_defined?(:GameFeatureEvent, false)

end; end; end; end; end

