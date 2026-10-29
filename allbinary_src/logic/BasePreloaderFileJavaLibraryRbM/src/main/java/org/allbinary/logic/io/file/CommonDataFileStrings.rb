# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic.io.file


class CommonDataFileStrings
    attr_accessor :XML, :_XML, :JSON, :_JSON, :XSL, :_XSL, :JAVA, :_JAVA, :KT, :_KT, :TS, :_TS, :JS, :_JS, :CPP, :_CPP, :H, :_H, :PY, :_PY, :GO, :_GO, :CS, :_CS, :ADB, :_ADB, :ADS, :_ADS, :ADA, :_ADA, :RUST, :_RUST, :C, :_C, :CSHARP, :_CSHARP, :ERL, :_ERL, :HS, :_HS, :HX, :_HX, :LUA, :_LUA, :PAS, :_PAS, :ML, :_ML, :PL, :_PL, :RB, :_RB, :ZIG, :_ZIG, :UNCRYPTED_EXTENSION, :ENCRYPTED_EXTENSION

    def initialize_fields
        @XML = "xml"
        @_XML = ".xml"
        @JSON = "json"
        @_JSON = ".json"
        @XSL = "xsl"
        @_XSL = ".xsl"
        @JAVA = "java"
        @_JAVA = ".java"
        @KT = "kt"
        @_KT = ".kt"
        @TS = "ts"
        @_TS = ".ts"
        @JS = "js"
        @_JS = ".js"
        @CPP = "cpp"
        @_CPP = ".cpp"
        @H = "h"
        @_H = ".h"
        @PY = "py"
        @_PY = ".py"
        @GO = "go"
        @_GO = ".go"
        @CS = "cs"
        @_CS = ".cs"
        @ADB = "adb"
        @_ADB = ".adb"
        @ADS = "ads"
        @_ADS = ".ads"
        @ADA = "ada"
        @_ADA = ".ada"
        @RUST = "rs"
        @_RUST = ".rs"
        @C = "c"
        @_C = ".c"
        @CSHARP = "cs"
        @_CSHARP = ".cs"
        @ERL = "erl"
        @_ERL = ".erl"
        @HS = "hs"
        @_HS = ".hs"
        @HX = "hx"
        @_HX = ".hx"
        @LUA = "lua"
        @_LUA = ".lua"
        @PAS = "pas"
        @_PAS = ".pas"
        @ML = "ml"
        @_ML = ".ml"
        @PL = "pl"
        @_PL = ".pl"
        @RB = "rb"
        @_RB = ".rb"
        @ZIG = "zig"
        @_ZIG = ".zig"
        @UNCRYPTED_EXTENSION = @XML
        @ENCRYPTED_EXTENSION = "abd"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CommonDataFileStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class CommonDataFileStrings
    @@instance = CommonDataFileStrings.new()
end

