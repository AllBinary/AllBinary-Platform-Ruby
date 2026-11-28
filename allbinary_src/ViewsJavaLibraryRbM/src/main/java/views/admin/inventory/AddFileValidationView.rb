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

class AddFileValidationView < InventoryItemView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil, :basicItemData

    def jfields_views_admin_inventory_AddFileValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_inventory_AddFileValidationView
    end
    

    def isValid_j0()
        begin
            command = self.getRequestHashMap().get(::Org::Allbinary::Globals::GLOBALS2::ADMINCOMMAND)
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(command) || ((command <=> ADDPRODUCT) != 0 && (command <=> NEXTSTEP) != 0)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("Invalid AdminCommand: ")
                    stringBuffer.append(command)
                    stringBuffer.append(" must be: ")
                    stringBuffer.append(ADDPRODUCT)
                    stringBuffer.append(" or ")
                    stringBuffer.append(NEXTSTEP)
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                return false
            end
            basicItemValidation = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemValidation.new(@itemInterface)
            if basicItemValidation.isValid() == false
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF(basicItemValidation.validationInfo(), self, @commonStrings.IS_VALID)
                end
                return false
            end
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
            @itemInterface.setCategory(storeFrontInterface.getCategoryPath() + @itemInterface.getCategory())
            fullCategory = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).append(storeFrontInterface.getCurrentHostNamePath()).append(@itemInterface.getCategory()).to_s
            categoryFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(fullCategory)
            if !categoryFile.isDirectory()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Category Does Not Exist: " + fullCategory, self, @commonStrings.IS_VALID)
                end
                return false
            end
            if ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@itemInterface.getId()) != nil
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Item Already Exists", self, @commonStrings.IS_VALID)
                end
                return false
            end
            imageFileItemObject = self.getRequestHashMap().get(@basicItemData.IMAGE)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(imageFileItemObject)
                fileItem = imageFileItemObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                    return false
                end
            end
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
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
    

    def validationInfo_j0()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            command = self.getRequestHashMap().get(::Org::Allbinary::Globals::GLOBALS2::ADMINCOMMAND)
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(command) || ((command <=> ADDPRODUCT) != 0 && (command <=> NEXTSTEP) != 0)
                return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            end
            basicItemValidation = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemValidation.new(@itemInterface)
            if basicItemValidation.isValid() == false
                stringBuffer.append(basicItemValidation.validationInfo())
                stringBuffer.append("<br/>")
            end
            storeFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
            fullCategory = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).append(storeFrontInterface.getCurrentHostNamePath()).append(@itemInterface.getCategory()).to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Category: " + fullCategory, self, "validationInfo()")
            end
            categoryFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(fullCategory)
            if !categoryFile.isDirectory()
                stringBuffer.append("Category ")
                stringBuffer.append(@itemInterface.getCategory())
                stringBuffer.append(" does not exist.<br />")
            end
            begin
                if ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@itemInterface.getId()) != nil
                    stringBuffer.append("Id is already in use. Refresh the page for a valid id.<br/>")
                end
            rescue ::Org::Allbinary::Business::User::Commerce::Money::MoneyException => e
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Existing Item With MoneyException", self, "validationInfo()")
                end
            end
            anyType = self.getRequestHashMap().get(@basicItemData.IMAGE)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(anyType)
                fileItem = anyType
                fileName = fileItem.getName()
                fileItemFieldName = fileItem.getFieldName()
                size = fileItem.getSize()
                self.validationInfo(stringBuffer, fileName, fileItemFieldName, size)
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    

    # throws Exception
    def isValid_j2(fileName, size)
        fileData = ::Org::Allbinary::Logic::Io::FilePackage::FileData.getInstance()
        if size > fileData.MINIMAGEFILESIZE
            if size < fileData.MAXIMAGEFILESIZE
                if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                    return false
                else
                    pathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
                    extension = pathData.getExtension(fileName)
                    uploadMedia = ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::Media::UploadMediaSingleton.getInstance()
                    if !uploadMedia.isWriterSupported(extension) && !uploadMedia.isReaderSupported(extension)
                        return false
                    end
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
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("File Size To Small: ")
                stringBuffer.appendlong(size)
                stringBuffer.append(">")
                stringBuffer.appendint(((fileData.MINIMAGEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
            end
            return false
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
                        stringBuffer.append(" and <")
                        stringBuffer.appendint(((fileData.MAXLEN).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                        stringBuffer.append("<br/>")
                    else
                        pathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
                        extension = pathData.getExtension(fileName)
                        uploadMedia = ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::Media::UploadMediaSingleton.getInstance()
                        if !uploadMedia.isWriterSupported(extension) && !uploadMedia.isReaderSupported(extension)
                            stringBuffer.append("Image type: ")
                            stringBuffer.append(extension)
                            stringBuffer.append(" not supported.<br />")
                        end
                    end
                else
                    stringBuffer.append("Image File Is To Large. ")
                    stringBuffer.appendint(((fileData.MINIMAGEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append(" < > ")
                    stringBuffer.appendint(((fileData.MAXIMAGEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append("<br/>")
                end
            end
        else
            stringBuffer.append("Image File Is To Small. ")
            stringBuffer.appendint(((fileData.MINIMAGEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            stringBuffer.append(" < > ")
            stringBuffer.appendint(((fileData.MAXIMAGEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
            stringBuffer.append("<br/>")
        end
    end

    def validationInfo(*java_overload_args)
        return validationInfo_j0(*java_overload_args) if java_overload_args.length == 0
        return validationInfo_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method validationInfo takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return AddFileValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ADDPRODUCT, "Add Product")
        begin
            const_set(:NEXTSTEP, (::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT).to_s + " Step")
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AddFileValidationView"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:ADDPRODUCT, :NEXTSTEP].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemValidation, "org/allbinary/business/user/commerce/inventory/item/BasicItemValidation" unless const_defined?(:BasicItemValidation, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException" unless const_defined?(:MoneyException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory" unless const_defined?(:InventoryEntityFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; autoload :HttpFileUploadUtil, "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil" unless const_defined?(:HttpFileUploadUtil, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; module Media; autoload :UploadMediaSingleton, "org/allbinary/logic/communication/http/file/upload/media/UploadMediaSingleton" unless const_defined?(:UploadMediaSingleton, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileData, "org/allbinary/logic/io/file/FileData" unless const_defined?(:FileData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    AddFileValidationView.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

