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
# package org.allbinary.business.user

require "org/allbinary/data/tree/dom/DomNodeInterface"

class UserDomNode
    include DomNodeInterface
    attr_accessor :dataMappingInterface

    def initialize_fields
        @dataMappingInterface = nil
    end
    

    def initialize(dataMappingInterface)
        initialize_fields
        @dataMappingInterface = dataMappingInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        hashMap = @dataMappingInterface.toHashMap()
        hashMap.put(EntryData.getInstance().LASTMODIFIED, _EMPTY_STRING)
        hashMap.put(EntryData.getInstance().ENCRYPTION, _EMPTY_STRING)
        hashMap.put(UserData::PASSWORD, _EMPTY_STRING)
        return ModDomHelper.createNameValueNodes(document, UserData::NAME, hashMap)
    end
    

    # throws Exception
    def toXmlDoc()
        return nil
    end
    

    # throws Exception
    def view()
        return nil
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :EntryData, "org/allbinary/business/entry/EntryData"
autoload :TableMappingInterface, "org/allbinary/data/tables/TableMappingInterface"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :UserData, "org/allbinary/business/user/UserData"

