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

class SpecialItemsRequestHelper < ModifyTable
    attr_accessor :logUtil, :basicItemData, :request, :id, :enabled, :number, :startTime, :endTime, :price, :timeEntered, :lastModified

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @request = nil
        @id = nil
        @enabled = nil
        @number = nil
        @startTime = nil
        @endTime = nil
        @price = nil
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
        @id = @request.getParameter(@basicItemData.ID)
        @number = @request.getParameter(@basicItemData.NUMBER)
        @enabled = @request.getParameter(EntryData.getInstance().ENABLE)
        @startTime = @request.getParameter(SpecialItemData::START_TIME)
        @endTime = @request.getParameter(SpecialItemData::END_TIME)
        @price = @request.getParameter(@basicItemData.PRICE)
        @timeEntered = @request.getParameter(EntryData.getInstance().TIMECREATED)
        @lastModified = @request.getParameter(EntryData.getInstance().LASTMODIFIED)
    end
    

    def getHashMap()
        values = StdUtil.getInstance().createHashMap()
        values.put(@basicItemData.ID, @id)
        values.put(@basicItemData.NUMBER, @number)
        values.put(EntryData.getInstance().ENABLE, @enabled)
        values.put(SpecialItemData::START_TIME, @startTime)
        values.put(SpecialItemData::END_TIME, @endTime)
        values.put(@basicItemData.PRICE, @price)
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
            values.add(@number)
            values.add(@enabled)
            values.add(@startTime)
            values.add(@endTime)
            values.add(@price)
            values.add(time)
            values.add(time)
            SpecialItemsEntityFactory.getInstance().getSpecialItemsEntityInstance().insert(values)
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
            SpecialItemsEntityFactory.getInstance().getSpecialItemsEntityInstance().delete(@id)
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
            success = "Update Successful"
            values = self.getHashMap()
            SpecialItemsEntityFactory.getInstance().getSpecialItemsEntityInstance().update(values)
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
require "org/allbinary/business/user/commerce/inventory/item/special/SpecialItemData"
require "org/allbinary/data/tables/user/commerce/inventory/item/special/SpecialItemsEntityFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

