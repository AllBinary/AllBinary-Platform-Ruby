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

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

class BasicOptionItemsRequestHelper < ModifyTable
    attr_accessor :logUtil, :basicItemData, :request, :id, :optionOneTitle, :defaultOptionItem, :defaultOptionValue, :optionItem, :optionValue, :timeEntered, :lastModified

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @request = nil
        @id = nil
        @optionOneTitle = nil
        @defaultOptionItem = nil
        @defaultOptionValue = nil
        @optionItem = nil
        @optionValue = nil
        @timeEntered = nil
        @lastModified = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @request = pageContext.getRequest()
        self.getFormData()
    end
    

    def getFormData()
        @optionItem = BasicArrayListD.new()
        @optionValue = BasicArrayListD.new()
        @id = @request.getParameter(@basicItemData.ID)
        @optionOneTitle = @request.getParameter(BasicOptionItemData::OPTION_ONE_TITLE)
        @defaultOptionItem = @request.getParameter(BasicOptionItemData::DEFAULT_OPTION_ITEM)
        @defaultOptionValue = @request.getParameter(BasicOptionItemData::DEFAULT_OPTION_VALUE)
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_ONE_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_ONE_VALUE))
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_TWO_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_TWO_VALUE))
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_THREE_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_THREE_VALUE))
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_FOUR_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_FOUR_VALUE))
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_FIVE_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_FIVE_VALUE))
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_SIX_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_SIX_VALUE))
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_SEVEN_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_SEVEN_VALUE))
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_EIGHT_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_EIGHT_VALUE))
        @optionItem.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_NINE_ITEM))
        @optionValue.add(@request.getParameter(BasicOptionItemData::OPTION_ONE_NINE_VALUE))
        @timeEntered = @request.getParameter(EntryData.getInstance().TIMECREATED)
        @lastModified = @request.getParameter(EntryData.getInstance().LASTMODIFIED)
    end
    

    def getHashMap()
        values = StdUtil.getInstance().createHashMap()
        values.put(@basicItemData.ID, @id)
        values.put(BasicOptionItemData::OPTION_ONE_ONE_ITEM, @optionItem.get(0))
        values.put(BasicOptionItemData::OPTION_ONE_ONE_VALUE, @optionValue.get(0))
        values.put(BasicOptionItemData::OPTION_ONE_TWO_ITEM, @optionItem.get(1))
        values.put(BasicOptionItemData::OPTION_ONE_TWO_VALUE, @optionValue.get(1))
        values.put(BasicOptionItemData::OPTION_ONE_THREE_ITEM, @optionItem.get(2))
        values.put(BasicOptionItemData::OPTION_ONE_THREE_VALUE, @optionValue.get(2))
        values.put(BasicOptionItemData::OPTION_ONE_FOUR_ITEM, @optionItem.get(3))
        values.put(BasicOptionItemData::OPTION_ONE_FOUR_VALUE, @optionValue.get(3))
        values.put(BasicOptionItemData::OPTION_ONE_FIVE_ITEM, @optionItem.get(4))
        values.put(BasicOptionItemData::OPTION_ONE_FIVE_VALUE, @optionValue.get(4))
        values.put(BasicOptionItemData::OPTION_ONE_SIX_ITEM, @optionItem.get(5))
        values.put(BasicOptionItemData::OPTION_ONE_SIX_VALUE, @optionValue.get(5))
        values.put(BasicOptionItemData::OPTION_ONE_SEVEN_ITEM, @optionItem.get(6))
        values.put(BasicOptionItemData::OPTION_ONE_SEVEN_VALUE, @optionValue.get(6))
        values.put(BasicOptionItemData::OPTION_ONE_EIGHT_ITEM, @optionItem.get(7))
        values.put(BasicOptionItemData::OPTION_ONE_EIGHT_VALUE, @optionValue.get(7))
        values.put(BasicOptionItemData::OPTION_ONE_NINE_ITEM, @optionItem.get(8))
        values.put(BasicOptionItemData::OPTION_ONE_NINE_VALUE, @optionValue.get(8))
        calendar = Calendar.getInstance()
        time = String.new(calendar.getTimeInMillis().to_s)
        values.put(EntryData.getInstance().LASTMODIFIED, time)
        return values
    end
    

    def insert()
        begin
            calendar = Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            values = BasicArrayListD.new()
            values.add(@id)
            size = @optionValue.size()
            (0...size).each do |index|
                values.add(@optionValue.get(index))
                values.add(@optionItem.get(index))
            end
            values.add(time)
            values.add(time)
            BasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().insert(values)
            success = "Successfully inserted " + @id + " into items table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "insert()")
            end
            return success
        rescue StandardError => e
            error = "Failed to insert " + @id + " into items table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "inserts()", e)
            end
            return error
        end
    end
    

    def delete()
        begin
            BasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().delete(@id)
            success = "Successfully deleted"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            error = "Failed to delete"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
            end
            return error
        end
    end
    

    def update()
        begin
            success = "Update Pricing Successful"
            values = self.getHashMap()
            BasicOptionItemsEntityFactory.getInstance().getBasicOptionItemsEntityInstance().update(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(StringMaker.new().append(@id).append(CommonSeps.getInstance().SPACE).append(success).to_s, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update: " + @id
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
require "org/allbinary/business/user/commerce/inventory/item/option/BasicOptionItemData"
require "org/allbinary/data/tables/user/commerce/inventory/item/options/BasicOptionItemsEntityFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

