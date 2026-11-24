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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module User

class UserDomNode
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :dataMappingInterface

    def jfields_org_allbinary_business_user_UserDomNode
        @dataMappingInterface = nil unless instance_variable_defined?(:@dataMappingInterface)
    end
    

    def initialize(dataMappingInterface)
        jfields_org_allbinary_business_user_UserDomNode
        @dataMappingInterface = dataMappingInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        _EMPTY_STRING = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        hashMap = @dataMappingInterface.toHashMap()
        hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, _EMPTY_STRING)
        hashMap.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENCRYPTION, _EMPTY_STRING)
        hashMap.put(UserData::PASSWORD, _EMPTY_STRING)
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, UserData::NAME, hashMap)
    end
    java_overload :toXmlNode, 1
    

    # throws Exception
    def toXmlDoc()
        return nil
    end
    java_overload :toXmlDoc, 0
    

    # throws Exception
    def view()
        return nil
    end
    java_overload :view, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; autoload :TableMappingInterface, "org/allbinary/data/tables/TableMappingInterface" unless const_defined?(:TableMappingInterface, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false)

end; end; end; end

