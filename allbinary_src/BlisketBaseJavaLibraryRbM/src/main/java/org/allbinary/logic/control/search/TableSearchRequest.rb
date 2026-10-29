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
# package org.allbinary.logic.control.search


class TableSearchRequest
    attr_accessor :xslFile, :pageName, :contentType, :keywords, :searchParams

    def initialize_fields
        @xslFile = nil
        @pageName = nil
        @contentType = nil
        @keywords = nil
        @searchParams = nil
    end
    

    def initialize(keywords, searchParams, xslFile, contentType)
        initialize_fields
        @keywords = keywords
        @searchParams = searchParams
        @xslFile = xslFile
        @pageName = @pageName
        @contentType = contentType
    end
    

    def setKeywords(value)
        @keywords = value
    end
    

    def setParams(searchParams)
        @searchParams = searchParams
    end
    

    def setXslFile(value)
        @xslFile = value
    end
    

    def setFileBaseName(value)
        @pageName = value
    end
    

    def setContentType(value)
        @contentType = value
    end
    

    def getKeywords()
        return @keywords
    end
    

    def getParams()
        return @searchParams
    end
    

    # throws Exception
    def getXslFile()
        path = (URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH).to_s + @xslFile
        return path
    end
    

    def getFileBaseName()
        return @pageName
    end
    

    def getContentType()
        return @contentType
    end
    

    # throws Exception
    def getFileBaseNameNode(document)
        return ModDomHelper.createNameValueNodes(document, SearchData::FILENAME, self.getFileBaseName())
    end
end

require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/control/search/SearchData"
require "org/allbinary/logic/control/search/SearchParams"

