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

class NoBuildingSelectedTouchButtonsBuilder < BaseTouchInput
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        super()
        initialize_fields
    end
    

    def getList()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
            list = BasicArrayListD.new()
            list.addAllList(BasicTouchButtonsBuilder.new().getList())
            list.addAllList(BuildingScrollTouchButtonsBuilder.new().getList())
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/input/motion/button/BasicTouchButtonsBuilder"
require "org/allbinary/input/motion/button/BuildingScrollTouchButtonsBuilder"

