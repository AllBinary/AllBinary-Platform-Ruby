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

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/business/category/CategoryView"

module ::Org; module Allbinary; module Business; module Category

class CategoryComponent < CategoryView
    include ::Org::Allbinary::Logic::Visual::Transform::TransformInterface
    attr_accessor :NO_TYPE

    def jfields_org_allbinary_business_category_CategoryComponent
        @NO_TYPE = 0
    end
    

    def initialize(categoryInterface)
        super(categoryInterface)
        jfields_org_allbinary_business_category_CategoryComponent
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    java_overload :getTypeId, 0
    

    def getTransformDocumentInterface()
        return nil
    end
    java_overload :getTransformDocumentInterface, 0
    

    # throws Exception
    def getTransformInfoInterface()
        return nil
    end
    java_overload :getTransformInfoInterface, 0
    

    def setTransformDocumentInterface(viewDocumentInterface)
    end
    java_overload :setTransformDocumentInterface, 1
    

    # throws Exception
    def toXmlDoc()
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        document.appendChild(CategoryView.new(self.getCategoryInterface()).toXmlNode(document))
        return document
    end
    java_overload :toXmlDoc, 0
    

    # throws Exception
    def view()
        return nil
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false)

end; end; end; end

