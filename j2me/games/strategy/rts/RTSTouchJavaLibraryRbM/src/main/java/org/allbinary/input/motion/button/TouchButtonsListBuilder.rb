# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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
# package org.allbinary.input.motion.button

require "org/allbinary/input/motion/button/BaseTouchInput"

class TouchButtonsListBuilder < BaseTouchInput
    attr_accessor :baseTouchInputList

    def initialize_fields
        @baseTouchInputList = BasicArrayListD.new()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def addList(list)
        size = @baseTouchInputList.size()
        baseTouchInput = nil
        (0...size).each do |index|
            baseTouchInput = @baseTouchInputList.get(index)
            list.addAllList(baseTouchInput.getList())
        end
    end
    

    def add(baseTouchInput)
        @baseTouchInputList.add(baseTouchInput)
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

