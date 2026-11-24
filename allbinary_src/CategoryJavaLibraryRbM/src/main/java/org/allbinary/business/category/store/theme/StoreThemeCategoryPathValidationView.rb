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
# package org.allbinary.business.category.store.theme

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryPathView"

module ::Org; module Allbinary; module Business; module Category; module Store; module Theme

class StoreThemeCategoryPathValidationView < StoreThemeCategoryPathView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationInterface
    

    def initialize(categoryInterface)
        super(categoryInterface)
    end
    

    # throws Exception
    def isValid()
        return true
    end
    java_overload :isValid, 0
    

    # throws Exception
    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    # throws Exception
    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def validationInfo()
        return "Error"
    end
    java_overload :validationInfo, 0
end

module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :StoreThemeCategoryInterface, "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface" unless const_defined?(:StoreThemeCategoryInterface, false)

end; end; end; end; end; end

