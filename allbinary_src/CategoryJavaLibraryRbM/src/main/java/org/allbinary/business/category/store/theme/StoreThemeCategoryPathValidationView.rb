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

require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryPathView"

class StoreThemeCategoryPathValidationView < StoreThemeCategoryPathView
    include ValidationInterface
    

    def initialize(categoryInterface)
        super(categoryInterface)
    end
    

    # throws Exception
    def isValid()
        return true
    end
    

    # throws Exception
    def toValidationInfoDoc()
        return nil
    end
    

    # throws Exception
    def toValidationInfoNode(document)
        return nil
    end
    

    # throws Exception
    def validationInfo()
        return "Error"
    end
end

require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface"

