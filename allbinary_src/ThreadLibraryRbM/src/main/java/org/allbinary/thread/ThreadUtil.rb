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
# package org.allbinary.thread


class ThreadUtil
    attr_accessor :logUtil, :JOIN

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @JOIN = "join"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ThreadUtil.instance
    end
    

    def isRunning(thread)
        if thread != nil && thread.isAlive()
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def join(thread)
        if ThreadUtil.getInstance().isRunning(thread)
            @logUtil.putF("Waiting for Thread To Join/End", self, @JOIN)
            thread.join()
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "java/lang/Thread"

class ThreadUtil
    @@instance = ThreadUtil.new()
end

