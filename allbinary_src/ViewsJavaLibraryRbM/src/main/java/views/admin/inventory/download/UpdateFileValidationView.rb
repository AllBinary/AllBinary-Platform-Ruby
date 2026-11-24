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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/inventory/download/DownloadableInventoryItemView"

module ::Views; module Admin; module Inventory; module Download

class UpdateFileValidationView < DownloadableInventoryItemView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil, :commonStrings

    def jfields_views_admin_inventory_download_UpdateFileValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_inventory_download_UpdateFileValidationView
    end
    

    def isValid_j0()
        begin
            command = self.getRequestHashMap().get(::Org::Allbinary::Globals::GLOBALS2::ADMINCOMMAND)
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(command) || (command <=> @commonStrings.UPDATE) != 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Invalid AdminCommand=" + command, self, @commonStrings.IS_VALID)
                end
                return false
            end
            begin
                inventoryEntity = ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::InventoryEntityFactory.getInstance().getInventoryEntityInstance()
                @itemInterface = inventoryEntity.getItem(@id)
            rescue ::Org::Allbinary::Business::User::Commerce::Money::MoneyException => e
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.put("Existing Item With MoneyException", self, @commonStrings.IS_VALID, e)
                end
            end
            if @itemInterface == nil
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Item Does Not Exist", self, @commonStrings.IS_VALID)
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
            fullCategory = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).append(storeFrontInterface.getCurrentHostNamePath()).append(@itemInterface.getCategory()).to_s
            categoryFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(fullCategory)
            if !categoryFile.isDirectory()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Category Does Not Exist: " + fullCategory, self, @commonStrings.IS_VALID)
                end
                return false
            end
            downloadableFileObject = self.getRequestHashMap().get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::FILE)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(downloadableFileObject)
                fileItem = downloadableFileObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                    return false
                else
                    self.processFile(fileItem)
                    self.getRequestHashMap().put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::SIZE, (size).to_s)
                end
            else
                self.getRequestHashMap().remove(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::FILE)
            end
            licenseFileObject = self.getRequestHashMap().get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::LICENSE_FILE)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(licenseFileObject)
                fileItem = licenseFileObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                else
                    self.processFile(fileItem)
                end
            else
                self.getRequestHashMap().remove(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::LICENSE_FILE)
            end
            extraFilesObject = self.getRequestHashMap().get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::EXTRA_FILES)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(extraFilesObject)
                fileItem = extraFilesObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                else
                    self.processFile(fileItem)
                    self.unzip(fileItem)
                end
            else
                self.getRequestHashMap().remove(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::EXTRA_FILES)
            end
            hashMap = self.getRequestHashMap()
            hashMap.put(@basicItemData.ID, @itemInterface.getId())
            licenseObject = hashMap.get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::LICENSE_FILE)
            if licenseObject != nil
                hashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::LICENSE_FILE, (licenseObject).getName())
            else
                hashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::LICENSE_FILE, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            end
            fileObject = hashMap.get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::FILE)
            if fileObject != nil
                hashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::FILE, (fileObject).getName())
            else
                hashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::FILE, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            end
            @downloadableItem = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadableItem.new(hashMap)
            downloadableItemValidation = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadableItemValidation.new(@downloadableItem)
            if downloadableItemValidation.isValid() == false
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("DownloadableItem is not valid", self, @commonStrings.IS_VALID)
                end
                return false
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
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(command) || (command <=> @commonStrings.UPDATE) != 0
                return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            end
            if @itemInterface == nil
                _ITEM_NOT_FOUND = "Item Does Not Exist"
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF(_ITEM_NOT_FOUND, self, "validationInfo()")
                end
                return _ITEM_NOT_FOUND
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
                stringBuffer.append(" does not exist.")
                stringBuffer.append("<br />")
            end
            downloadableFileObject = self.getRequestHashMap().get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::FILE)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(downloadableFileObject)
                fileItem = downloadableFileObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                self.validationInfo(stringBuffer, fileName, size)
            else
                stringBuffer.append("Download File Missing")
                stringBuffer.append("<br/>")
            end
            licenseFileObject = self.getRequestHashMap().get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::LICENSE_FILE)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(licenseFileObject)
                fileItem = licenseFileObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                self.validationInfo(stringBuffer, fileName, size)
            else
            end
            extraFilesObject = self.getRequestHashMap().get(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadItemData::EXTRA_FILES)
            if ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFileUploadUtil.getInstance().isValid(extraFilesObject)
                fileItem = extraFilesObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                self.validationInfo(stringBuffer, fileName, size)
            else
            end
            if @downloadableItem != nil
                downloadableItemValidation = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::Download::DownloadableItemValidation.new(@downloadableItem)
                if downloadableItemValidation.isValid() == false
                    log = downloadableItemValidation.validationInfo()
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                        @logUtil.putF(log, self, @commonStrings.IS_VALID)
                    end
                    stringBuffer.append(log)
                    stringBuffer.append("<br/>")
                end
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
        if size > fileData.MINDOWNLOADABLEFILESIZE
            if size < fileData.MAXDOWNLOADABLEFILESIZE
                if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                        stringBuffer.append("File name is not valid: ")
                        stringBuffer.append(fileName)
                        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                    end
                    return false
                else
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("File Size To Large: ")
                    stringBuffer.appendlong(size)
                    stringBuffer.append(">")
                    stringBuffer.appendint(((fileData.MAXDOWNLOADABLEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                return false
            end
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("File Size To Small: ")
                stringBuffer.appendlong(size)
                stringBuffer.append(">")
                stringBuffer.appendint(((fileData.MINDOWNLOADABLEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
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
    

    def validationInfo_j3(stringBuffer, fileName, size)
        fileData = ::Org::Allbinary::Logic::Io::FilePackage::FileData.getInstance()
        if size > fileData.MINDOWNLOADABLEFILESIZE
            if size < fileData.MAXDOWNLOADABLEFILESIZE
                if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                    stringBuffer.append("File Name must be more than ")
                    stringBuffer.appendint(((fileData.MINLEN).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append(" and less than ")
                    stringBuffer.appendint(((fileData.MAXLEN).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append(" characters in length: ")
                    stringBuffer.append(fileName)
                    stringBuffer.append("<br/>")
                else
                end
            else
                stringBuffer.append("File Is Not The Right Size. ")
                stringBuffer.appendint(((fileData.MINDOWNLOADABLEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append("< >")
                stringBuffer.appendint(((fileData.MAXDOWNLOADABLEFILESIZE).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append("<br/>")
            end
        end
    end

    def validationInfo(*java_overload_args)
        return validationInfo_j0(*java_overload_args) if java_overload_args.length == 0
        return validationInfo_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method validationInfo takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return UpdateFileValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemValidation, "org/allbinary/business/user/commerce/inventory/item/BasicItemValidation" unless const_defined?(:BasicItemValidation, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadItemData, "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData" unless const_defined?(:DownloadItemData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItem, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem" unless const_defined?(:DownloadableItem, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download; autoload :DownloadableItemValidation, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemValidation" unless const_defined?(:DownloadableItemValidation, false); end; end; end; end; end; end; end; end
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
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Apache; module Commons; module Fileupload; autoload :FileItem, "org/apache/commons/fileupload/FileItem" unless const_defined?(:FileItem, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

