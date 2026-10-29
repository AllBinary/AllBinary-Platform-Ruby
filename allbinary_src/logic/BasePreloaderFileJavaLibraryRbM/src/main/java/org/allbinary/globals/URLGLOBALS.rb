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


class URLGLOBALS
    

    def self.init(urlGlobalsInterface)
        URLGLOBALS.urlGlobalsInterface = urlGlobalsInterface
    end
    

    def self.isTestingMode()
        return URLGLOBALS.urlGlobalsInterface.isTestingMode()
    end
    

    def self.getWebappPath()
        return URLGLOBALS.urlGlobalsInterface.getWebappPath()
    end
    

    def self.getTestHtmlPath()
        return URLGLOBALS.urlGlobalsInterface.getTestHtmlPath()
    end
    

    # throws Exception
    def self.getMainPath()
        return URLGLOBALS.urlGlobalsInterface.getMainPath()
    end

    def self.urlGlobalsInterface()
        return defined?(@@urlGlobalsInterface) ? @@urlGlobalsInterface : nil
    end

    def self.urlGlobalsInterface=(value)
        @@urlGlobalsInterface = value
    end
end

require "org/allbinary/globals/AppUrlGlobals"
require "org/allbinary/globals/UrlGlobalsInterface"

class URLGLOBALS
    @@urlGlobalsInterface = AppUrlGlobals::NULL_APP_URL_GLOBALS
end

