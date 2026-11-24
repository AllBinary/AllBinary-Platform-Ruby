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
# package org.allbinary.game.paint.help

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/game/paint/help/HelpPaintable"

module ::Org; module Allbinary; module Game; module Paint; module Help

class BasicInputMappingHelpPaintable < HelpPaintable
    attr_accessor :gameInputMappingArray, :NONE

    def jfields_org_allbinary_game_paint_help_BasicInputMappingHelpPaintable
        @gameInputMappingArray = nil unless instance_variable_defined?(:@gameInputMappingArray)
        @NONE = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance().NONE
    end
    

    def initialize(gameInputMappingArray, basicColor)
        super("Help Screen", ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLACK, basicColor)
        jfields_org_allbinary_game_paint_help_BasicInputMappingHelpPaintable
        @gameInputMappingArray = gameInputMappingArray
        self.update(@NONE, @NONE)
    end
    

    def update(selectedGameKey, selectedInput)
        gameKeyMapping = ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        _EQUAL = " = "
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = @gameInputMappingArray.length
        keyInfo = Array.new(size, nil)
        gameInputMapping = nil
        gameKey = nil
        list = nil
        (0...size).each do |index|
            gameInputMapping = @gameInputMappingArray[index]
            gameKey = gameInputMapping.getGameKey()
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey)
            stringMaker.delete(0, stringMaker.length())
            keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(_EQUAL).append(self.get(list)).to_s
        end
        BasicInputMappingHelpPaintable.superclass.java_super_method(:setInputInfoP, 1).bind(self).call(keyInfo)
    end
    java_overload :update, 2
    

    def get(keyList)
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        _AND = "and "
        key = nil
        size = keyList.size()
        (0...size).each do |index|
            key = keyList.objectArray[index]
            stringBuffer.append(key.getName())
            if index + 1 < keyList.size()
                if keyList.size() == 2
                    stringBuffer.append(commonSeps.SPACE).append(_AND)
                else
                    if index + 2 == keyList.size()
                        stringBuffer.append(commonSeps.COMMA_SEP)
                        stringBuffer.append(_AND)
                    else
                        stringBuffer.append(commonSeps.COMMA_SEP)
                    end
                end
            end
        end
        return stringBuffer.to_s
    end
    java_overload :get, 1
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :GameInputMapping, "org/allbinary/game/input/mapping/GameInputMapping" unless const_defined?(:GameInputMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :PersistentInputMapping, "org/allbinary/game/input/mapping/PersistentInputMapping" unless const_defined?(:PersistentInputMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end

