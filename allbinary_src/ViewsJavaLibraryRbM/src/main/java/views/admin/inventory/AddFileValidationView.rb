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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:ADDPRODUCT, "Add Product")
        begin
            const_set(:NEXTSTEP, (CommonLabels.getInstance().NEXT).to_s + " Step")
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

autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
autoload :BasicItemValidation, "org/allbinary/business/user/commerce/inventory/item/BasicItemValidation"
autoload :MoneyException, "org/allbinary/business/user/commerce/money/MoneyException"
autoload :InventoryEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory"
autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :HttpFileUploadUtil, "org/allbinary/logic/communication/http/file/upload/HttpFileUploadUtil"
autoload :UploadMediaSingleton, "org/allbinary/logic/communication/http/file/upload/media/UploadMediaSingleton"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :FileData, "org/allbinary/logic/io/file/FileData"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :FileItem, "org/apache/commons/fileupload/FileItem"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

begin
    AddFileValidationView.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

