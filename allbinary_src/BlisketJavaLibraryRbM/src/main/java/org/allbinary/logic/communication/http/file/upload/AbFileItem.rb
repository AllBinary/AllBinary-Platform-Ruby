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
# package org.allbinary.logic.communication.http.file.upload

# require "java/io/File"
# require "java/io/IOException"
# require "java/io/InputStream"
# require "java/io/OutputStream"
# require "java/io/UnsupportedEncodingException"
require "org/apache/commons/fileupload/FileItem"

class AbFileItem
    include FileItem
    attr_accessor :logUtil, :commonStrings, :name, :fieldName, :byteArray

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @name = nil
        @fieldName = nil
        @byteArray = nil
    end
    

    def initialize(name, fieldName, byteArray)
        initialize_fields
        @name = name
        @fieldName = fieldName
        @byteArray = byteArray
    end
    

    # throws IOException
    def getInputStream()
        raise IOError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def getContentType()
        return nil
    end
    

    def getName()
        return @name
    end
    

    def isInMemory()
        return true
    end
    

    def getSize()
        return @byteArray.length
    end
    

    def get()
        return @byteArray
    end
    

    # throws UnsupportedEncodingException
    def getString(encoding)
        return @byteArray, encoding.pack("c*").force_encoding("UTF-8")
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getString()
        begin
            return FileItemUtil.getInstance().getString(@byteArray)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getString", e)
            end
            return StringUtil.getInstance().EMPTY_STRING
        end
    end
    

    # throws Exception
    def write(file)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def write(file)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def delete()
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, "delete()")
    end
    

    def getFieldName()
        return @fieldName
    end
    

    def setFieldName(name)
        @fieldName = name
    end
    

    def isFormField()
        if StringValidationUtil.getInstance().isEmpty(@fieldName)
            return false
        else
            return true
        end
    end
    

    def setFormField(state)
    end
    

    # throws IOException
    def getOutputStream()
        raise IOError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def getHeaders()
        raise RuntimeError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def setHeaders(fih)
        raise RuntimeError.new(@commonStrings.NOT_IMPLEMENTED)
    end
end

require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonStrings"
require "org/apache/commons/fileupload/FileItemHeaders"
require "org/apache/commons/fileupload/FileItemUtil"

