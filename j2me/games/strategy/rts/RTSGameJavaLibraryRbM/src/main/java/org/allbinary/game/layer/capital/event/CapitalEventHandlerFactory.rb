# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer.capital.event


class CapitalEventHandlerFactory
    

    def self.static_init
        @@capitalEventHandlerArray = Array.new(10, nil)
        (CapitalEventHandlerFactory.capitalEventHandlerArray.length - 1).step(0, -(1)) do |index|
            CapitalEventHandlerFactory.capitalEventHandlerArray[index] = CapitalEventHandler.new()
        end
    end
    

    def self.getInstance(groupInterface)
        return CapitalEventHandlerFactory.capitalEventHandlerArray[(groupInterface.getGroupId()).to_i]
    end
    

    def self.removeAll()
        (CapitalEventHandlerFactory.capitalEventHandlerArray.length - 1).step(0, -(1)) do |index|
            CapitalEventHandlerFactory.capitalEventHandlerArray[index].removeAllListeners()
        end
    end

    def self.capitalEventHandlerArray()
        return defined?(@@capitalEventHandlerArray) ? @@capitalEventHandlerArray : nil
    end

    def self.capitalEventHandlerArray=(value)
        @@capitalEventHandlerArray = value
    end
end

require "org/allbinary/game/identification/Group"
require "org/allbinary/game/layer/capital/event/CapitalEventHandler"

class CapitalEventHandlerFactory
    @@capitalEventHandlerArray = nil
end

CapitalEventHandlerFactory.static_init

