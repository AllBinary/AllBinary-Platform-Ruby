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
# package org.allbinary.logic.communication.http.request


class HttpRequestUtil
    

    def self.getInstance()
        return HttpRequestUtil.instance
    end
    

    def initialize()
    end
    

    def getLastSeparatorIndex(requestPath)
        beginIndex = (requestPath.rindex(AbPathData.getInstance().SEPARATOR) || -1)
        if beginIndex < 0
            beginIndex = (requestPath.rindex("\\") || -1)
        end
        return beginIndex
    end
    

    # throws Exception
    def generateFileName(requestPath)
        beginIndex = self.getLastSeparatorIndex(requestPath)
        if beginIndex < 0
            return requestPath
        else
            return requestPath[beginIndex + 1..]
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/path/AbPathData"

class HttpRequestUtil
    @@instance = HttpRequestUtil.new()
end

