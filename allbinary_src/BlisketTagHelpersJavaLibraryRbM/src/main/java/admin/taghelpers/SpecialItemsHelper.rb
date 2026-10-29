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

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/BasicTable"

class SpecialItemsHelper < BasicTable
    attr_accessor :logUtil, :portion

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @portion = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @portion = Portion.new(hashMap)
    end
    

    def create()
        begin
            success = SpecialItemsEntityFactory.getInstance().getSpecialItemsEntityInstance().createTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    

    def drop()
        begin
            success = SpecialItemsEntityFactory.getInstance().getSpecialItemsEntityInstance().dropTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop pricing tables"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    

    def restore()
        begin
            success = "Restore Successful"
            result = AbSqlTableUtil.getInstance().restoreTable(SpecialItemsEntityFactory.getInstance().getSpecialItemsEntityInstance(), @portion)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "restore()")
            end
            return result
        rescue StandardError => e
            error = "Failed to restore backup"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "restore()", e)
            end
            return error
        end
    end
    

    def backup()
        begin
            success = "Restore Successful"
            result = AbSqlTableUtil.getInstance().backupTable(SpecialItemsEntityFactory.getInstance().getSpecialItemsEntityInstance())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "backup()")
            end
            return result
        rescue StandardError => e
            error = "Failed to make backup"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "backup()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/installer/Portion"
require "org/allbinary/data/tables/user/commerce/inventory/item/special/SpecialItemsEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlTableUtil"

