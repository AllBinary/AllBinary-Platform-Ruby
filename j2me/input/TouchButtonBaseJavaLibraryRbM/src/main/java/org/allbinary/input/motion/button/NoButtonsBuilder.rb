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
# package org.allbinary.input.motion.button

require "org/allbinary/input/motion/button/BaseTouchInput"

class NoButtonsBuilder < BaseTouchInput
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
            list = BasicArrayListUtil.getInstance().getImmutableInstance()
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"

