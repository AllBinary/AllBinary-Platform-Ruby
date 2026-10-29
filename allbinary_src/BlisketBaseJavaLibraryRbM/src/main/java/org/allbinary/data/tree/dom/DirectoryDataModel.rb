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

require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/data/tree/dom/DomNodeInterface"

class DirectoryDataModel
    include DomNodeInterface
    include TransformInterface
    attr_accessor :fileBasicArrayList, :transformDocumentInterface, :NO_TYPE

    def initialize_fields
        @fileBasicArrayList = nil
        @transformDocumentInterface = nil
        @NO_TYPE = 0
    end
    

    def initialize(file)
        initialize_fields
        @fileBasicArrayList = Directory.getInstance().search(file)
        @transformDocumentInterface = TransformDocumentFactory.getInstance()
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return nil
    end
    

    def setTransformDocumentInterface(transformDocumentInterface)
        @transformDocumentInterface = transformDocumentInterface
    end
    

    def getTransformDocumentInterface()
        return @transformDocumentInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        dirNode = document.createElement("dir")
        size = @fileBasicArrayList.size()
        nextFile = nil
        fileNode = nil
        (0...size).each do |index|
            nextFile = @fileBasicArrayList.get(index)
            fileNode = FileDomDataModel.new(nextFile).toXmlNode(document)
            dirNode.appendChild(fileNode)
        end
        return dirNode
    end
    

    # throws Exception
    def toXmlDoc()
        return self.getTransformDocumentInterface().getDoc()
    end
    

    # throws Exception
    def view()
        node = self.toXmlNode(self.getTransformDocumentInterface().getDoc())
        self.getTransformDocumentInterface().getBaseNode().appendChild(node)
        return XmlDocumentHelper.toString(self.getTransformDocumentInterface().getDoc())
    end
end

require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/visual/transform/data/TransformDocumentFactory"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/util/BasicArrayList"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/data/tree/dom/FileDomDataModel"

