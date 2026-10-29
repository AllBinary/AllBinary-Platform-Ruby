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
# package admin.taghelpers


class InventoryItemViewParentTagHelper
    

    def self.getInstance()
        return InventoryItemViewParentTagHelper.instance
    end
    

    # throws Exception
    def getInventoryItemView(inventoryTag)
        if inventoryTag != nil
            self.checkForValidationViewHelper(inventoryTag.getHelper())
            validationViewHelper = inventoryTag.getHelper()
            viewObject = validationViewHelper.getViewObject()
            if viewObject.getTypeId() != InventoryItemView::TYPE_ID
                stringBuffer = StringMaker.new()
                stringBuffer.append("Must have ")
                stringBuffer.append("InventoryItemView and not: ")
                stringBuffer.append(inventoryTag.getHelper().class.name)
                raise StandardError.new(stringBuffer.to_s)
            end
            return viewObject
        else
            raise StandardError.new("Must have parent tag.")
        end
    end
    

    # throws Exception
    def getDownloadableInventoryItemView(inventoryTag)
        if inventoryTag != nil
            self.checkForValidationViewHelper(inventoryTag.getHelper())
            validationViewHelper = inventoryTag.getHelper()
            viewObject = validationViewHelper.getViewObject()
            if viewObject.getTypeId() != DownloadableInventoryItemView::TYPE_ID
                stringBuffer = StringMaker.new()
                stringBuffer.append("Must have ")
                stringBuffer.append("DownloadableInventoryItemView and not: ")
                stringBuffer.append(inventoryTag.getHelper().class.name)
                raise StandardError.new(stringBuffer.to_s)
            end
            return viewObject
        else
            raise StandardError.new("Must have parent tag.")
        end
    end
    

    # throws Exception
    def getRequestMapInterface(inventoryTag)
        if inventoryTag != nil
            self.checkForValidationViewHelper(inventoryTag.getHelper())
            validationViewHelper = inventoryTag.getHelper()
            viewObject = validationViewHelper.getViewObject()
            if viewObject.getTypeId() != InventoryItemView::TYPE_ID && viewObject.getTypeId() != DownloadableInventoryItemView::TYPE_ID
                stringBuffer = StringMaker.new()
                stringBuffer.append("Must have ")
                stringBuffer.append("specific TYPE_ID and not: ")
                stringBuffer.append(inventoryTag.getHelper().class.name)
                raise StandardError.new(stringBuffer.to_s)
            end
            return viewObject
        else
            raise StandardError.new("Must have parent tag.")
        end
    end
    

    # throws Exception
    def checkForValidationViewHelper(helperObject)
        if !(helperObject.is_a?(ValidationViewHelper))
            stringBuffer = StringMaker.new()
            stringBuffer.append("Must have ")
            stringBuffer.append("ValidationViewHelper")
            stringBuffer.append("and not: ")
            stringBuffer.append(helperObject.class.name)
            raise StandardError.new(stringBuffer.to_s)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/http/request/RequestMapInterface"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/TransformInterface"
require "taghelpers/ValidationViewHelper"
require "tags/HelperTag"
require "views/admin/inventory/InventoryItemView"
require "views/admin/inventory/download/DownloadableInventoryItemView"

class InventoryItemViewParentTagHelper
    @@instance = InventoryItemViewParentTagHelper.new()
end

