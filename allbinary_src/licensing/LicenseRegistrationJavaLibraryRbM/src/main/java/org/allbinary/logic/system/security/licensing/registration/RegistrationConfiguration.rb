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
# package org.allbinary.logic.system.security.licensing.registration

# require "java/io/DataInputStream"
# require "java/io/InputStream"
# require "java/io/OutputStream"

class RegistrationConfiguration
    attr_accessor :logUtil, :registrationCode, :NAME, :FILE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @registrationCode = "No Registration Code"
        @NAME = "registrationid"
        @FILE = "Registration.dat"
    end
    

    def initialize()
        initialize_fields
        begin
            if FileFactory.getInstance().isFile(@FILE)
                self.read()
            else
                self.write()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def self.getInstance()
        return RegistrationConfiguration::SINGLETON
    end
    

    # throws Exception
    def read()
        fileInputStreamFactory = FileStreamFactory.getInstance()
        fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(StringUtil.getInstance().EMPTY_STRING, @FILE)
        dataInputStream = DataInputStream.new(fileInputStream)
        self.setRegistrationCode(dataInputStream.readUTF())
        PreLogUtil.put(StringMaker.new().append("Read Configuration: ").append(self.to_s).to_s, self, "read")
    end
    

    # throws Exception
    def write()
        dataOutputStream = nil
        begin
            @logUtil.putF(StringMaker.new().append("Write Configuration: ").append(self.to_s).to_s, self, "write")
            fileInputStreamFactory = FileStreamFactory.getInstance()
            fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, @FILE)
            dataOutputStream = AbDataOutputStream.new(fileOutputStream)
            dataOutputStream.writeUTF(self.getRegistrationCode())
            dataOutputStream.flush()
        ensure
            StreamUtil.getInstance().close(dataOutputStream)
        end
    end
    

    def toString()
        return StringMaker.new().append("Registration Code: ").append(self.getRegistrationCode()).to_s
    end
    alias_method :to_s, :toString
    

    def setRegistrationCode(registrationCode)
        @registrationCode = registrationCode
    end
    

    def getRegistrationCode()
        return @registrationCode
    end
end

require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/FileStreamFactory"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/FileFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"

class RegistrationConfiguration
    SINGLETON = RegistrationConfiguration.new()
end

