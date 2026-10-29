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

class WebAppUrlGlobals < UrlGlobalsInterface
    attr_accessor :path, :isWebappPathSet

    def initialize_fields
        @path = nil
        @isWebappPathSet = false
    end

    def initialize
        super()
        initialize_fields
    end
    

    def isTestingMode()
        return InitInfo.getInstance().isTesting()
    end
    

    def getWebappPath()
        return @path
    end
    

    def setWebappPath(path)
        java_monitor.synchronize do
        path = path
        @isWebappPathSet = true
        end
    end
    

    def getTestHtmlPath()
        return InitInfo.getInstance().getTestHtmlPath()
    end
    

    # throws Exception
    def getMainPath()
        mainPath = InitInfo.getInstance().getMainPath()
        if !StringValidationUtil.getInstance().isEmpty(mainPath)
            return mainPath
        elsif @isWebappPathSet
            return self.getWebappPath()
        else
            raise StandardError.new("Webapp Path is not set")
        end
    end
end

require "org/allbinary/business/init/InitInfo"
require "org/allbinary/logic/string/StringValidationUtil"

