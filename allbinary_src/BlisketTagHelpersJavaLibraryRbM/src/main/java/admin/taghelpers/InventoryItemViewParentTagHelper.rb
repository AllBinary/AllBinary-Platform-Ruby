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
        InventoryItemViewParentTagHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InventoryItemViewParentTagHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InventoryItemViewParentTagHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InventoryItemViewParentTagHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :RequestMapInterface, "org/allbinary/logic/communication/http/request/RequestMapInterface"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface"
autoload :ValidationViewHelper, "taghelpers/ValidationViewHelper"
autoload :HelperTag, "tags/HelperTag"
autoload :InventoryItemView, "views/admin/inventory/InventoryItemView"
autoload :DownloadableInventoryItemView, "views/admin/inventory/download/DownloadableInventoryItemView"

begin
    InventoryItemViewParentTagHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

