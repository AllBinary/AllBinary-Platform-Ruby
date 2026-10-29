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
# package org.allbinary.business.user.commerce.inventory.item

require "org/allbinary/logic/control/validate/Validation"

class BasicItemValidation < Validation
    attr_accessor :logUtil, :MAXWEIGHT, :MAXPRICE, :itemInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @MAXWEIGHT = 14
        @MAXPRICE = 14
        @itemInterface = nil
    end
    

    def initialize(itemInterface)
        super()
        initialize_fields
        @itemInterface = itemInterface
    end
    

    def isValid()
        begin
            if @itemInterface.getId() == nil || @itemInterface.getId().length() < 1 || @itemInterface.getId().length() > AbSqlData::MAXNUM
                return false
            end
            stringValidationUtil = StringValidationUtil.getInstance()
            if @itemInterface.getId() != nil && !stringValidationUtil.isNumber(@itemInterface.getId())
                return false
            end
            if @itemInterface.getNumber() == nil || @itemInterface.getNumber().length() < 1 || @itemInterface.getNumber().length() > AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getNumber() != nil && !stringValidationUtil.isNumber(@itemInterface.getNumber())
                return false
            end
            if @itemInterface.getInBaskets() == nil || @itemInterface.getInBaskets().length() < 1 || @itemInterface.getInBaskets().length() > AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getInBaskets() != nil && !stringValidationUtil.isNumber(@itemInterface.getInBaskets())
                return false
            end
            if @itemInterface.getWeight() == nil || @itemInterface.getWeight().length() < 1 || @itemInterface.getWeight().length() > @MAXWEIGHT
                return false
            end
            if @itemInterface.getWeight() != nil && !stringValidationUtil.isNumber(@itemInterface.getWeight())
                return false
            end
            if @itemInterface.getEnabled() == nil || @itemInterface.getEnabled().length() < 1 || @itemInterface.getEnabled().length() > AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getNewOrUsed() == nil || @itemInterface.getNewOrUsed().length() < 1 || @itemInterface.getNewOrUsed().length() > AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getSummary() == nil || @itemInterface.getSummary().length() < 1 || @itemInterface.getSummary().length() > AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getDescription() == nil || @itemInterface.getDescription().length() < 1 || @itemInterface.getDescription().length() > AbSqlData::MAXBLOB
                return false
            end
            if @itemInterface.getKeywords() == nil || @itemInterface.getKeywords().length() < 1 || @itemInterface.getKeywords().length() > AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getCategory() == nil || @itemInterface.getCategory().length() < 1 || @itemInterface.getCategory().length() > AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getType() == nil || @itemInterface.getType().length() < 1 || @itemInterface.getType().length() > AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getPrice() == nil || !@itemInterface.getPrice().isValid()
                return false
            end
            if @itemInterface.getCustoms() == nil || @itemInterface.getCustoms().length() < 1 || @itemInterface.getCustoms().length() > AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getDownloads() == nil || @itemInterface.getDownloads().length() < 1 || @itemInterface.getDownloads().length() > AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getGroups() == nil || @itemInterface.getGroups().length() < 1 || @itemInterface.getGroups().length() > AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getOptions() == nil || @itemInterface.getOptions().length() < 1 || @itemInterface.getOptions().length() > AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getPermissions() == nil || @itemInterface.getPermissions().length() < 1 || @itemInterface.getPermissions().length() > AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getSpecials() == nil || @itemInterface.getSpecials().length() < 1 || @itemInterface.getSpecials().length() > AbSqlData::MAXNUM
                return false
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
            if @itemInterface.getId() == nil || @itemInterface.getId().length() < 1 || @itemInterface.getId().length() > AbSqlData::MAXNUM
                stringBuffer.append("Id is invalid. Must be number < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            stringValidationUtil = StringValidationUtil.getInstance()
            if @itemInterface.getId() != nil && !stringValidationUtil.isNumber(@itemInterface.getId())
                stringBuffer.append("Id is invalid. Must be > 0.<br />")
            end
            if @itemInterface.getNumber() == nil || @itemInterface.getNumber().length() < 1 || @itemInterface.getNumber().length() > AbSqlData::MAXNUM
                stringBuffer.append("Number of items is invalid. Must be number < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getNumber() != nil && !stringValidationUtil.isNumber(@itemInterface.getNumber())
                stringBuffer.append("Number of items value is not a valid number.<br />")
            end
            if @itemInterface.getInBaskets() == nil || @itemInterface.getInBaskets().length() < 1 || @itemInterface.getInBaskets().length() > AbSqlData::MAXNUM
                stringBuffer.append("Number in baskets is invalid. Must be < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getInBaskets() != nil && !stringValidationUtil.isNumber(@itemInterface.getInBaskets())
                stringBuffer.append("In Baskets value is not a valid number.<br />")
            end
            if @itemInterface.getWeight() == nil || @itemInterface.getWeight().length() < 1 || @itemInterface.getWeight().length() > @MAXWEIGHT
                stringBuffer.append("Weight value is invalid. Must be < " + (@MAXWEIGHT).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getWeight() != nil && !stringValidationUtil.isNumber(@itemInterface.getWeight())
                stringBuffer.append("Weight value is not a valid number.<br />")
            end
            if @itemInterface.getEnabled() == nil || @itemInterface.getEnabled().length() < 1 || @itemInterface.getEnabled().length() > AbSqlData::MAXSTRING
                stringBuffer.append("For Sale value is invalid. Must be < " + (AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getNewOrUsed() == nil || @itemInterface.getNewOrUsed().length() < 1 || @itemInterface.getNewOrUsed().length() > AbSqlData::MAXSTRING
                stringBuffer.append("New Or Used value is invalid. Must be < " + (AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getSummary() == nil || @itemInterface.getSummary().length() < 1 || @itemInterface.getSummary().length() > AbSqlData::MAXSTRING
                stringBuffer.append("Summary value is invalid. Must be < " + (AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getDescription() == nil || @itemInterface.getDescription().length() < 1 || @itemInterface.getDescription().length() > AbSqlData::MAXBLOB
                stringBuffer.append("Description value is invalid. Must be < " + (AbSqlData::MAXBLOB).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getKeywords() == nil || @itemInterface.getKeywords().length() < 1 || @itemInterface.getKeywords().length() > AbSqlData::MAXSTRING
                stringBuffer.append("Keywords value is invalid. Must be < " + (AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getCategory() == nil || @itemInterface.getCategory().length() < 1 || @itemInterface.getCategory().length() > AbSqlData::MAXSTRING
                stringBuffer.append("Category value is invalid. Must be < " + (AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getType() == nil || @itemInterface.getType().length() < 1 || @itemInterface.getType().length() > AbSqlData::MAXSTRING
                stringBuffer.append("Type value is invalid. Must be < " + (AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getPrice() == nil || !@itemInterface.getPrice().isValid()
                stringBuffer.append("Price value is invalid. Must be < " + (@MAXPRICE).to_s + " and > 0 in length.<br />")
            end
            if @itemInterface.getCustoms() == nil || @itemInterface.getCustoms().length() < 1 || @itemInterface.getCustoms().length() > AbSqlData::MAXNUM
                stringBuffer.append("Custom items value is invalid. Must be number < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getDownloads() == nil || @itemInterface.getDownloads().length() < 1 || @itemInterface.getDownloads().length() > AbSqlData::MAXNUM
                stringBuffer.append("Downloadable item value is invalid. Must be number < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getGroups() == nil || @itemInterface.getGroups().length() < 1 || @itemInterface.getGroups().length() > AbSqlData::MAXNUM
                stringBuffer.append("Group item value is invalid. Must be number < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getOptions() == nil || @itemInterface.getOptions().length() < 1 || @itemInterface.getOptions().length() > AbSqlData::MAXNUM
                stringBuffer.append("Option item value is invalid. Must be number < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getPermissions() == nil || @itemInterface.getPermissions().length() < 1 || @itemInterface.getPermissions().length() > AbSqlData::MAXNUM
                stringBuffer.append("Permission item value is invalid. Must be number < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getSpecials() == nil || @itemInterface.getSpecials().length() < 1 || @itemInterface.getSpecials().length() > AbSqlData::MAXNUM
                stringBuffer.append("Special item value is invalid. Must be number < " + (AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
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
require "org/allbinary/business/user/commerce/inventory/item/ItemInterface"

