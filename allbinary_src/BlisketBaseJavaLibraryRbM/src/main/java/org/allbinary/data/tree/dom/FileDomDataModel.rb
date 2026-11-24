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
# package org.allbinary.data.tree.dom

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

class FileDomDataModel
    include DomNodeInterface
    attr_accessor :file

    def jfields_org_allbinary_data_tree_dom_FileDomDataModel
        @file = nil unless instance_variable_defined?(:@file)
    end
    

    def initialize(file)
        jfields_org_allbinary_data_tree_dom_FileDomDataModel
        @file = file
    end
    

    # throws Exception
    def toXmlNode(document)
        tableMappingInterface = FileTableMapping.new(@file)
        hashMap = tableMappingInterface.toHashMap()
        return ModDomHelper.createNodeWithValueNodes(document, "file", hashMap)
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tables; autoload :TableMappingInterface, "org/allbinary/data/tables/TableMappingInterface" unless const_defined?(:TableMappingInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :FileTableMapping, "org/allbinary/data/tree/dom/FileTableMapping" unless const_defined?(:FileTableMapping, false)
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false)

end; end; end; end; end

