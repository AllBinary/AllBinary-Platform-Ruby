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
# package org.allbinary.logic.visual.transform.info

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttp"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoHttpSearch < TransformInfoHttp
    

    def initialize(searchRequest)
        super(searchRequest.getPropertiesHashMap(), searchRequest.getPageContext())
        if searchRequest.getStoreFront().getName() != nil
            self.setStoreName(searchRequest.getStoreFront().getName())
        else
            self.setStoreName(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        end
        dataFileName = searchRequest.getXslFile()
        self.setTemplateFile(dataFileName)
    end
    

    # throws Exception
    def getPath()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(self.getStoreName())
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        return stringBuffer.to_s
    end
    java_overload :getPath, 0
    

    # throws Exception
    def getTemplateFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.getPath(), self.getTemplateFile())
    end
    java_overload :getTemplateFilePath, 0
    

    # throws Exception
    def getObjectConfigFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.getPath(), self.getObjectConfigFile())
    end
    java_overload :getObjectConfigFilePath, 0
    

    # throws Exception
    def getDataFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.getPath(), self.getDataFile())
    end
    java_overload :getDataFilePath, 0
end

module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end; end

