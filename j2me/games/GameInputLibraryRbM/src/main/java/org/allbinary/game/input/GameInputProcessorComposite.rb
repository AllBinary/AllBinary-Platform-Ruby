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
require "org/allbinary/game/input/PlayerGameInput"

class GameInputProcessorComposite < PlayerGameInput
    attr_accessor :name, :gameInputProcessorInterface, :NAME_LABEL

    def initialize_fields
        @name = nil
        @gameInputProcessorInterface = nil
        @NAME_LABEL = " GameInputProcessorInterface: "
    end
    

    def initialize(name, gameInputProcessorInterface)
        super(BasicArrayListD.new(), BasicArrayListD.new(), -1)
        initialize_fields
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
    

    def toString()
        return StringMaker.new().append(super.to_s).append(@NAME_LABEL).append(@name).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/input/GameInputProcessorInterface"

