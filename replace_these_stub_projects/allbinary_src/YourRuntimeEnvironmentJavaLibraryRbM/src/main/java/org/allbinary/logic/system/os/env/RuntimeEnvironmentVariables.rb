# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.system.os.env

require "java/lang/JavaClass"
# require "java/io/BufferedReader"
# require "java/io/InputStreamReader"
# require "java/util/Properties"

module ::Org; module Allbinary; module Logic; module System; module Os; module Env

class RuntimeEnvironmentVariables
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_logic_system_os_env_RuntimeEnvironmentVariables
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_os_env_RuntimeEnvironmentVariables
    end
    

    def getTest1()
        return ::Java::Lang::System.getProperty("java.java.home")
    end
    

    def getVariable(var)
        environmentVariables = self.get()
        return environmentVariables.getProperty(var)
    end
    

    def get()
        begin
            process = nil
            environmentVariables = Properties.new()
            operatingSystemInterface = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance()
            osName = operatingSystemInterface.getName()
            linuxCommand = "env"
            windowsCommand = "cmd.exe /c set"
            solarisCommand = linuxCommand
            operatingSystems = ::Org::Allbinary::Logic::System::Os::OperatingSystems.getInstance()
            if (osName <=> operatingSystems.LINUX) == 0
                process = Runtime.getRuntime().exec(linuxCommand)
            elsif (osName.index(operatingSystems.WINDOWS) || -1) >= 0
                process = Runtime.getRuntime().exec(windowsCommand)
            elsif (osName <=> operatingSystems.SOLARIS) == 0
                process = Runtime.getRuntime().exec(solarisCommand)
            else
                raise StandardError.new()
            end
            processInputStreamReader = InputStreamReader.new(process.getInputStream())
            bufferedReader = BufferedReader.new(processInputStreamReader)
            keyValuePair = nil
            while ((keyValuePair = bufferedReader.readLine())) != nil
                index = (keyValuePair.index("=") || -1)
                key = keyValuePair[0...index]
                value = keyValuePair[index + 1..]
                environmentVariables.put(key, value)
            end
            return environmentVariables
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "get()", e)
            end
            return nil
        end
    end
    

    def getTempDir()
        begin
            return ::Java::Lang::System.getProperty("java.io.tmpdir")
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getTempDir()", e)
            end
            return nil
        end
    end
    

    def getLibraryPath()
        begin
            return ::Java::Lang::System.getProperty("java.library.path")
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getLibraryPath()", e)
            end
            return nil
        end
    end
    

    def getClassPath()
        begin
            return ::Java::Lang::System.getProperty("java.class.path")
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getClassPath()", e)
            end
            return nil
        end
    end
    

    def updateLibraryPath(libPath)
        begin
            existingPath = self.getLibraryPath()
            ::Java::Lang::System.setProperty("java.library.path", libPath + ":" + existingPath)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "updateLibraryPath()", e)
            end
        end
    end
    

    def getUserHome()
        begin
            return ::Java::Lang::System.getProperty("user.home")
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getUserHome()", e)
            end
            return nil
        end
    end
    

    def getUserDir()
        begin
            return ::Java::Lang::System.getProperty("user.dir")
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getUserDir()", e)
            end
            return nil
        end
    end
    

    def set()
        begin
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "get()", e)
            end
        end
    end
    

    def setVariable(var, val)
        begin
            process = nil
            operatingSystemInterface = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance()
            operatingSystems = ::Org::Allbinary::Logic::System::Os::OperatingSystems.getInstance()
            osName = operatingSystemInterface.getName()
            windowsCommand = "cmd.exe /c set" + var + "=" + val
            if (osName <=> operatingSystems.LINUX) == 0
                raise StandardError.new()
            elsif (osName.index(operatingSystems.WINDOWS) || -1) >= 0
                process = Runtime.getRuntime().exec(windowsCommand)
            elsif (osName <=> operatingSystems.SOLARIS) == 0
                raise StandardError.new()
            else
                raise StandardError.new()
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setVariable()", e)
            end
        end
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystems, "org/allbinary/logic/system/os/OperatingSystems" unless const_defined?(:OperatingSystems, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
require "java/lang/System"

end; end; end; end; end; end

