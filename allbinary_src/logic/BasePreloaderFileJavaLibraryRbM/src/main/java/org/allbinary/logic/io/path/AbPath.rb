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
# package org.allbinary.logic.io.path


class AbPath
    attr_accessor :commonSeps, :abPathData, :abPathUtil, :EMPTY_STRING, :schema, :path, :nameP, :hasSchemaP, :numberOfSeps

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
        @abPathData = AbPathData.getInstance()
        @abPathUtil = PathUtil.getInstance()
        @EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        @schema = @EMPTY_STRING
        @path = @EMPTY_STRING
        @nameP = @EMPTY_STRING
        @hasSchemaP = false
        @numberOfSeps = 0
    end
    

    def self.createAbPath()
        begin
            _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
            return AbPath.new(_EMPTY_STRING, _EMPTY_STRING)
        rescue StandardError => ex
            raise RuntimeError.new()
        end
    end
    

    def initialize(aPath, name)
        initialize_fields
        stringValidationUtil = StringValidationUtil.getInstance()
        if !stringValidationUtil.isEmpty(aPath)
            @schema = self.getSchema(aPath)
            @nameP = name
            @path = @abPathUtil.adjustEnd(@abPathUtil.adjust(self.getPathFromPath(aPath)))
        else
            self.init()
            if !stringValidationUtil.isEmpty(name)
                @nameP = name
            end
        end
    end
    

    def init()
        @schema = @EMPTY_STRING
        self.setPath(@abPathData.SEPARATOR)
        @nameP = @EMPTY_STRING
    end
    

    def getSchema(aPath)
        beginIndex = (aPath.index(@commonSeps.COLON) || -1)
        if beginIndex >= 0
            @hasSchemaP = true
            return aPath[0...beginIndex]
        end
        @hasSchemaP = false
        return @EMPTY_STRING
    end
    

    def hasSchema()
        return @hasSchemaP
    end
    

    # throws Exception
    def getPathFromPath(aPath)
        filePathData = FilePathData.getInstance()
        tempPath = aPath
        if !self.hasSchema()
            tempPath = @abPathUtil.adjustStart(tempPath)
        else
            beginIndex = (tempPath.index(@commonSeps.COLON) || -1)
            if beginIndex >= 0
                beginIndex += 1
                while tempPath[beginIndex] == @abPathData.SEPARATORCHAR || tempPath[beginIndex] == filePathData.SEPARATORCHAR
                    beginIndex += 1
                    @numberOfSeps += 1
                    if @numberOfSeps > 2
                        raise StandardError.new("Should Not Have More Than Two Seps")
                    end
                end
                tempPath = tempPath[beginIndex...tempPath.length]
            end
        end
        return tempPath
    end
    

    def setName(name)
        @nameP = name
    end
    

    def getName()
        return @nameP
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        if self.hasSchema()
            stringBuffer.append(@schema)
            stringBuffer.append(AbPath::NETWORK_SEP)
        end
        stringBuffer.append(self.getPath())
        stringBuffer.append(@nameP)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def toFileSystemString()
        if self.hasSchema()
            filePathData = FilePathData.getInstance()
            stringBuffer = StringMaker.new()
            stringBuffer.append(@schema)
            stringBuffer.append(@commonSeps.COLON)
            stringBuffer.append(filePathData.PATH_START)
            stringBuffer.append(FilePathUtil.adjust(self.getPath()))
            stringBuffer.append(@nameP)
            return stringBuffer.to_s
        else
            return (FilePathUtil.adjust(self.getPath())).to_s + @nameP
        end
    end
    

    def getPath()
        return @path
    end
    

    def setPath(path)
        @path = path
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NETWORK_SEP, ":/")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbPath"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NETWORK_SEP].include?(name)
        end
        super
    end
end

autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData"
autoload :FilePathUtil, "org/allbinary/logic/io/file/FilePathUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :PathUtil, "org/allbinary/logic/io/path/PathUtil"

begin
    AbPath.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

