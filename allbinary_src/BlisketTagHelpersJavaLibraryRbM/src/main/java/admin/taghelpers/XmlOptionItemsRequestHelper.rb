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

class XmlOptionItemsRequestHelper < ModifyTable
    attr_accessor :logUtil, :basicItemData, :request, :id, :xmlFileStatus, :optionXmlFile, :timeEntered, :lastModified

    def jfields_admin_taghelpers_XmlOptionItemsRequestHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @request = nil unless instance_variable_defined?(:@request)
        @id = nil unless instance_variable_defined?(:@id)
        @xmlFileStatus = nil unless instance_variable_defined?(:@xmlFileStatus)
        @optionXmlFile = nil unless instance_variable_defined?(:@optionXmlFile)
        @timeEntered = nil unless instance_variable_defined?(:@timeEntered)
        @lastModified = nil unless instance_variable_defined?(:@lastModified)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_XmlOptionItemsRequestHelper
        @request = pageContext.getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @id = @request.getParameter(@basicItemData.ID)
        @xmlFileStatus = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::XmlOptionItemData::XML_FILE_STATUS)
        @optionXmlFile = @request.getParameter(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::XmlOptionItemData::OPTION_XML_FILE)
        @timeEntered = @request.getParameter(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED)
        @lastModified = @request.getParameter(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED)
    end
    java_overload :getFormData, 0
    

    def getHashMap()
        values = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        values.put(@basicItemData.ID, @id)
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::XmlOptionItemData::XML_FILE_STATUS, @xmlFileStatus)
        values.put(::Org::Allbinary::Business::User::Commerce::Inventory::Item::Option::XmlOptionItemData::OPTION_XML_FILE, @optionXmlFile)
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
            values.add(@xmlFileStatus)
            values.add(@optionXmlFile)
            values.add(time)
            values.add(time)
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Options::XmlOptionItemsEntityFactory.getInstance().getXmlOptionItemsEntityInstance().insert(values)
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
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Options::XmlOptionItemsEntityFactory.getInstance().getXmlOptionItemsEntityInstance().delete(@id)
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
            success = "Update Successful"
            values = self.getHashMap()
            ::Org::Allbinary::DataPackage::Tables::User::Commerce::Inventory::Item::Options::XmlOptionItemsEntityFactory.getInstance().getXmlOptionItemsEntityInstance().update(values)
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
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; module Option; autoload :XmlOptionItemData, "org/allbinary/business/user/commerce/inventory/item/option/XmlOptionItemData" unless const_defined?(:XmlOptionItemData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Inventory; module Item; module Options; autoload :XmlOptionItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/options/XmlOptionItemsEntityFactory" unless const_defined?(:XmlOptionItemsEntityFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

