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
# package org.allbinary.data.tables.workflow

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/workflow/WorkFlowEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Workflow

class WorkFlowEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include WorkFlowEntityInterface
    attr_accessor :logUtil, :abeClientInformation, :tableName, :METHOD_GET, :METHOD_UPDATE

    def jfields_org_allbinary_data_tables_workflow_WorkFlowEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @tableName = "workflows"
        @METHOD_GET = "get()"
        @METHOD_UPDATE = "update"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_workflow_WorkFlowEntity
        self.setTableName(@tableName)
    end
    

    def insert(values)
        begin
            WorkFlowEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    java_overload :insert, 1
    

    def delete(name, storeName)
        begin
            keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keysAndValues.put(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().NAME, name)
            keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
            WorkFlowEntity.superclass.java_super_method(:deleteWhere, 1).bind(self).call(keysAndValues)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    java_overload :delete, 2
    

    # throws Exception, LicensingException
    def get_j2(name, storeName)
        begin
            keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keysAndValues.put(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().NAME, name)
            keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
            hashMap = WorkFlowEntity.superclass.java_super_method(:getRow, 1).bind(self).call(keysAndValues)
            return ::Org::Allbinary::Logic::ControlPackage::Workflow::DbWorkFlowFactory.getInstance().getInstance(@abeClientInformation, hashMap)
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @METHOD_GET, e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @METHOD_GET, e)
            end
            raise e
        end
    end
    

    def get_j1(storeName)
        begin
            workFlowsVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
            hashMapVector = WorkFlowEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keysAndValues)
            size = hashMapVector.size()
            (0...size).each do |i|
                workFlowHashMap = hashMapVector.get(i)
                if workFlowHashMap != nil
                    workFlowsVector.add(::Org::Allbinary::Logic::ControlPackage::Workflow::DbWorkFlowFactory.getInstance().getInstance(@abeClientInformation, workFlowHashMap))
                end
            end
            return workFlowsVector
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @METHOD_GET, e)
            end
            return nil
        end
    end

    def get(*java_overload_args)
        return get_j2(*java_overload_args) if java_overload_args.length == 2
        return get_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method get takes #{java_overload_args.length} arguments"
    end
    

    def update(updatedValues)
        begin
            wherekeysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            wherekeysAndValues.put(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().NAME, updatedValues.get(::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance().NAME))
            wherekeysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, updatedValues.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME))
            WorkFlowEntity.superclass.java_super_method(:updateWhere, 2).bind(self).call(wherekeysAndValues, updatedValues)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @METHOD_UPDATE, e)
            end
        end
    end
    java_overload :update, 1
    

    def createTableStatement()
        workFlowData = ::Org::Allbinary::Logic::ControlPackage::Workflow::WorkFlowData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(workFlowData.NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::DynamicObjectData::NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(workFlowData.DATA).append(@sqlTypeStrings.BLOB_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(workFlowData.NAME).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return WorkFlowEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        return WorkFlowEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData" unless const_defined?(:DynamicObjectData, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :DbWorkFlowFactory, "org/allbinary/logic/control/workflow/DbWorkFlowFactory" unless const_defined?(:DbWorkFlowFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :WorkFlowData, "org/allbinary/logic/control/workflow/WorkFlowData" unless const_defined?(:WorkFlowData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow; autoload :WorkFlowInterface, "org/allbinary/logic/control/workflow/WorkFlowInterface" unless const_defined?(:WorkFlowInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

