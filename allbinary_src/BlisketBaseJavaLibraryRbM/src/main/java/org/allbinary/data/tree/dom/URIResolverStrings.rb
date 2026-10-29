# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.data.tree.dom


class URIResolverStrings
    attr_accessor :IMPORT_URL, :ATTEMPT, :BASE, :NEW_PATH, :NOTE, :URL_GLOBAL, :REQUIRED_EXTENSION, :RESOLVE

    def initialize_fields
        @IMPORT_URL = "/{import url}"
        @ATTEMPT = "attempt to use xsl:import: href="
        @BASE = "\nBase= "
        @NEW_PATH = "\nNew path= "
        @NOTE = "\nNote: "
        @URL_GLOBAL = " is a urlglobal"
        @REQUIRED_EXTENSION = "\nRequired Extension: "
        @RESOLVE = "resolve"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return URIResolverStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class URIResolverStrings
    @@instance = URIResolverStrings.new()
end

