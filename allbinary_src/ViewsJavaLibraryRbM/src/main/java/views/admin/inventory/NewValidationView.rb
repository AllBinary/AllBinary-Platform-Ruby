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
# package views.admin.inventory

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/inventory/InventoryItemView"

class NewValidationView < InventoryItemView
    include ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface, StringUtil.getInstance().EMPTY_STRING)
        @itemInterface = BasicItem.new()
    end
    

    def isValid()
        begin
            return true
        rescue StandardError => e
            return false
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    def validationInfo()
        return "Error Creating New Item"
    end
end

autoload :BasicItem, "org/allbinary/business/user/commerce/inventory/item/BasicItem"
autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

