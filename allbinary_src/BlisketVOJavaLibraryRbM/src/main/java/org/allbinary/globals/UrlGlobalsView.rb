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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class UrlGlobalsView
    include DomNodeInterface
    

    def initialize()
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(UrlGlobalsData::WEBAPPPATH, org.allbinary.globals.URLGLOBALS.getWebappPath())
        node = ModDomHelper.createNameValueNodes(document, UrlGlobalsData::NAME, hashMap)
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/globals/UrlGlobalsData"

