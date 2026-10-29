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
# package org.allbinary.logic.system.loader

require "java/lang/Object"
# require "java/lang/reflect/Constructor"

class AbeFactory
    attr_accessor :logUtil, :useCustomLoader

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @useCustomLoader = false
    end
    

    def self.getInstance()
        return AbeFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, className)
        java_monitor.synchronize do
        begin
            return self.getClass(abeClientInformation, className).newInstance()
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure for: " + className, self, "getInstance(classname)", e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure for: " + className, self, "getInstance(classname)", e)
            end
            return nil
        end
        end
    end
    

    # throws LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, className, classes, params)
        java_monitor.synchronize do
        constructor = nil
        begin
            parent = WebappClassLoaderInfo.getLoader()
            if @useCustomLoader
                loader = AbeClassLoader.new(parent, AbKeys.getInstance().getKey(abeClientInformation, className))
                myClass = loader.loadClass(className)
                constructor = myClass.getConstructor(classes)
                return constructor.newInstance(params)
            else
                myClass = parent.loadClass(className)
                constructor = myClass.getConstructor(classes)
                return constructor.newInstance(params)
            end
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Failure for: ")
                stringBuffer.append(className)
                stringBuffer.append(CommonSeps.getInstance().SPACE)
                stringBuffer.append(ConstructorUtil.view(constructor, CommonSeps.getInstance().NEW_LINE))
                @logUtil.put(stringBuffer.to_s, self, "getInstance(className,params)", e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Failure for: ")
                stringBuffer.append(className)
                stringBuffer.append(CommonSeps.getInstance().SPACE)
                stringBuffer.append(ConstructorUtil.view(constructor, CommonSeps.getInstance().NEW_LINE))
                @logUtil.put(stringBuffer.to_s, self, "getInstance(className,params)", e)
            end
            return nil
        end
        end
    end
    

    # throws LicensingException
    def getClass(abeClientInformation, className)
        java_monitor.synchronize do
        begin
            parent = WebappClassLoaderInfo.getLoader()
            if @useCustomLoader
                loader = AbeClassLoader.new(parent, AbKeys.getInstance().getKey(abeClientInformation, className))
                c = loader.loadClass(className)
                return c
            else
                c = parent.loadClass(className)
                return c
            end
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure for: " + className, self, "getClass(className)", e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure for: " + className, self, "getClass(className)", e)
            end
            return nil
        end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/anyType/ConstructorUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/AbKeys"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/system/loader/AbeClassLoader"
require "org/allbinary/logic/system/loader/WebappClassLoaderInfo"

class AbeFactory
    @@instance = AbeFactory.new()
end

