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
# package org.allbinary.game.input

require "org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface"

class SelectRTSLayerVisitorFactory
    include SelectRTSLayerVisitorFactoryInterface
    

    def self.getInstance()
        return SelectRTSLayerVisitorFactory.instance
    end
    

    def initialize()
    end
    

    def create(selectedRTSLayersPlayerGameInput)
        return SelectRTSLayerVisitor.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/util/visitor/Visitor"
require "org/allbinary/game/input/SelectRTSLayerVisitor"
require "org/allbinary/game/input/SelectedRTSLayersPlayerGameInput"

class SelectRTSLayerVisitorFactory
    @@instance = SelectRTSLayerVisitorFactory.new()
end

