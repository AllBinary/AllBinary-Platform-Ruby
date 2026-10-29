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
# package org.allbinary.game.layer


class PlayerOwnedRTSLayers
    attr_accessor :rtsLayerList

    def initialize_fields
        @rtsLayerList = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("All: ")
        stringBuffer.appendint(@rtsLayerList.size())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

