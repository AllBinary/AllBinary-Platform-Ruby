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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/game/input/PlayerGameInput"

module ::Org; module Allbinary; module Game; module Input

class GameInputProcessorComposite < PlayerGameInput
    attr_accessor :name, :gameInputProcessorInterface, :NAME_LABEL

    def jfields_org_allbinary_game_input_GameInputProcessorComposite
        @name = nil unless instance_variable_defined?(:@name)
        @gameInputProcessorInterface = nil unless instance_variable_defined?(:@gameInputProcessorInterface)
        @NAME_LABEL = " GameInputProcessorInterface: "
    end
    

    def initialize(name, gameInputProcessorInterface)
        super(::Org::Allbinary::Util::BasicArrayListD.new(), ::Org::Allbinary::Util::BasicArrayListD.new(), -1)
        jfields_org_allbinary_game_input_GameInputProcessorComposite
        @name = name
        @gameInputProcessorInterface = gameInputProcessorInterface
    end
    

    def update()
        java_monitor.synchronize do
        begin
            list = self.getGameKeyEventList()
            @gameInputProcessorInterface.onInput(list)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.UPDATE, e)
        end
        end
    end
    java_overload :update, 0
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(super.to_s).append(@NAME_LABEL).append(@name).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :GameInputProcessorInterface, "org/allbinary/game/input/GameInputProcessorInterface" unless const_defined?(:GameInputProcessorInterface, false)

end; end; end; end

