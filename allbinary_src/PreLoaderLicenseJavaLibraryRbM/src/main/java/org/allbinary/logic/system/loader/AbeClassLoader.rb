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
require "java/lang/JavaOverload"
# require "java/io/IOException"
# require "java/util/Map"
require "java/lang/ClassLoader"

module ::Org; module Allbinary; module Logic; module System; module Loader

class AbeClassLoader < ::Java::Lang::ClassLoader
    attr_accessor :logUtil, :abCryptUtil, :LOAD_CLASS, :ENCRYPTED_EXTENSION, :key

    def jfields_org_allbinary_logic_system_loader_AbeClassLoader
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abCryptUtil = ::Org::Allbinary::Logic::System::Security::AbCryptUtil.getInstance()
        @LOAD_CLASS = "loadClass"
        @ENCRYPTED_EXTENSION = (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP).to_s + "abc"
        @key = nil unless instance_variable_defined?(:@key)
    end
    

    def initialize(parent, key)
        super(parent)
        jfields_org_allbinary_logic_system_loader_AbeClassLoader
        @key = key
        (AbeClassLoader.instance_exec((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + "WEB-INF/classes/") { |java_value| remove_const(:PATH) if const_defined?(:PATH, false); const_set(:PATH, java_value) })
    end
    

    def findLoadedClass1(name)
        return @@classes.get(name)
    end
    java_overload :findLoadedClass1, 1
    

    # throws ClassNotFoundException
    def loadClass_j1(name)
        java_monitor.synchronize do
        return self.loadClass(name, false)
        end
    end
    

    # throws ClassNotFoundException
    def loadClass_j2(name, resolve)
        java_monitor.synchronize do
        loadedWith = "findLoadedClass1"
        logBuffer = ::Org::Allbinary::Logic::Communication::Log::LogBuffer.new()
        begin
            myClass = self.findLoadedClass1(name)
            if myClass == nil
                begin
                    loadedWith = "super.loadClass"
                    normalClass = AbeClassLoader.superclass.java_super_method(:loadClass, 2).bind(self).call(name, resolve)
                    if normalClass != nil
                        return normalClass
                    end
                rescue NameError => e
                    logBuffer.add(::Org::Allbinary::Logic::Communication::Log::LogFactory.getInstance("Failed to Load Class: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS, e))
                rescue StandardError => e
                    logBuffer.add(::Org::Allbinary::Logic::Communication::Log::LogFactory.getInstance("Failed to Load Class: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS, e))
                rescue StandardError => e
                    logBuffer.add(::Org::Allbinary::Logic::Communication::Log::LogFactory.getInstanceF("NoClassDefFoundError Failed Loaded Class: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS))
                end
                classBytes = self.loadClassBytesFromFile(name)
                if classBytes == nil
                    raise NameError.new("My Bytes not loaded for: " + name + "\nwith: " + "loadClassBytes")
                end
                myClass = defineClass(name, classBytes, 0, classBytes.length)
                if myClass == nil
                    raise NameError.new("My Class Not Defineable for: " + name + "\nwith: " + "loadClassBytes")
                end
                @@classes.put(name, myClass)
            else
                logBuffer.add(::Org::Allbinary::Logic::Communication::Log::LogFactory.getInstanceF("Already Loaded: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS))
            end
            resolveClass(myClass)
            return myClass
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                logBuffer.logAll()
                @logUtil.put("Failure loading: " + name + "\nwith: " + loadedWith, self, @LOAD_CLASS, e)
            end
            return nil
        end
        end
    end

    def loadClass(*java_overload_args)
        return loadClass_j1(*java_overload_args) if java_overload_args.length == 1
        return loadClass_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method loadClass takes #{java_overload_args.length} arguments"
    end
    

    def loadClassBytesFromFile(name)
        in_ = nil
        cname = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        begin
            cname = (PATH).to_s + name.gsub(".", ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATORCHAR) + @ENCRYPTED_EXTENSION
            in_ = ::Java::Io::FileInputStream.new(cname)
            decrypted = @abCryptUtil.decrypt(in_, @key)
            return decrypted
        rescue IOError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("(Before LogBuffer Output) Failure loading Encrypted: " + name + " File: " + cname, "AbeClassLoader", "loadClassBytes", e)
            end
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(in_)
        rescue StandardError => e
            loadedWith = "loadClassBytes"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("(Before LogBuffer Output) Failed to Loaded Class: " + name + " File: " + cname + "\nwith: " + loadedWith, self, "loadClassBytes", e)
            end
        rescue StandardError => e
            loadedWith = "loadClassBytes"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.putF("(Before LogBuffer Output) NoClassDefFoundError Failed Loaded Class: " + name + " File: " + cname + "\nwith: " + loadedWith, self, "loadClassBytes")
            end
        end
        return nil
    end
    java_overload :loadClassBytesFromFile, 1
    

    # throws ClassNotFoundException
    def oldLoadClass(name, resolve)
        java_monitor.synchronize do
        loadedWith = "findLoadedClass1"
        begin
            myClass = self.findLoadedClass1(name)
            if myClass == nil
                begin
                    loadedWith = "super.loadClass"
                    normalClass = AbeClassLoader.superclass.java_super_method(:loadClass, 2).bind(self).call(name, resolve)
                    if normalClass != nil
                        return normalClass
                    end
                rescue NameError => e
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADER)
                        @logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, self, @LOAD_CLASS)
                    end
                rescue StandardError => e
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADER)
                        @logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, self, @LOAD_CLASS)
                    end
                rescue StandardError => e
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADER)
                        @logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, self, @LOAD_CLASS)
                    end
                end
                loadedWith = "loadClassBytes"
                classBytes = self.loadClassBytesFromFile(name)
                if classBytes == nil
                    raise NameError.new("Bytes not loaded for: " + name)
                end
                myClass = defineClass(name, classBytes, 0, classBytes.length)
                if myClass == nil
                    raise NameError.new("Class Not Defineable for: " + name)
                end
                @@classes.put(name, myClass)
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADER)
                    @logUtil.putF("Already Loaded: " + name + " with: " + loadedWith, self, @LOAD_CLASS)
                end
            end
            resolveClass(myClass)
            return myClass
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure loading: " + name, "AbeClassLoader", @LOAD_CLASS, e)
            end
            return nil
        end
        end
    end
    java_overload :oldLoadClass, 2

    def self.classes()
        AbeClassLoader.java_static_fields unless @java_static_fields_started
        return defined?(@@classes) ? @@classes : nil
    end

    def self.classes=(value)
        AbeClassLoader.java_static_fields unless @java_static_fields_started
        @@classes = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@classes = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            const_set(:PATH, nil)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbeClassLoader"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PATH].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :FileInputStream, "java/io/FileInputStream" unless const_defined?(:FileInputStream, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogBuffer, "org/allbinary/logic/communication/log/LogBuffer" unless const_defined?(:LogBuffer, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogFactory, "org/allbinary/logic/communication/log/LogFactory" unless const_defined?(:LogFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; autoload :AbCryptUtil, "org/allbinary/logic/system/security/AbCryptUtil" unless const_defined?(:AbCryptUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    AbeClassLoader.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

