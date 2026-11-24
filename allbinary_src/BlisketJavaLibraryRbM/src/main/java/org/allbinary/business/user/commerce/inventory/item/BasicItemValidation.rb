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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item

class BasicItemValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    attr_accessor :logUtil, :MAXWEIGHT, :MAXPRICE, :itemInterface

    def jfields_org_allbinary_business_user_commerce_inventory_item_BasicItemValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @MAXWEIGHT = 14
        @MAXPRICE = 14
        @itemInterface = nil unless instance_variable_defined?(:@itemInterface)
    end
    

    def initialize(itemInterface)
        super()
        jfields_org_allbinary_business_user_commerce_inventory_item_BasicItemValidation
        @itemInterface = itemInterface
    end
    

    def isValid()
        begin
            if @itemInterface.getId() == nil || @itemInterface.getId().length() < 1 || @itemInterface.getId().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if @itemInterface.getId() != nil && !stringValidationUtil.isNumber(@itemInterface.getId())
                return false
            end
            if @itemInterface.getNumber() == nil || @itemInterface.getNumber().length() < 1 || @itemInterface.getNumber().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getNumber() != nil && !stringValidationUtil.isNumber(@itemInterface.getNumber())
                return false
            end
            if @itemInterface.getInBaskets() == nil || @itemInterface.getInBaskets().length() < 1 || @itemInterface.getInBaskets().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
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
            if @itemInterface.getEnabled() == nil || @itemInterface.getEnabled().length() < 1 || @itemInterface.getEnabled().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getNewOrUsed() == nil || @itemInterface.getNewOrUsed().length() < 1 || @itemInterface.getNewOrUsed().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getSummary() == nil || @itemInterface.getSummary().length() < 1 || @itemInterface.getSummary().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getDescription() == nil || @itemInterface.getDescription().length() < 1 || @itemInterface.getDescription().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                return false
            end
            if @itemInterface.getKeywords() == nil || @itemInterface.getKeywords().length() < 1 || @itemInterface.getKeywords().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getCategory() == nil || @itemInterface.getCategory().length() < 1 || @itemInterface.getCategory().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getType() == nil || @itemInterface.getType().length() < 1 || @itemInterface.getType().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @itemInterface.getPrice() == nil || !@itemInterface.getPrice().isValid()
                return false
            end
            if @itemInterface.getCustoms() == nil || @itemInterface.getCustoms().length() < 1 || @itemInterface.getCustoms().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getDownloads() == nil || @itemInterface.getDownloads().length() < 1 || @itemInterface.getDownloads().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getGroups() == nil || @itemInterface.getGroups().length() < 1 || @itemInterface.getGroups().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getOptions() == nil || @itemInterface.getOptions().length() < 1 || @itemInterface.getOptions().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getPermissions() == nil || @itemInterface.getPermissions().length() < 1 || @itemInterface.getPermissions().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            if @itemInterface.getSpecials() == nil || @itemInterface.getSpecials().length() < 1 || @itemInterface.getSpecials().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if @itemInterface.getId() == nil || @itemInterface.getId().length() < 1 || @itemInterface.getId().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Id is invalid. Must be number < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if @itemInterface.getId() != nil && !stringValidationUtil.isNumber(@itemInterface.getId())
                stringBuffer.append("Id is invalid. Must be > 0.<br />")
            end
            if @itemInterface.getNumber() == nil || @itemInterface.getNumber().length() < 1 || @itemInterface.getNumber().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Number of items is invalid. Must be number < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getNumber() != nil && !stringValidationUtil.isNumber(@itemInterface.getNumber())
                stringBuffer.append("Number of items value is not a valid number.<br />")
            end
            if @itemInterface.getInBaskets() == nil || @itemInterface.getInBaskets().length() < 1 || @itemInterface.getInBaskets().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Number in baskets is invalid. Must be < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
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
            if @itemInterface.getEnabled() == nil || @itemInterface.getEnabled().length() < 1 || @itemInterface.getEnabled().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("For Sale value is invalid. Must be < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getNewOrUsed() == nil || @itemInterface.getNewOrUsed().length() < 1 || @itemInterface.getNewOrUsed().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("New Or Used value is invalid. Must be < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getSummary() == nil || @itemInterface.getSummary().length() < 1 || @itemInterface.getSummary().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("Summary value is invalid. Must be < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getDescription() == nil || @itemInterface.getDescription().length() < 1 || @itemInterface.getDescription().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                stringBuffer.append("Description value is invalid. Must be < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getKeywords() == nil || @itemInterface.getKeywords().length() < 1 || @itemInterface.getKeywords().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("Keywords value is invalid. Must be < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getCategory() == nil || @itemInterface.getCategory().length() < 1 || @itemInterface.getCategory().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("Category value is invalid. Must be < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getType() == nil || @itemInterface.getType().length() < 1 || @itemInterface.getType().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("Type value is invalid. Must be < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).to_s + " and > 0 characters long.<br />")
            end
            if @itemInterface.getPrice() == nil || !@itemInterface.getPrice().isValid()
                stringBuffer.append("Price value is invalid. Must be < " + (@MAXPRICE).to_s + " and > 0 in length.<br />")
            end
            if @itemInterface.getCustoms() == nil || @itemInterface.getCustoms().length() < 1 || @itemInterface.getCustoms().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Custom items value is invalid. Must be number < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getDownloads() == nil || @itemInterface.getDownloads().length() < 1 || @itemInterface.getDownloads().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Downloadable item value is invalid. Must be number < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getGroups() == nil || @itemInterface.getGroups().length() < 1 || @itemInterface.getGroups().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Group item value is invalid. Must be number < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getOptions() == nil || @itemInterface.getOptions().length() < 1 || @itemInterface.getOptions().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Option item value is invalid. Must be number < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getPermissions() == nil || @itemInterface.getPermissions().length() < 1 || @itemInterface.getPermissions().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Permission item value is invalid. Must be number < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            if @itemInterface.getSpecials() == nil || @itemInterface.getSpecials().length() < 1 || @itemInterface.getSpecials().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Special item value is invalid. Must be number < " + (::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).to_s + " and > 0 digits.<br />")
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    java_overload :validationInfo, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlData, "org/allbinary/logic/communication/sql/AbSqlData" unless const_defined?(:AbSqlData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :ItemInterface, "org/allbinary/business/user/commerce/inventory/item/ItemInterface" unless const_defined?(:ItemInterface, false)

end; end; end; end; end; end; end

