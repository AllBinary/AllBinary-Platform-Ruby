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
# package org.allbinary.graphics.j2me


class StatusFactory
    attr_accessor :logUtil, :SETSTATUS, :STATUS_LABEL

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @SETSTATUS = "setStatus"
        @STATUS_LABEL = "Status: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return StatusFactory.instance
    end
    

    def setStatusNoLog(status)
        MyFrame.statusJLabel.setText(status)
    end
    

    def setStatus(status)
        self.setStatusNoLog(status)
        @logUtil.putF(@STATUS_LABEL + status, self, @SETSTATUS)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/graphics/j2me/MyFrame"

class StatusFactory
    @@instance = StatusFactory.new()
end

