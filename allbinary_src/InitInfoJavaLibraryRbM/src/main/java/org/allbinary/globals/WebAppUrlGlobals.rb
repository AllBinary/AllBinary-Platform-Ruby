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
require "java/lang/JavaOverload"
require "org/allbinary/globals/UrlGlobalsInterface"

module ::Org; module Allbinary; module Globals

class WebAppUrlGlobals < UrlGlobalsInterface
    attr_accessor :path, :isWebappPathSet

    def jfields_org_allbinary_globals_WebAppUrlGlobals
        @path = nil unless instance_variable_defined?(:@path)
        @isWebappPathSet = false
    end

    def initialize
        super()
        jfields_org_allbinary_globals_WebAppUrlGlobals
    end
    

    def isTestingMode()
        return ::Org::Allbinary::Business::Init::InitInfo.getInstance().isTesting()
    end
    java_overload :isTestingMode, 0
    

    def getWebappPath()
        return @path
    end
    java_overload :getWebappPath, 0
    

    def setWebappPath(path)
        java_monitor.synchronize do
        path = path
        @isWebappPathSet = true
        end
    end
    java_overload :setWebappPath, 1
    

    def getTestHtmlPath()
        return ::Org::Allbinary::Business::Init::InitInfo.getInstance().getTestHtmlPath()
    end
    java_overload :getTestHtmlPath, 0
    

    # throws Exception
    def getMainPath()
        mainPath = ::Org::Allbinary::Business::Init::InitInfo.getInstance().getMainPath()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(mainPath)
            return mainPath
        elsif @isWebappPathSet
            return self.getWebappPath()
        else
            raise StandardError.new("Webapp Path is not set")
        end
    end
    java_overload :getMainPath, 0
end

module ::Org; module Allbinary; module Business; module Init; autoload :InitInfo, "org/allbinary/business/init/InitInfo" unless const_defined?(:InitInfo, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end

end; end; end

