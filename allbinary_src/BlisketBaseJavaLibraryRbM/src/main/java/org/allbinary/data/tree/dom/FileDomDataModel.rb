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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class FileDomDataModel
    include DomNodeInterface
    attr_accessor :file

    def initialize_fields
        @file = nil
    end
    

    def initialize(file)
        initialize_fields
        @file = file
    end
    

    # throws Exception
    def toXmlNode(document)
        tableMappingInterface = FileTableMapping.new(@file)
        hashMap = tableMappingInterface.toHashMap()
        return ModDomHelper.createNodeWithValueNodes(document, "file", hashMap)
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :TableMappingInterface, "org/allbinary/data/tables/TableMappingInterface"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :FileTableMapping, "org/allbinary/data/tree/dom/FileTableMapping"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"

