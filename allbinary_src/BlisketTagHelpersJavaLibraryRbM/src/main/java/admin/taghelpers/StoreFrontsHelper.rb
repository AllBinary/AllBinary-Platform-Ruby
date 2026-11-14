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

class StoreFrontsHelper < BasicTable
    attr_accessor :logUtil, :portion, :commonPhoneStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @portion = nil
        @commonPhoneStrings = CommonPhoneStrings.getInstance()
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @portion = Portion.new(hashMap)
    end
    

    def drop()
        begin
            success = StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().dropTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, @commonStrings.DROP)
            end
            return success
        rescue StandardError => e
            error = "Failed to drop storefronts table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.DROP, e)
            end
            return error
        end
    end
    

    def create()
        begin
            success = StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().createTable()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "create()")
            end
            return success
        rescue StandardError => e
            error = "Failed to create new storefronts table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "create()", e)
            end
            return error
        end
    end
    

    def restore()
        begin
            success = "Restore Successful"
            result = AbSqlTableUtil.getInstance().restoreTable(StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance(), @portion)
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
            result = AbSqlTableUtil.getInstance().backupTable(StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance())
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
    

    def generateSelect()
        begin
            success = CommonSeps.getInstance().SPACE
            storeNamesVector = StoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().getStoreFrontNames()
            storeSelect = HtmlSelect.new(StringUtil.getInstance().EMPTY_STRING, @commonPhoneStrings.ONE, StoreFrontData.getInstance().SELECTSTORENAME, StringUtil.getInstance().EMPTY_STRING)
            storeSelect.addAttribute(StoreFrontsHelper::CLASS, StoreFrontsHelper::TEXT)
            size = storeNamesVector.size()
            (0...size).each do |index|
                storeName = storeNamesVector.get(index)
                storeSelect.addOption(storeName)
            end
            success += (storeSelect).to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "generateSelect()")
            end
            return success
        rescue StandardError => e
            error = "Failed to generate storefronts select"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "generateSelect()", e)
            end
            return error
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:CLASS, "class")
        const_set(:TEXT, "text")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StoreFrontsHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:CLASS, :TEXT].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData"
autoload :Portion, "org/allbinary/business/installer/Portion"
autoload :StoreFrontsEntityFactory, "org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbSqlTableUtil, "org/allbinary/logic/communication/sql/AbSqlTableUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :HtmlSelect, "org/allbinary/logic/visual/dhtml/html/select/HtmlSelect"
autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"

begin
    StoreFrontsHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

