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
# require "java/io/FileInputStream"
# require "java/io/IOException"
# require "java/util/Map"

class AbeClassLoader < ClassLoader
    attr_accessor :logUtil, :abCryptUtil, :LOAD_CLASS, :ENCRYPTED_EXTENSION, :key

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abCryptUtil = AbCryptUtil.getInstance()
        @LOAD_CLASS = "loadClass"
        @ENCRYPTED_EXTENSION = (AbPathData.getInstance().EXTENSION_SEP).to_s + "abc"
        @key = nil
    end
    

    def initialize(parent, key)
        super(parent)
        initialize_fields
        @key = key
        AbeClassLoader::PATH = (org.allbinary.globals.URLGLOBALS.getWebappPath()).to_s + "WEB-INF/classes/"
    end
    

    def findLoadedClass1(name)
        return AbeClassLoader.classes.get(name)
    end
    

    # throws ClassNotFoundException
    def loadClass(name)
        java_monitor.synchronize do
        return self.loadClass(name, false)
        end
    end
    

    # throws ClassNotFoundException
    # Java overloaded method: Ruby keeps the last definition
    def loadClass(name, resolve)
        java_monitor.synchronize do
        loadedWith = "findLoadedClass1"
        logBuffer = LogBuffer.new()
        begin
            myClass = self.findLoadedClass1(name)
            if myClass == nil
                begin
                    loadedWith = "super.loadClass"
                    normalClass = super(name, resolve)
                    if normalClass != nil
                        return normalClass
                    end
                rescue ClassNotFoundException => e
                    logBuffer.add(LogFactory.getInstance("Failed to Load Class: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS, e))
                rescue StandardError => e
                    logBuffer.add(LogFactory.getInstance("Failed to Load Class: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS, e))
                rescue NoClassDefFoundError => e
                    logBuffer.add(LogFactory.getInstanceF("NoClassDefFoundError Failed Loaded Class: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS))
                end
                classBytes = self.loadClassBytesFromFile(name)
                if classBytes == nil
                    raise ClassNotFoundException.new("My Bytes not loaded for: " + name + "\nwith: " + "loadClassBytes")
                end
                myClass = defineClass(name, classBytes, 0, classBytes.length)
                if myClass == nil
                    raise ClassNotFoundException.new("My Class Not Defineable for: " + name + "\nwith: " + "loadClassBytes")
                end
                AbeClassLoader.classes.put(name, myClass)
            else
                logBuffer.add(LogFactory.getInstanceF("Already Loaded: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS))
            end
            resolveClass(myClass)
            return myClass
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                logBuffer.logAll()
                @logUtil.put("Failure loading: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS, e)
            end
            return nil
        end
        end
    end
    

    def loadClassBytesFromFile(name)
        in_ = nil
        cname = StringUtil.getInstance().EMPTY_STRING
        begin
            cname = (AbeClassLoader::PATH).to_s + name.gsub(".", AbPathData.getInstance().SEPARATORCHAR) + @ENCRYPTED_EXTENSION
            in_ = FileInputStream.new(cname)
            decrypted = @abCryptUtil.decrypt(in_, @key)
            return decrypted
        rescue IOError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("(Before LogBuffer Output) Failure loading Encrypted: " + name + " File: " + cname, "AbeClassLoader", "loadClassBytes", e)
            end
            StreamUtil.getInstance().close(in_)
        rescue StandardError => e
            loadedWith = "loadClassBytes"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("(Before LogBuffer Output) Failed to Loaded Class: " + name + " File: " + cname + "\nwith: " + loadedWith, self, "loadClassBytes", e)
            end
        rescue NoClassDefFoundError => e
            loadedWith = "loadClassBytes"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.putF("(Before LogBuffer Output) NoClassDefFoundError Failed Loaded Class: " + name + " File: " + cname + "\nwith: " + loadedWith, self, "loadClassBytes")
            end
        end
        return nil
    end
    

    # throws ClassNotFoundException
    def oldLoadClass(name, resolve)
        java_monitor.synchronize do
        loadedWith = "findLoadedClass1"
        begin
            myClass = self.findLoadedClass1(name)
            if myClass == nil
                begin
                    loadedWith = "super.loadClass"
                    normalClass = self.class.superclass.instance_method(:loadClass).bind(self).call(name, resolve)
                    if normalClass != nil
                        return normalClass
                    end
                rescue ClassNotFoundException => e
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADER)
                        @logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, self, @LOAD_CLASS)
                    end
                rescue StandardError => e
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADER)
                        @logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, self, @LOAD_CLASS)
                    end
                rescue NoClassDefFoundError => e
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADER)
                        @logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, self, @LOAD_CLASS)
                    end
                end
                loadedWith = "loadClassBytes"
                classBytes = self.loadClassBytesFromFile(name)
                if classBytes == nil
                    raise ClassNotFoundException.new("Bytes not loaded for: " + name)
                end
                myClass = defineClass(name, classBytes, 0, classBytes.length)
                if myClass == nil
                    raise ClassNotFoundException.new("Class Not Defineable for: " + name)
                end
                AbeClassLoader.classes.put(name, myClass)
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADER)
                    @logUtil.putF("Already Loaded: " + name + " with: " + loadedWith, self, @LOAD_CLASS)
                end
            end
            resolveClass(myClass)
            return myClass
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure loading: " + name, "AbeClassLoader", @LOAD_CLASS, e)
            end
            return nil
        end
        end
    end

    def self.classes()
        return defined?(@@classes) ? @@classes : nil
    end

    def self.classes=(value)
        @@classes = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogBuffer"
require "org/allbinary/logic/communication/log/LogFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/AbCryptUtil"

class AbeClassLoader
    @@classes = StdUtil.getInstance().createHashMap()
    PATH = nil
end

