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
# package org.allbinary.business.user.commerce.inventory.item.download

require "org/allbinary/logic/control/validate/Validation"

class DownloadableItemValidation < Validation
    attr_accessor :logUtil, :downloadableItem

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @downloadableItem = nil
    end
    

    def initialize(downloadableItem)
        super()
        initialize_fields
        @downloadableItem = downloadableItem
    end
    

    def isValid()
        begin
            if @downloadableItem.getId() == nil || @downloadableItem.getId().length() < 1 || @downloadableItem.getId().length() > AbSqlData::MAXNUM
                return false
            end
            if @downloadableItem.getId() != nil && !StringValidationUtil.getInstance().isNumber(@downloadableItem.getId())
                return false
            end
            if @downloadableItem.getSystem() == nil || @downloadableItem.getSystem().length() < 1 || @downloadableItem.getSystem().length() > AbSqlData::MAXSTRING
                return false
            end
            if @downloadableItem.getPlatform() == nil || @downloadableItem.getPlatform().length() < 1 || @downloadableItem.getPlatform().length() > AbSqlData::MAXSTRING
                return false
            end
            if @downloadableItem.getSpecialName() == nil || @downloadableItem.getSpecialName().length() < 0 || @downloadableItem.getSpecialName().length() > AbSqlData::MAXSTRING
                return false
            end
            if @downloadableItem.getVersion() == nil || @downloadableItem.getVersion().length() < 1 || @downloadableItem.getVersion().length() > AbSqlData::MAXSTRING
                return false
            end
            if @downloadableItem.getChanges() == nil || @downloadableItem.getChanges().length() < 1 || @downloadableItem.getChanges().length() > AbSqlData::MAXBLOB
                return false
            end
            if @downloadableItem.getSize() == nil
                return false
            else
                size = @downloadableItem.getSize().to_s
                if size.length < 1 || size.length > AbSqlData::MAXNUM
                    return false
                end
            end
            if @downloadableItem.getValidTime() == nil
                return false
            else
                size = @downloadableItem.getValidTime().to_s
                if size.length < 1 || size.length > AbSqlData::MAXNUM
                    return false
                end
            end
            if @downloadableItem.getRetries() == nil
                return false
            else
                size = @downloadableItem.getRetries().to_s
                if size.length < 1 || size.length > AbSqlData::MAXNUM
                    return false
                end
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if @downloadableItem.getId() == nil || @downloadableItem.getId().length() < 1 || @downloadableItem.getId().length() > AbSqlData::MAXNUM
                stringBuffer.append("Id is invalid. Must be number < ")
                stringBuffer.appendint((AbSqlData::MAXNUM).to_i)
                stringBuffer.append(" and > 0 digits.<br/>")
            end
            if @downloadableItem.getId() != nil && !StringValidationUtil.getInstance().isNumber(@downloadableItem.getId())
                stringBuffer.append("Id is invalid. Must be > 0.<br/>")
            end
            if @downloadableItem.getSystem() == nil || @downloadableItem.getSystem().length() < 1 || @downloadableItem.getSystem().length() > AbSqlData::MAXSTRING
                stringBuffer.append("System value is invalid. Must be < ")
                stringBuffer.appendint((AbSqlData::MAXSTRING).to_i)
                stringBuffer.append(" and > 0 characters long.<br/>")
            end
            if @downloadableItem.getPlatform() == nil || @downloadableItem.getPlatform().length() < 1 || @downloadableItem.getPlatform().length() > AbSqlData::MAXSTRING
                stringBuffer.append("Platform value is invalid. Must be < ")
                stringBuffer.appendint((AbSqlData::MAXSTRING).to_i)
                stringBuffer.append(" and > 0 characters long.<br/>")
            end
            if @downloadableItem.getSpecialName() == nil || @downloadableItem.getSpecialName().length() < 0 || @downloadableItem.getSpecialName().length() > AbSqlData::MAXSTRING
                stringBuffer.append("Special Name value is invalid. Must be < ")
                stringBuffer.appendint((AbSqlData::MAXSTRING).to_i)
                stringBuffer.append(" and > 0 characters long.<br/>")
            end
            if @downloadableItem.getVersion() == nil || @downloadableItem.getVersion().length() < 1 || @downloadableItem.getVersion().length() > AbSqlData::MAXSTRING
                stringBuffer.append("Version value is invalid. Must be < ")
                stringBuffer.appendint((AbSqlData::MAXSTRING).to_i)
                stringBuffer.append(" and > 0 characters long.<br/>")
            end
            if @downloadableItem.getChanges() == nil || @downloadableItem.getChanges().length() < 0 || @downloadableItem.getChanges().length() > AbSqlData::MAXBLOB
                stringBuffer.append("Changes value is invalid. Must be < ")
                stringBuffer.appendint((AbSqlData::MAXBLOB).to_i)
                stringBuffer.append(" and >= 0 characters long.<br/>")
            end
            if @downloadableItem.getSize() == nil
                stringBuffer.append("File Size is null")
            else
                size = @downloadableItem.getSize().to_s
                if size.length < 1 || size.length > AbSqlData::MAXNUM
                    stringBuffer.append("File Size is invalid. Must be number < ")
                    stringBuffer.appendint((AbSqlData::MAXNUM).to_i)
                    stringBuffer.append(" and > 0 digits.<br/>")
                end
            end
            if @downloadableItem.getValidTime() == nil
                stringBuffer.append("Valid Time is null")
            else
                size = @downloadableItem.getValidTime().to_s
                if size.length < 1 || size.length > AbSqlData::MAXNUM
                    stringBuffer.append("Valid Time is invalid. Must be number < ")
                    stringBuffer.appendint((AbSqlData::MAXNUM).to_i)
                    stringBuffer.append(" and > 0 digits.<br/>")
                end
            end
            if @downloadableItem.getRetries() == nil
                stringBuffer.append("Retries is null")
            else
                size = @downloadableItem.getRetries().to_s
                if size.length < 1 || size.length > AbSqlData::MAXNUM
                    stringBuffer.append("Retries is invalid. Must be number < ")
                    stringBuffer.appendint((AbSqlData::MAXNUM).to_i)
                    stringBuffer.append(" and > 0 digits.<br/>")
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem"

