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
# package views.admin.inventory.download

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/inventory/download/DownloadableInventoryItemView"

class NewValidationView < DownloadableInventoryItemView
    include ValidationComponentInterface
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface, StringUtil.getInstance().EMPTY_STRING)
        @itemInterface = BasicItem.new()
        @downloadableItem = DownloadableItem.new(@itemInterface.getId())
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
        return "Error Creating New Downloadable Item"
    end
end

require "org/allbinary/business/user/commerce/inventory/item/BasicItem"
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

