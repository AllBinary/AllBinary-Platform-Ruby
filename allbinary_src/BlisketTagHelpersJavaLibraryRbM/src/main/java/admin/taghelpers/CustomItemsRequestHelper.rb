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

class CustomItemsRequestHelper < ModifyTable
    attr_accessor :logUtil, :basicItemData, :request, :id, :className, :packageName, :timeEntered, :lastModified

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @request = nil
        @id = nil
        @className = nil
        @packageName = nil
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
        @className = @request.getParameter(DynamicObjectData::NAME)
        @packageName = @request.getParameter(CustomItemData::PACKAGE)
        @timeEntered = @request.getParameter(EntryData.getInstance().TIMECREATED)
        @lastModified = @request.getParameter(EntryData.getInstance().LASTMODIFIED)
    end
    

    def getHashMap()
        values = StdUtil.getInstance().createHashMap()
        values.put(@basicItemData.ID, @id)
        values.put(DynamicObjectData::NAME, @className)
        values.put(CustomItemData::PACKAGE, @packageName)
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
            values.add(@className)
            values.add(@packageName)
            values.add(time)
            values.add(time)
            CustomItemsEntityFactory.getInstance().getCustomItemsEntityInstance().insert(values)
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
            CustomItemsEntityFactory.getInstance().getCustomItemsEntityInstance().delete(@id)
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
            CustomItemsEntityFactory.getInstance().getCustomItemsEntityInstance().update(values)
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

autoload :Calendar, "java/util/Calendar"
autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData"
autoload :EntryData, "org/allbinary/business/entry/EntryData"
autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData"
autoload :CustomItemData, "org/allbinary/business/user/commerce/inventory/item/custom/CustomItemData"
autoload :CustomItemsEntityFactory, "org/allbinary/data/tables/user/commerce/inventory/item/customs/CustomItemsEntityFactory"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"

