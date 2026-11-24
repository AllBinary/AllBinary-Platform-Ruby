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
# package admin.taghelpers

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

module ::Admin; module Taghelpers

class BasicOptionItemsRequestHelper < ModifyTable
    attr_accessor :logUtil, :basicItemData, :request, :id, :optionOneTitle, :defaultOptionItem, :defaultOptionValue, :optionItem, :optionValue, :timeEntered, :lastModified

    def jfields_admin_taghelpers_BasicOptionItemsRequestHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @id = nil unless instance_variable_defined?(:@id)
        @optionOneTitle = nil unless instance_variable_defined?(:@optionOneTitle)
        @defaultOptionItem = nil unless instance_variable_defined?(:@defaultOptionItem)
        @defaultOptionValue = nil unless instance_variable_defined?(:@defaultOptionValue)
        @optionItem = nil unless instance_variable_defined?(:@optionItem)
        @optionValue = nil unless instance_variable_defined?(:@optionValue)
        @timeEntered = nil unless instance_variable_defined?(:@timeEntered)
        @lastModified = nil unless instance_variable_defined?(:@lastModified)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_BasicOptionItemsRequestHelper
        @request = pageContext.getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @optionItem = ::Org::Allbinary::Util::BasicArrayListD.new()
        @optionValue = ::Org::Allbinary::Util::BasicArrayListD.new()
        @id = @request.getParameter(@basicItemData.ID)
        @optionOneTitle = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_TITLE)
        @defaultOptionItem = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::DEFAULT_OPTION_ITEM)
        @defaultOptionValue = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::DEFAULT_OPTION_VALUE)
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_ONE_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_ONE_VALUE))
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_TWO_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_TWO_VALUE))
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_THREE_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_THREE_VALUE))
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_FOUR_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_FOUR_VALUE))
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_FIVE_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_FIVE_VALUE))
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_SIX_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_SIX_VALUE))
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_SEVEN_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_SEVEN_VALUE))
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_EIGHT_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_EIGHT_VALUE))
        @optionItem.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_NINE_ITEM))
        @optionValue.add(@request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_NINE_VALUE))
        @timeEntered = @request.getParameter(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED)
        @lastModified = @request.getParameter(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED)
    end
    java_overload :getFormData, 0
    

    def getHashMap()
        values = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        values.put(@basicItemData.ID, @id)
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_ONE_ITEM, @optionItem.get(0))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_ONE_VALUE, @optionValue.get(0))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_TWO_ITEM, @optionItem.get(1))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_TWO_VALUE, @optionValue.get(1))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_THREE_ITEM, @optionItem.get(2))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_THREE_VALUE, @optionValue.get(2))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_FOUR_ITEM, @optionItem.get(3))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_FOUR_VALUE, @optionValue.get(3))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_FIVE_ITEM, @optionItem.get(4))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_FIVE_VALUE, @optionValue.get(4))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_SIX_ITEM, @optionItem.get(5))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_SIX_VALUE, @optionValue.get(5))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_SEVEN_ITEM, @optionItem.get(6))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_SEVEN_VALUE, @optionValue.get(6))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_EIGHT_ITEM, @optionItem.get(7))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_EIGHT_VALUE, @optionValue.get(7))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_NINE_ITEM, @optionItem.get(8))
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::BasicOptionItemData::OPTION_ONE_NINE_VALUE, @optionValue.get(8))
        calendar = ::Java::Util::Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED, time)
        return values
    end
    java_overload :getHashMap, 0
    

    def insert()
        begin
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            values = ::Org::Allbinary::Util::BasicArrayListD.new()
            values.add(@id)
            size = @optionValue.size()
            (0...size).each do |index|
                values.add(@optionValue.get(index))
                values.add(@optionItem.get(index))
            end
            values.add(time)
            values.add(time)
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Options::BasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().insert(values)
            success = "Successfully inserted " + @id + " into items table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to insert " + @id + " into items table"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "inserts()", e)
            end
            return error
        end
    end
    java_overload :insert, 0
    

    def delete()
        begin
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Options::BasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().delete(@id)
            success = "Successfully deleted"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to delete"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    java_overload :delete, 0
    

    def update()
        begin
            success = "Update Pricing Successful"
            values = self.getHashMap()
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Options::BasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().update(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@id).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(success).to_s, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update: " + @id
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
    java_overload :update, 0
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Option; autoload :BasicOptionItemData, "org/allbinary/business/user/commerce/inventory/item/option/BasicOptionItemData" unless const_defined?(:BasicOptionItemData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; module Options; autoload :BasicOptionItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/options/BasicOptionItemsEntityFactory" unless const_defined?(:BasicOptionItemsEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

