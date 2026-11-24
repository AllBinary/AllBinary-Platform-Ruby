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
require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

class DirectoryDataModel
    include DomNodeInterface
    include ::Org::Allbinary::Logic::Visual::Transform::TransformInterface
    attr_accessor :fileBasicArrayList, :transformDocumentInterface, :NO_TYPE

    def jfields_org_allbinary_data_tree_dom_DirectoryDataModel
        @fileBasicArrayList = nil unless instance_variable_defined?(:@fileBasicArrayList)
        @transformDocumentInterface = nil unless instance_variable_defined?(:@transformDocumentInterface)
        @NO_TYPE = 0
    end
    

    def initialize(file)
        jfields_org_allbinary_data_tree_dom_DirectoryDataModel
        @fileBasicArrayList = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance().search(file)
        @transformDocumentInterface = ::Org::Allbinary::Logic::Visual::Transform::DataPackage::TransformDocumentFactory.getInstance()
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    java_overload :getTypeId, 0
    

    # throws Exception
    def getTransformInfoInterface()
        return nil
    end
    java_overload :getTransformInfoInterface, 0
    

    def setTransformDocumentInterface(transformDocumentInterface)
        @transformDocumentInterface = transformDocumentInterface
    end
    java_overload :setTransformDocumentInterface, 1
    

    def getTransformDocumentInterface()
        return @transformDocumentInterface
    end
    java_overload :getTransformDocumentInterface, 0
    

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
    java_overload :toXmlNode, 1
    

    # throws Exception
    def toXmlDoc()
        return self.getTransformDocumentInterface().getDoc()
    end
    java_overload :toXmlDoc, 0
    

    # throws Exception
    def view()
        node = self.toXmlNode(self.getTransformDocumentInterface().getDoc())
        self.getTransformDocumentInterface().getBaseNode().appendChild(node)
        return ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(self.getTransformDocumentInterface().getDoc())
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentFactory, "org/allbinary/logic/visual/transform/data/TransformDocumentFactory" unless const_defined?(:TransformDocumentFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :FileDomDataModel, "org/allbinary/data/tree/dom/FileDomDataModel" unless const_defined?(:FileDomDataModel, false)

end; end; end; end; end

