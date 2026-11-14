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
# package org.allbinary.input.automation


class ImageOutputData
    

    def initialize()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SAVE_PATH, StringMaker.new().append(System.getProperty("user.dir")).appendchar(FilePathData.getInstance().SEPARATORCHAR).append("saves").appendchar(FilePathData.getInstance().SEPARATORCHAR).to_s)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageOutputData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SAVE_PATH].include?(name)
        end
        super
    end
end

autoload :FilePathData, "org/allbinary/logic/io/file/FilePathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
require "java/lang/System"

begin
    ImageOutputData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

