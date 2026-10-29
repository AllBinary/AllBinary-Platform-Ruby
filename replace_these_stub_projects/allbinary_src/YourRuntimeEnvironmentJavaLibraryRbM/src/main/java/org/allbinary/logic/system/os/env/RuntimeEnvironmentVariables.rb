# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.system.os.env

# require "java/io/BufferedReader"
# require "java/io/InputStreamReader"
# require "java/util/Properties"

class RuntimeEnvironmentVariables
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def getTest1()
        return System.getProperty("java.java.home")
    end
    

    def getVariable(var)
        environmentVariables = self.get()
        return environmentVariables.getProperty(var)
    end
    

    def get()
        begin
            process = nil
            environmentVariables = Properties.new()
            operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
            osName = operatingSystemInterface.getName()
            linuxCommand = "env"
            windowsCommand = "cmd.exe /c set"
            solarisCommand = linuxCommand
            operatingSystems = OperatingSystems.getInstance()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "get()", e)
            end
            return nil
        end
    end
    

    def getTempDir()
        begin
            return System.getProperty("java.io.tmpdir")
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getTempDir()", e)
            end
            return nil
        end
    end
    

    def getLibraryPath()
        begin
            return System.getProperty("java.library.path")
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getLibraryPath()", e)
            end
            return nil
        end
    end
    

    def getClassPath()
        begin
            return System.getProperty("java.class.path")
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getClassPath()", e)
            end
            return nil
        end
    end
    

    def updateLibraryPath(libPath)
        begin
            existingPath = self.getLibraryPath()
            System.setProperty("java.library.path", libPath + ":" + existingPath)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "updateLibraryPath()", e)
            end
        end
    end
    

    def getUserHome()
        begin
            return System.getProperty("user.home")
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getUserHome()", e)
            end
            return nil
        end
    end
    

    def getUserDir()
        begin
            return System.getProperty("user.dir")
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getUserDir()", e)
            end
            return nil
        end
    end
    

    def set()
        begin
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "get()", e)
            end
        end
    end
    

    def setVariable(var, val)
        begin
            process = nil
            operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
            operatingSystems = OperatingSystems.getInstance()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().OSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setVariable()", e)
            end
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/logic/system/os/OperatingSystems"
require "org/allbinary/string/CommonStrings"
require "java/lang/System"

