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
# package org.allbinary.business.category

require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/business/category/CategoryView"

class CategoryComponent < CategoryView
    include TransformInterface
    attr_accessor :NO_TYPE

    def initialize_fields
        @NO_TYPE = 0
    end
    

    def initialize(categoryInterface)
        super(categoryInterface)
        initialize_fields
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    

    def getTransformDocumentInterface()
        return nil
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return nil
    end
    

    def setTransformDocumentInterface(viewDocumentInterface)
    end
    

    # throws Exception
    def toXmlDoc()
        document = DomDocumentHelper.create()
        document.appendChild(CategoryView.new(self.getCategoryInterface()).toXmlNode(document))
        return document
    end
    

    # throws Exception
    def view()
        return nil
    end
end

require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/allbinary/business/category/CategoryInterface"

