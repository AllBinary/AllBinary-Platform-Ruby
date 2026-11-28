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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/inventory/InventoryItemView"

module ::Views; module Admin; module Inventory

class UpdateFileValidationView < InventoryItemView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil

    def jfields_views_admin_inventory_UpdateFileValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_inventory_UpdateFileValidationView
    end
    

    def isValid_j0()
        begin
            command = self.getRequestHashMap().get(::Org::Allbinary::Globals::GLOBALS2::ADMINCOMMAND)
            if command == nil || (command <=> UPDATEPRODUCT) != 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Invalid AdminCommand=" + command, self, @commonStrings.IS_VALID)
                end
                return false
            end
            if ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemValidation.new(@itemInterface).isValid() == false
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("BasicItem is not valid", self, @commonStrings.IS_VALID)
                end
                return false
            end
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath())
            stringBuffer.append(storeFrontInterface.getCurrentHostNamePath())
            stringBuffer.append(@itemInterface.getCategory())
            fullCategory = stringBuffer.to_s
            categoryFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(fullCategory)
            if !categoryFile.isDirectory()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Category Does Not Exist: " + fullCategory, self, @commonStrings.IS_VALID)
                end
                return false
            end
            inventoryEntity = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            if inventoryEntity.getItem(@itemInterface.getId()) == nil
                return false
            end
            anyType = self.getRequestHashMap().get(@basicItemData.IMAGE)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(anyType)
                fileItem = anyType
                size = fileItem.getSize()
                fileName = fileItem.getName()
                ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                    return false
                end
            end
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.put("Exception in validation", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def validationInfo_j0()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        command = self.getRequestHashMap().get(::Org::Allbinary::Globals::GLOBALS2::ADMINCOMMAND)
        if command == nil || (command <=> UPDATEPRODUCT) != 0
            return ::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE
        end
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemValidation.new(@itemInterface).validationInfo())
        storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
        fullCategory = ::Org::Allbinary::Globals::URLGLOBALS.getWebappPath() + storeFrontInterface.getCurrentHostNamePath() + @itemInterface.getCategory()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Category: " + fullCategory, self, "validationInfo()")
        end
        begin
            if ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@itemInterface.getId()) == nil
                stringBuffer.append("Item does not exist.<br>")
            end
        rescue ::Org::Allbinary::Business::User::Commerce::Money::MoneyException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Existing Item With MoneyException", self, "validationInfo()")
            end
        end
        anyType = self.getRequestHashMap().get(@basicItemData.IMAGE)
        if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(anyType)
            fileItem = anyType
            size = fileItem.getSize()
            fileName = fileItem.getName()
            fileItemFieldName = fileItem.getFieldName()
            self.validationInfo(stringBuffer, fileName, fileItemFieldName, size)
        end
        return stringBuffer.to_s
    end
    

    # throws Exception
    def isValid_j2(fileName, size)
        fileData = ::Org::Allbinary::Logic::Io::FilePackage::FileData.getInstance()
        if size > fileData.MINIMAGEFILESIZE
            if size < fileData.MAXIMAGEFILESIZE
                if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                    return false
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("File Size To Large: ")
                    stringBuffer.appendlong(size)
                    stringBuffer.append(">")
                    stringBuffer.appendint(((fileData.MAXIMAGEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                return false
            end
            self.processImageFiles()
        end
        return true
    end

    def isValid(*java_overload_args)
        return isValid_j0(*java_overload_args) if java_overload_args.length == 0
        return isValid_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method isValid takes #{java_overload_args.length} arguments"
    end
    

    def validationInfo_j4(stringBuffer, fileName, fileItemFieldName, size)
        fileData = ::Org::Allbinary::Logic::Io::FilePackage::FileData.getInstance()
        if size > fileData.MINIMAGEFILESIZE
            if (fileItemFieldName <=> @basicItemData.IMAGE) == 0
                if size < fileData.MAXIMAGEFILESIZE
                    if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                        stringBuffer.append("FileName must be >")
                        stringBuffer.appendint(((fileData.MINLEN).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                        stringBuffer.append("and <")
                        stringBuffer.appendint(((fileData.MAXLEN).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                        stringBuffer.append("<br />")
                    end
                else
                    stringBuffer.append("Image File Is Not The Right Size. ")
                    stringBuffer.appendint(((fileData.MINIMAGEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append("< > ")
                    stringBuffer.appendint(((fileData.MAXIMAGEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append("<br />")
                end
            end
        end
    end

    def validationInfo(*java_overload_args)
        return validationInfo_j0(*java_overload_args) if java_overload_args.length == 0
        return validationInfo_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method validationInfo takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return UpdateFileValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:UPDATEPRODUCT, ::Org::Allbinary::StringPackage::CommonStrings.getInstance().UPDATE)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UpdateFileValidationView"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:UPDATEPRODUCT].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemValidation, "org/allbinary/business/user/commerce/inventory/item/BasicItemValidation" unless const_defined?(:BasicItemValidation, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntity, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity" unless const_defined?(:InventoryEntity, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; autoload :HttpFileUploadUtil, "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil" unless const_defined?(:HttpFileUploadUtil, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileData, "org/allbinary/logic/io/file/FileData" unless const_defined?(:FileData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    UpdateFileValidationView.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

