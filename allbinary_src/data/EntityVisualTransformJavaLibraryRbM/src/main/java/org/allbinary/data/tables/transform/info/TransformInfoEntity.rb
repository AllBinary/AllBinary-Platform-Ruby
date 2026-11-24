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
# package org.allbinary.data.tables.transform.info

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/transform/info/TransformInfoEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info

class TransformInfoEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include TransformInfoEntityInterface
    attr_accessor :logUtil, :tableName, :abeClientInformation, :transformInfoFactoryInterface, :transformInfoObjectConfigAndManipulatorFactoryInterface, :transformInfoObjectConfigGeneratorFactoryInterface

    def jfields_org_allbinary_data_tables_transform_info_TransformInfoEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "transforminfo"
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @transformInfoFactoryInterface = nil unless instance_variable_defined?(:@transformInfoFactoryInterface)
        @transformInfoObjectConfigAndManipulatorFactoryInterface = nil unless instance_variable_defined?(:@transformInfoObjectConfigAndManipulatorFactoryInterface)
        @transformInfoObjectConfigGeneratorFactoryInterface = nil unless instance_variable_defined?(:@transformInfoObjectConfigGeneratorFactoryInterface)
    end
    

    def initialize(transformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoFactoryInterface)
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_transform_info_TransformInfoEntity
        self.setTableName(@tableName)
        @transformInfoObjectConfigGeneratorFactoryInterface = transformInfoObjectConfigGeneratorFactoryInterface
        @transformInfoObjectConfigAndManipulatorFactoryInterface = transformInfoObjectConfigAndManipulatorFactoryInterface
        @transformInfoFactoryInterface = transformInfoFactoryInterface
    end
    

    def insert(values)
        begin
            TransformInfoEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
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
    

    def delete(value)
        begin
            TransformInfoEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME, value)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    java_overload :delete, 1
    

    # throws Exception
    def get(name, propertiesHashMap, pageContext)
        transformInfoData = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance()
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(transformInfoData.NAME, name)
        hashMap = TransformInfoEntity.superclass.java_super_method(:getRow, 1).bind(self).call(keysAndValues)
        if hashMap != nil
            anyType = hashMap.get(transformInfoData.OBJECTCONFIG)
            if anyType != nil
                string = anyType
                hashMap.put(transformInfoData.OBJECTCONFIG, String.new(::Org::Allbinary::Logic::ControlPackage::Crypt::Encoder.decode(string)))
            end
            objectData = hashMap.get(transformInfoData.DATA)
            if objectData != nil
                string = objectData
                hashMap.put(transformInfoData.DATA, String.new(::Org::Allbinary::Logic::ControlPackage::Crypt::Encoder.decode(string)))
            end
            return @transformInfoFactoryInterface.getInstance(hashMap, propertiesHashMap, pageContext)
        else
            return nil
        end
    end
    java_overload :get, 3
    

    # throws Exception
    def getObjectConfigs(storeName)
        objectConfigVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        objectConfigColumnVector = self.getColumnWhere(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().OBJECTCONFIG, ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
        size = objectConfigColumnVector.size()
        (0...size).each do |i|
            objectConfigString = objectConfigColumnVector.get(i)
            objectConfigString = String.new(::Org::Allbinary::Logic::ControlPackage::Crypt::Encoder.decode(objectConfigString))
            objectConfigVector.add(@transformInfoObjectConfigAndManipulatorFactoryInterface.getInstance(@abeClientInformation, self, ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(objectConfigString)))
        end
        return objectConfigVector
    end
    java_overload :getObjectConfigs, 1
    

    # throws Exception
    def getNames(storeName)
        viewNameVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        columnVector = self.getColumnWhere(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME, ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeName)
        size = columnVector.size()
        (0...size).each do |i|
            viewNameString = columnVector.get(i)
            viewNameVector.add(viewNameString)
        end
        return viewNameVector
    end
    java_overload :getNames, 1
    

    def createTableStatement()
        transformInfoData = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(transformInfoData.NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.OBJECTFILENAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.OBJECT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(transformInfoData.OBJECTCONFIGFILENAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.OBJECTCONFIG)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(transformInfoData.TEMPLATEFILENAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.TEMPLATE)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(transformInfoData.DATAFILENAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.DATA)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED)
        stringBuffer.append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(transformInfoData.NAME)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return TransformInfoEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def update(updatedValues)
        TransformInfoEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME, updatedValues.get(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME), updatedValues)
    end
    java_overload :update, 1
    

    def dropTable()
        return TransformInfoEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :Encoder, "org/allbinary/logic/control/crypt/Encoder" unless const_defined?(:Encoder, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoFactoryInterface, "org/allbinary/logic/visual/transform/info/TransformInfoFactoryInterface" unless const_defined?(:TransformInfoFactoryInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigAndManipulatorFactoryBase, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryBase" unless const_defined?(:TransformInfoObjectConfigAndManipulatorFactoryBase, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; module Generator; autoload :TransformInfoObjectConfigGeneratorFactoryInterface, "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactoryInterface" unless const_defined?(:TransformInfoObjectConfigGeneratorFactoryInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

