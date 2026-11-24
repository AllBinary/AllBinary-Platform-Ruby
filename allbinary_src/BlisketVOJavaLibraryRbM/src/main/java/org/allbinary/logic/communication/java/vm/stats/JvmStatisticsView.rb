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
# package org.allbinary.logic.communication.java.vm.stats

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/communication/java/vm/stats/JvmStatisticsMapping"

module ::Org; module Allbinary; module Logic; module Communication; module Java; module Vm; module Stats

class JvmStatisticsView < JvmStatisticsMapping
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    

    def initialize()
        super()
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, JvmStatisticsData::NAME, hashMap)
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :JvmStatisticsData, "org/allbinary/logic/communication/java/vm/stats/JvmStatisticsData" unless const_defined?(:JvmStatisticsData, false)

end; end; end; end; end; end; end

