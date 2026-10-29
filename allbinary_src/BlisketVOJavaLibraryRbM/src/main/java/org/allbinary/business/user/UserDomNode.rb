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

require "java/util/HashMap"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/data/tables/TableMappingInterface"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/string/StringUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/UserData"

