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

class AddFileValidationView < DownloadableInventoryItemView
    include ValidationComponentInterface
    attr_accessor :logUtil, :basicItemData

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    def isValid()
        begin
            command = self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)
            if StringValidationUtil.getInstance().isEmpty(command) || ((command <=> AddFileValidationView::ADDPRODUCT) != 0 && (command <=> ADDANOTHERDOWNLOADABLE) != 0)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Invalid AdminCommand=" + command, self, @commonStrings.IS_VALID)
                end
                return false
            end
            begin
                inventoryEntity = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
                @itemInterface = inventoryEntity.getItem(@id)
            rescue MoneyException => e
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.put("Existing Item With MoneyException", self, @commonStrings.IS_VALID, e)
                end
            end
            if @itemInterface == nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Item Does Not Exist", self, @commonStrings.IS_VALID)
                end
                return false
            end
            if BasicItemValidation.new(@itemInterface).isValid() == false
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("BasicItem is not valid", self, @commonStrings.IS_VALID)
                end
                return false
            end
            storeFrontInterface = StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
            fullCategory = StringMaker.new().append(URLGLOBALS.getWebappPath()).append(storeFrontInterface.getCurrentHostNamePath()).append(@itemInterface.getCategory()).to_s
            categoryFile = AbFile.createAbFile(fullCategory)
            if !categoryFile.isDirectory()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Category Does Not Exist: " + fullCategory, self, @commonStrings.IS_VALID)
                end
                return false
            end
            downloadableFileObject = self.getRequestHashMap().get(DownloadItemData::FILE)
            if HttpFileUploadUtil.getInstance().isValid(downloadableFileObject)
                fileItem = downloadableFileObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                    return false
                else
                    self.processFile(fileItem)
                    self.getRequestHashMap().put(DownloadItemData::SIZE, (size).to_s)
                end
            else
                self.getRequestHashMap().remove(DownloadItemData::FILE)
            end
            licenseFileObject = self.getRequestHashMap().get(DownloadItemData::LICENSE_FILE)
            if HttpFileUploadUtil.getInstance().isValid(licenseFileObject)
                fileItem = licenseFileObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                else
                    self.processFile(fileItem)
                end
            else
                self.getRequestHashMap().remove(DownloadItemData::LICENSE_FILE)
            end
            extraFilesObject = self.getRequestHashMap().get(DownloadItemData::EXTRA_FILES)
            if HttpFileUploadUtil.getInstance().isValid(extraFilesObject)
                fileItem = extraFilesObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                else
                    self.processFile(fileItem)
                    self.unzip(fileItem)
                end
            else
                self.getRequestHashMap().remove(DownloadItemData::EXTRA_FILES)
            end
            hashMap = self.getRequestHashMap()
            hashMap.put(@basicItemData.ID, @itemInterface.getId())
            licenseObject = hashMap.get(DownloadItemData::LICENSE_FILE)
            if licenseObject != nil
                hashMap.put(DownloadItemData::LICENSE_FILE, (licenseObject).getName())
            else
                hashMap.put(DownloadItemData::LICENSE_FILE, StringUtil.getInstance().EMPTY_STRING)
            end
            fileObject = hashMap.get(DownloadItemData::FILE)
            if fileObject != nil
                hashMap.put(DownloadItemData::FILE, (fileObject).getName())
            else
                hashMap.put(DownloadItemData::FILE, StringUtil.getInstance().EMPTY_STRING)
            end
            @downloadableItem = DownloadableItem.new(hashMap)
            downloadableItemValidation = DownloadableItemValidation.new(@downloadableItem)
            if downloadableItemValidation.isValid() == false
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("DownloadableItem is not valid", self, @commonStrings.IS_VALID)
                end
                return false
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Exception in validation", self, @commonStrings.IS_VALID, e)
            end
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
        begin
            stringBuffer = StringMaker.new()
            command = self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)
            if StringValidationUtil.getInstance().isEmpty(command) || ((command <=> AddFileValidationView::ADDPRODUCT) != 0 && (command <=> ADDANOTHERDOWNLOADABLE) != 0)
                return StringUtil.getInstance().EMPTY_STRING
            end
            if @itemInterface == nil
                _ITEM_NOT_FOUND = "Item Does Not Exist"
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF(_ITEM_NOT_FOUND, self, "validationInfo()")
                end
                return _ITEM_NOT_FOUND
            end
            basicItemValidation = BasicItemValidation.new(@itemInterface)
            if basicItemValidation.isValid() == false
                stringBuffer.append(basicItemValidation.validationInfo())
                stringBuffer.append("<br/>")
            end
            storeFrontInterface = StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
            fullCategory = StringMaker.new().append(URLGLOBALS.getWebappPath()).append(storeFrontInterface.getCurrentHostNamePath()).append(@itemInterface.getCategory()).to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Category: " + fullCategory, self, "validationInfo()")
            end
            categoryFile = AbFile.createAbFile(fullCategory)
            if !categoryFile.isDirectory()
                stringBuffer.append("Category ")
                stringBuffer.append(@itemInterface.getCategory())
                stringBuffer.append(" does not exist.")
                stringBuffer.append("<br />")
            end
            downloadableFileObject = self.getRequestHashMap().get(DownloadItemData::FILE)
            if HttpFileUploadUtil.getInstance().isValid(downloadableFileObject)
                fileItem = downloadableFileObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                self.validationInfo(stringBuffer, fileName, size)
            else
                stringBuffer.append("Download File Missing")
                stringBuffer.append("<br/>")
            end
            licenseFileObject = self.getRequestHashMap().get(DownloadItemData::LICENSE_FILE)
            if HttpFileUploadUtil.getInstance().isValid(licenseFileObject)
                fileItem = licenseFileObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                self.validationInfo(stringBuffer, fileName, size)
            else
            end
            extraFilesObject = self.getRequestHashMap().get(DownloadItemData::EXTRA_FILES)
            if HttpFileUploadUtil.getInstance().isValid(extraFilesObject)
                fileItem = extraFilesObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                self.validationInfo(stringBuffer, fileName, size)
            else
            end
            if @downloadableItem != nil
                downloadableItemValidation = DownloadableItemValidation.new(@downloadableItem)
                if downloadableItemValidation.isValid() == false
                    log = downloadableItemValidation.validationInfo()
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                        @logUtil.putF(log, self, @commonStrings.IS_VALID)
                    end
                    stringBuffer.append(log)
                    stringBuffer.append("<br/>")
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def isValid(fileName, size)
        fileData = FileData.getInstance()
        if size > fileData.MINDOWNLOADABLEFILESIZE
            if size < fileData.MAXDOWNLOADABLEFILESIZE
                if !StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                        stringBuffer = StringMaker.new()
                        stringBuffer.append("File name is not valid: ")
                        stringBuffer.append(fileName)
                        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                    end
                    return false
                else
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("File Size To Large: ")
                    stringBuffer.appendlong(size)
                    stringBuffer.append(">")
                    stringBuffer.appendint((fileData.MAXDOWNLOADABLEFILESIZE).to_i)
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                return false
            end
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = StringMaker.new()
                stringBuffer.append("File Size To Small: ")
                stringBuffer.appendlong(size)
                stringBuffer.append(">")
                stringBuffer.appendint((fileData.MINDOWNLOADABLEFILESIZE).to_i)
                @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
            end
            return false
        end
        return true
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def validationInfo(stringBuffer, fileName, size)
        fileData = FileData.getInstance()
        if size > fileData.MINDOWNLOADABLEFILESIZE
            if size < fileData.MAXDOWNLOADABLEFILESIZE
                if !StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                    stringBuffer.append("File Name must be more than ")
                    stringBuffer.appendint((fileData.MINLEN).to_i)
                    stringBuffer.append(" and less than ")
                    stringBuffer.appendint((fileData.MAXLEN).to_i)
                    stringBuffer.append(" characters in length: ")
                    stringBuffer.append(fileName)
                    stringBuffer.append("<br/>")
                else
                end
            else
                stringBuffer.append("File Is Not The Right Size. ")
                stringBuffer.appendint((fileData.MINDOWNLOADABLEFILESIZE).to_i)
                stringBuffer.append("< >")
                stringBuffer.appendint((fileData.MAXDOWNLOADABLEFILESIZE).to_i)
                stringBuffer.append("<br/>")
            end
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemValidation"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItemValidation"
require "org/allbinary/business/user/commerce/money/MoneyException"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/apache/commons/fileupload/FileItem"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

class AddFileValidationView
    ADDPRODUCT = "Finish"
    ADDANOTHERDOWNLOADABLE = "Add Another"
end

