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

require "org/allbinary/logic/visual/transform/info/TransformInfoHttp"

class TransformInfoHttpSearch < TransformInfoHttp
    

    def initialize(searchRequest)
        super(searchRequest.getPropertiesHashMap(), searchRequest.getPageContext())
        if searchRequest.getStoreFront().getName() != nil
            self.setStoreName(searchRequest.getStoreFront().getName())
        else
            self.setStoreName(StringUtil.getInstance().EMPTY_STRING)
        end
        dataFileName = searchRequest.getXslFile()
        self.setTemplateFile(dataFileName)
    end
    

    # throws Exception
    def getPath()
        stringBuffer = StringMaker.new()
        stringBuffer.append(URLGLOBALS.getMainPath())
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(self.getStoreName())
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        return stringBuffer.to_s
    end
    

    # throws Exception
    def getTemplateFilePath()
        return AbPath.new(self.getPath(), self.getTemplateFile())
    end
    

    # throws Exception
    def getObjectConfigFilePath()
        return AbPath.new(self.getPath(), self.getObjectConfigFile())
    end
    

    # throws Exception
    def getDataFilePath()
        return AbPath.new(self.getPath(), self.getDataFile())
    end
end

require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/control/search/SearchRequest"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

