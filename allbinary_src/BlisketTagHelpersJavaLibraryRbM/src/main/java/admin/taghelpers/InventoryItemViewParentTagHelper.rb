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

require "java/lang/JavaClass"

module ::Admin; module Taghelpers

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
            if viewObject.getTypeId() != ::Views::Admin::Inventory::InventoryItemView::TYPE_ID
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Must have ")
                stringBuffer.append("InventoryItemView and not: ")
                stringBuffer.append(inventoryTag.getHelper().class.java_name)
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
            if viewObject.getTypeId() != ::Views::Admin::Inventory::Download::DownloadableInventoryItemView::TYPE_ID
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Must have ")
                stringBuffer.append("DownloadableInventoryItemView and not: ")
                stringBuffer.append(inventoryTag.getHelper().class.java_name)
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
            if viewObject.getTypeId() != ::Views::Admin::Inventory::InventoryItemView::TYPE_ID && viewObject.getTypeId() != ::Views::Admin::Inventory::Download::DownloadableInventoryItemView::TYPE_ID
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Must have ")
                stringBuffer.append("specific TYPE_ID and not: ")
                stringBuffer.append(inventoryTag.getHelper().class.java_name)
                raise StandardError.new(stringBuffer.to_s)
            end
            return viewObject
        else
            raise StandardError.new("Must have parent tag.")
        end
    end
    

    # throws Exception
    def checkForValidationViewHelper(helperObject)
        if !helperObject.is_a?(::Taghelpers::ValidationViewHelper)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Must have ")
            stringBuffer.append("ValidationViewHelper")
            stringBuffer.append("and not: ")
            stringBuffer.append(helperObject.class.java_name)
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

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestMapInterface, "org/allbinary/logic/communication/http/request/RequestMapInterface" unless const_defined?(:RequestMapInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface" unless const_defined?(:TransformInterface, false); end; end; end; end; end
module ::Taghelpers; autoload :ValidationViewHelper, "taghelpers/ValidationViewHelper" unless const_defined?(:ValidationViewHelper, false); end
module ::Tags; autoload :HelperTag, "tags/HelperTag" unless const_defined?(:HelperTag, false); end
module ::Views; module Admin; module Inventory; autoload :InventoryItemView, "views/admin/inventory/InventoryItemView" unless const_defined?(:InventoryItemView, false); end; end; end
module ::Views; module Admin; module Inventory; module Download; autoload :DownloadableInventoryItemView, "views/admin/inventory/download/DownloadableInventoryItemView" unless const_defined?(:DownloadableInventoryItemView, false); end; end; end; end

begin
    InventoryItemViewParentTagHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

