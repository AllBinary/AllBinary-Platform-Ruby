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


module ::Org; module Allbinary; module Logic; module ControlPackage; module Search

class TableSearchRequest
    attr_accessor :xslFile, :pageName, :contentType, :keywords, :searchParams

    def jfields_org_allbinary_logic_control_search_TableSearchRequest
        @xslFile = nil unless instance_variable_defined?(:@xslFile)
        @pageName = nil unless instance_variable_defined?(:@pageName)
        @contentType = nil unless instance_variable_defined?(:@contentType)
        @keywords = nil unless instance_variable_defined?(:@keywords)
        @searchParams = nil unless instance_variable_defined?(:@searchParams)
    end
    

    def initialize(keywords, searchParams, xslFile, contentType)
        jfields_org_allbinary_logic_control_search_TableSearchRequest
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
        path = (::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH).to_s + @xslFile
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
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, SearchData::FILENAME, self.getFileBaseName())
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :SearchData, "org/allbinary/logic/control/search/SearchData" unless const_defined?(:SearchData, false)
autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams" unless const_defined?(:SearchParams, false)

end; end; end; end; end

