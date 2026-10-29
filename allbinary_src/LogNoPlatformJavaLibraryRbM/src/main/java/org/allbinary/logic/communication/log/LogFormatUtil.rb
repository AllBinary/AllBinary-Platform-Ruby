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


#NoPlatform
class LogFormatUtil
    

    def self.getInstance()
        return LogFormatUtil.instance
    end
    

    def initialize()
    end
    

    def get(className, functionName, specialMessage, exception)
        raise RuntimeError.new()
    end
    

    def getS(className, functionName, specialMessage)
        raise RuntimeError.new()
    end
    

    def getO(exception)
        raise RuntimeError.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/java/exception/ExceptionUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/time/TimeStampUtil"

class LogFormatUtil
    @@instance = LogFormatUtil.new()
end

