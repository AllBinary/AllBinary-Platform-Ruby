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
# package org.allbinary.logic.control.workflow


class DbWorkFlowFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return DbWorkFlowFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception, LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, hashMap)
        begin
            className = hashMap.get(DynamicObjectData::NAME)
            params = Array.new(1, nil)
            classes = Array.new(1, nil)
            classes[0] = hashMap.class
            params[0] = hashMap
            anyType = AbeFactory.getInstance().getInstance(abeClientInformation, className, classes, params)
            return WorkFlowWrapper.new(anyType)
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getInstance(HashMap)", e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getInstance(HashMap)", e)
            end
            raise e
        end
    end

    def self.instance()
        DbWorkFlowFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DbWorkFlowFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DbWorkFlowFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DbWorkFlowFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :WorkFlowInterface, "org/allbinary/logic/control/workflow/WorkFlowInterface"
autoload :WorkFlowWrapper, "org/allbinary/logic/control/workflow/WorkFlowWrapper"

begin
    DbWorkFlowFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

