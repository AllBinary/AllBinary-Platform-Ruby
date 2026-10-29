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

# require "java/lang/reflect/Constructor"
# require "java/lang/reflect/Method"

class NativeLibraryHelperWrapper
    attr_accessor :libraryName, :loader, :anyType

    def initialize_fields
        @libraryName = nil
        @loader = nil
        @anyType = nil
    end
    

    def initialize(libraryName)
        initialize_fields
        self.setLibraryName(libraryName)
    end
    

    # throws Exception
    def load()
        params = Array.new(1, nil)
        params[0] = self.getLibraryName()
        classes = Array.new(1, nil)
        classes[0] = self.getLibraryName().class
        @loader = NativeLibraryClassLoader.new(self.class.getClassLoader())
        myClass = @loader.loadClass("dynamic.NativeLibraryHelper")
        constructor = myClass.getConstructor(classes)
        @anyType = constructor.newInstance(params)
        commonStrings = CommonStrings.getInstance()
        method = @anyType.class.getMethod(commonStrings.LOAD, nil)
        method.invoke(@anyType, nil)
    end
    

    def unload()
        @anyType = nil
        @loader = nil
        GC.start
        GC.start
    end
    

    def toString()
        return "Library: " + (self.getLibraryName()).to_s
    end
    alias_method :to_s, :toString
    

    def getLibraryName()
        return @libraryName
    end
    

    def setLibraryName(libraryName)
        @libraryName = libraryName
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/loader/NativeLibraryClassLoader"
require "java/lang/System"

