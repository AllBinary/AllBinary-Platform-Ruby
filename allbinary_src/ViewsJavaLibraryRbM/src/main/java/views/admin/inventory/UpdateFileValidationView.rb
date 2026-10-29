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

class UpdateFileValidationView < InventoryItemView
    include ValidationComponentInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    def isValid()
        begin
            command = self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)
            if command == nil || (command <=> UpdateFileValidationView::UPDATEPRODUCT) != 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Invalid AdminCommand=" + command, self, @commonStrings.IS_VALID)
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
            stringBuffer = StringMaker.new()
            stringBuffer.append(URLGLOBALS.getWebappPath())
            stringBuffer.append(storeFrontInterface.getCurrentHostNamePath())
            stringBuffer.append(@itemInterface.getCategory())
            fullCategory = stringBuffer.to_s
            categoryFile = AbFile.createAbFile(fullCategory)
            if !categoryFile.isDirectory()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Category Does Not Exist: " + fullCategory, self, @commonStrings.IS_VALID)
                end
                return false
            end
            inventoryEntity = InventoryEntityFactory.getInstance().getInventoryEntityInstance()
            if inventoryEntity.getItem(@itemInterface.getId()) == nil
                return false
            end
            anyType = self.getRequestHashMap().get(@basicItemData.IMAGE)
            if HttpFileUploadUtil.getInstance().isValid(anyType)
                fileItem = anyType
                size = fileItem.getSize()
                fileName = fileItem.getName()
                HttpFileUploadUtil.log(fileItem)
                if self.isValid(fileName, size) == false
                    return false
                end
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
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
    

    # throws Exception
    def validationInfo()
        stringBuffer = StringMaker.new()
        command = self.getRequestHashMap().get(GLOBALS2.ADMINCOMMAND)
        if command == nil || (command <=> UpdateFileValidationView::UPDATEPRODUCT) != 0
            return CommonSeps.getInstance().SPACE
        end
        stringBuffer.append(BasicItemValidation.new(@itemInterface).validationInfo())
        storeFrontInterface = StoreFrontFactory.getInstance(self.getWeblisketSession().getStoreName())
        fullCategory = URLGLOBALS.getWebappPath() + storeFrontInterface.getCurrentHostNamePath() + @itemInterface.getCategory()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Category: " + fullCategory, self, "validationInfo()")
        end
        begin
            if InventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(@itemInterface.getId()) == nil
                stringBuffer.append("Item does not exist.<br>")
            end
        rescue MoneyException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Existing Item With MoneyException", self, "validationInfo()")
            end
        end
        anyType = self.getRequestHashMap().get(@basicItemData.IMAGE)
        if HttpFileUploadUtil.getInstance().isValid(anyType)
            fileItem = anyType
            size = fileItem.getSize()
            fileName = fileItem.getName()
            fileItemFieldName = fileItem.getFieldName()
            self.validationInfo(stringBuffer, fileName, fileItemFieldName, size)
        end
        return stringBuffer.to_s
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def isValid(fileName, size)
        fileData = FileData.getInstance()
        if size > fileData.MINIMAGEFILESIZE
            if size < fileData.MAXIMAGEFILESIZE
                if !StringValidationUtil.getInstance().isValidRequired(fileName, fileData.MINLEN, fileData.MAXLEN)
                    return false
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
                        stringBuffer.append("and <")
                        stringBuffer.appendint((fileData.MAXLEN).to_i)
                        stringBuffer.append("<br />")
                    end
                else
                    stringBuffer.append("Image File Is Not The Right Size. ")
                    stringBuffer.appendint((fileData.MINIMAGEFILESIZE).to_i)
                    stringBuffer.append("< > ")
                    stringBuffer.appendint((fileData.MAXIMAGEFILESIZE).to_i)
                    stringBuffer.append("<br />")
                end
            end
        end
    end
end

require "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemValidation"
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
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/apache/commons/fileupload/FileItem"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

class UpdateFileValidationView
    UPDATEPRODUCT = CommonStrings.getInstance().UPDATE
end

