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
# package org.allbinary.globals

require "java/lang/Object"
require "org/allbinary/globals/UrlGlobalsInterface"

#implements
class AppUrlGlobals < UrlGlobalsInterface
    attr_accessor :path

    def initialize_fields
        @path = StringUtil.getInstance().EMPTY_STRING
    end

    def initialize
        super()
        initialize_fields
    end
    

    def isTestingMode()
        return false
    end
    

    def getWebappPath()
        return @path
    end
    

    def setWebappPath(path)
        java_monitor.synchronize do
        @path = path
        if !(@path.end_with?("\\") || @path.end_with?("/"))
            @path = @path + "\\"
        end
        end
    end
    

    def getTestHtmlPath()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws Exception
    def getMainPath()
        return @path
    end
end

require "org/allbinary/logic/string/StringUtil"

class AppUrlGlobals
    NULL_APP_URL_GLOBALS = AppUrlGlobals.new()
end

