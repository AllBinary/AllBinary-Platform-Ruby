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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Download

class DownloadableItemValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    attr_accessor :logUtil, :downloadableItem

    def jfields_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItemValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @downloadableItem = nil unless instance_variable_defined?(:@downloadableItem)
    end
    

    def initialize(downloadableItem)
        super()
        jfields_org_allbinary_business_user_commerce_inventory_item_download_DownloadableItemValidation
        @downloadableItem = downloadableItem
    end
    

    def isValid()
        begin
            if @downloadableItem.getId() == nil || @downloadableItem.getId().length() < 1 || @downloadableItem.getId().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                return false
            end
            if @downloadableItem.getId() != nil && !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(@downloadableItem.getId())
                return false
            end
            if @downloadableItem.getSystem() == nil || @downloadableItem.getSystem().length() < 1 || @downloadableItem.getSystem().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @downloadableItem.getPlatform() == nil || @downloadableItem.getPlatform().length() < 1 || @downloadableItem.getPlatform().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @downloadableItem.getSpecialName() == nil || @downloadableItem.getSpecialName().length() < 0 || @downloadableItem.getSpecialName().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @downloadableItem.getVersion() == nil || @downloadableItem.getVersion().length() < 1 || @downloadableItem.getVersion().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                return false
            end
            if @downloadableItem.getChanges() == nil || @downloadableItem.getChanges().length() < 1 || @downloadableItem.getChanges().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                return false
            end
            if @downloadableItem.getSize() == nil
                return false
            else
                size = @downloadableItem.getSize().to_s
                if size.length < 1 || size.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                    return false
                end
            end
            if @downloadableItem.getValidTime() == nil
                return false
            else
                size = @downloadableItem.getValidTime().to_s
                if size.length < 1 || size.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                    return false
                end
            end
            if @downloadableItem.getRetries() == nil
                return false
            else
                size = @downloadableItem.getRetries().to_s
                if size.length < 1 || size.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                    return false
                end
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
            if @downloadableItem.getId() == nil || @downloadableItem.getId().length() < 1 || @downloadableItem.getId().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                stringBuffer.append("Id is invalid. Must be number < ")
                stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" and > 0 digits.<br/>")
            end
            if @downloadableItem.getId() != nil && !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(@downloadableItem.getId())
                stringBuffer.append("Id is invalid. Must be > 0.<br/>")
            end
            if @downloadableItem.getSystem() == nil || @downloadableItem.getSystem().length() < 1 || @downloadableItem.getSystem().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("System value is invalid. Must be < ")
                stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" and > 0 characters long.<br/>")
            end
            if @downloadableItem.getPlatform() == nil || @downloadableItem.getPlatform().length() < 1 || @downloadableItem.getPlatform().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("Platform value is invalid. Must be < ")
                stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" and > 0 characters long.<br/>")
            end
            if @downloadableItem.getSpecialName() == nil || @downloadableItem.getSpecialName().length() < 0 || @downloadableItem.getSpecialName().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("Special Name value is invalid. Must be < ")
                stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" and > 0 characters long.<br/>")
            end
            if @downloadableItem.getVersion() == nil || @downloadableItem.getVersion().length() < 1 || @downloadableItem.getVersion().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING
                stringBuffer.append("Version value is invalid. Must be < ")
                stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" and > 0 characters long.<br/>")
            end
            if @downloadableItem.getChanges() == nil || @downloadableItem.getChanges().length() < 0 || @downloadableItem.getChanges().length() > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB
                stringBuffer.append("Changes value is invalid. Must be < ")
                stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(" and >= 0 characters long.<br/>")
            end
            if @downloadableItem.getSize() == nil
                stringBuffer.append("File Size is null")
            else
                size = @downloadableItem.getSize().to_s
                if size.length < 1 || size.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                    stringBuffer.append("File Size is invalid. Must be number < ")
                    stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append(" and > 0 digits.<br/>")
                end
            end
            if @downloadableItem.getValidTime() == nil
                stringBuffer.append("Valid Time is null")
            else
                size = @downloadableItem.getValidTime().to_s
                if size.length < 1 || size.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                    stringBuffer.append("Valid Time is invalid. Must be number < ")
                    stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append(" and > 0 digits.<br/>")
                end
            end
            if @downloadableItem.getRetries() == nil
                stringBuffer.append("Retries is null")
            else
                size = @downloadableItem.getRetries().to_s
                if size.length < 1 || size.length > ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM
                    stringBuffer.append("Retries is invalid. Must be number < ")
                    stringBuffer.appendint(((::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXNUM).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    stringBuffer.append(" and > 0 digits.<br/>")
                end
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
autoload :DownloadableItem, "org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem" unless const_defined?(:DownloadableItem, false)

end; end; end; end; end; end; end; end

