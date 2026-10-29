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
# package org.allbinary.logic.communication.log


class LogBuffer
    attr_accessor :logUtil, :logEntryVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @logEntryVector = nil
    end
    

    def initialize()
        initialize_fields
        @logEntryVector = BasicArrayListD.new()
    end
    

    def add(log)
        @logEntryVector.add(log)
    end
    

    def logAll()
        size = @logEntryVector.size()
        (0...size).each do |index|
            log = @logEntryVector.get(index)
            @logUtil.putL(log)
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogUtil"

