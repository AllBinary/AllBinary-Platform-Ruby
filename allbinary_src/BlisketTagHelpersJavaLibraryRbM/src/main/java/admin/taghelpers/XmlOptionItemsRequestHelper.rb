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

class XmlOptionItemsRequestHelper < ModifyTable
    attr_accessor :logUtil, :basicItemData, :request, :id, :xmlFileStatus, :optionXmlFile, :timeEntered, :lastModified

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicItemData = BasicItemData.getInstance()
        @request = nil
        @id = nil
        @xmlFileStatus = nil
        @optionXmlFile = nil
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
        @xmlFileStatus = @request.getParameter(XmlOptionItemData::XML_FILE_STATUS)
        @optionXmlFile = @request.getParameter(XmlOptionItemData::OPTION_XML_FILE)
        @timeEntered = @request.getParameter(EntryData.getInstance().TIMECREATED)
        @lastModified = @request.getParameter(EntryData.getInstance().LASTMODIFIED)
    end
    

    def getHashMap()
        values = StdUtil.getInstance().createHashMap()
        values.put(@basicItemData.ID, @id)
        values.put(XmlOptionItemData::XML_FILE_STATUS, @xmlFileStatus)
        values.put(XmlOptionItemData::OPTION_XML_FILE, @optionXmlFile)
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
            values.add(@xmlFileStatus)
            values.add(@optionXmlFile)
            values.add(time)
            values.add(time)
            XmlOptionItemsEntityFactory.getInstance().getXmlOptionItemsEntityInstance().insert(values)
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
            XmlOptionItemsEntityFactory.getInstance().getXmlOptionItemsEntityInstance().delete(@id)
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
            XmlOptionItemsEntityFactory.getInstance().getXmlOptionItemsEntityInstance().update(values)
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
require "org/allbinary/business/user/commerce/inventory/item/option/XmlOptionItemData"
require "org/allbinary/data/tables/user/commerce/inventory/item/options/XmlOptionItemsEntityFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

