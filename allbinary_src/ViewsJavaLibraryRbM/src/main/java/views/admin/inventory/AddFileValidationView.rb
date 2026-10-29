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

class AddFileValidationView < InventoryItemView
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
            if StringValidationUtil.getInstance().isEmpty(command) || ((command <=> AddFileValidationView::ADDPRODUCT) != 0 && (command <=> NEXTSTEP) != 0)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("Invalid AdminCommand: ")
                    stringBuffer.append(command)
                    stringBuffer.append(" must be: ")
                    stringBuffer.append(AddFileValidationView::ADDPRODUCT)
                    stringBuffer.append(" or ")
                    stringBuffer.append(AddFileValidationView::NEXTSTEP)
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                return false
            end
            basicItemValidation = BasicItemValidation.new(@itemInterface)
            if basicItemValidation.isValid() == false
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF(basicItemValidation.validationInfo(), self, @commonStrings.IS_VALID)
                end
                return false
            end
            storeFrontInterface = StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
            @itemInterface.setCategory(storeFrontInterface.getCategoryPath() + @itemInterface.getCategory())
            fullCategory = StringMaker.new().append(URLGLOBALS.getWebappPath()).append(storeFrontInterface.getCurrentHostNamePath()).append(@itemInterface.getCategory()).to_s
            categoryFile = AbFile.createAbFile(fullCategory)
            if !categoryFile.isDirectory()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Category Does Not Exist: " + fullCategory, self, @commonStrings.IS_VALID)
                end
                return false
            end
            if InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@itemInterface.getId()) != nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Item Already Exists", self, @commonStrings.IS_VALID)
                end
                return false
            end
            imageFileItemObject = self.getRequestHashMap().get(@basicItemData.IMAGE)
            if HttpFileUploadUtil.getInstance().isValid(imageFileItemObject)
                fileItem = imageFileItemObject
                fileName = fileItem.getName()
                size = fileItem.getSize()
                HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                    return false
                end
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
            if StringValidationUtil.getInstance().isEmpty(command) || ((command <=> AddFileValidationView::ADDPRODUCT) != 0 && (command <=> NEXTSTEP) != 0)
                return StringUtil.getInstance().EMPTY_STRING
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
                stringBuffer.append(" does not exist.<br />")
            end
            begin
                if InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@itemInterface.getId()) != nil
                    stringBuffer.append("Id is already in use. Refresh the page for a valid id.<br/>")
                end
            rescue MoneyException => e
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Existing Item With MoneyException", self, "validationInfo()")
                end
            end
            anyType = self.getRequestHashMap().get(@basicItemData.IMAGE)
            if HttpFileUploadUtil.getInstance().isValid(anyType)
                fileItem = anyType
                fileName = fileItem.getName()
                fileItemFieldName = fileItem.getFieldName()
                size = fileItem.getSize()
                self.validationInfo(stringBuffer, fileName, fileItemFieldName, size)
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
        if size > fileData.MINIMAGEFILESIZE
            if size < fileData.MAXIMAGEFILESIZE
                if !StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                    return false
                else
                    pathData = AbPathData.getInstance()
                    extension = pathData.getExtension(fileName)
                    uploadMedia = UploadMediaSingleton.getInstance()
                    if !uploadMedia.isWriterSupported(extension) && !uploadMedia.isReaderSupported(extension)
                        return false
                    end
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append("File Size To Large: ")
                    stringBuffer.appendlong(size)
                    stringBuffer.append(">")
                    stringBuffer.appendint((fileData.MAXIMAGEFILESIZE).to_i)
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                return false
            end
            self.processImageFiles()
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer = StringMaker.new()
                stringBuffer.append("File Size To Small: ")
                stringBuffer.appendlong(size)
                stringBuffer.append(">")
                stringBuffer.appendint((fileData.MINIMAGEFILESIZE).to_i)
                @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
            end
            return false
        end
        return true
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def validationInfo(stringBuffer, fileName, fileItemFieldName, size)
        fileData = FileData.getInstance()
        if size > fileData.MINIMAGEFILESIZE
            if (fileItemFieldName <=> @basicItemData.IMAGE) == 0
                if size < fileData.MAXIMAGEFILESIZE
                    if !StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                        stringBuffer.append("FileName must be >")
                        stringBuffer.appendint((fileData.MINLEN).to_i)
                        stringBuffer.append(" and <")
                        stringBuffer.appendint((fileData.MAXLEN).to_i)
                        stringBuffer.append("<br/>")
                    else
                        pathData = AbPathData.getInstance()
                        extension = pathData.getExtension(fileName)
                        uploadMedia = UploadMediaSingleton.getInstance()
                        if !uploadMedia.isWriterSupported(extension) && !uploadMedia.isReaderSupported(extension)
                            stringBuffer.append("Image type: ")
                            stringBuffer.append(extension)
                            stringBuffer.append(" not supported.<br />")
                        end
                    end
                else
                    stringBuffer.append("Image File Is To Large. ")
                    stringBuffer.appendint((fileData.MINIMAGEFILESIZE).to_i)
                    stringBuffer.append(" < > ")
                    stringBuffer.appendint((fileData.MAXIMAGEFILESIZE).to_i)
                    stringBuffer.append("<br/>")
                end
            end
        else
            stringBuffer.append("Image File Is To Small. ")
            stringBuffer.appendint((fileData.MINIMAGEFILESIZE).to_i)
            stringBuffer.append(" < > ")
            stringBuffer.appendint((fileData.MAXIMAGEFILESIZE).to_i)
            stringBuffer.append("<br/>")
        end
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemValidation"
require "org/allbinary/business/user/commerce/money/MoneyException"
require "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil"
require "org/allbinary/logic/communication/http/file/upload/media/UploadMediaSingleton"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/FileData"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonLabels"
require "org/apache/commons/fileupload/FileItem"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

class AddFileValidationView
    ADDPRODUCT = "Add Product"
    NEXTSTEP = (CommonLabels.getInstance().NEXT).to_s + " Step"
end

