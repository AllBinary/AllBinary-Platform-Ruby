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

module ::Org; module Allbinary; module Logic; module System; module Loader

class NativeLibraryHelperWrapper
    attr_accessor :libraryName, :loader, :anyType

    def jfields_org_allbinary_logic_system_loader_NativeLibraryHelperWrapper
        @libraryName = nil unless instance_variable_defined?(:@libraryName)
        @loader = nil unless instance_variable_defined?(:@loader)
        @anyType = nil unless instance_variable_defined?(:@anyType)
    end
    

    def initialize(libraryName)
        jfields_org_allbinary_logic_system_loader_NativeLibraryHelperWrapper
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
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :NativeLibraryClassLoader, "org/allbinary/logic/system/loader/NativeLibraryClassLoader" unless const_defined?(:NativeLibraryClassLoader, false)
require "java/lang/System"
require "java/lang/ClassLoader"

end; end; end; end; end

