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
# package org.allbinary.logic.java.anyType.clazz.loader


class ClassLoaderUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.getName(anyType)
        classLoader = anyType.class.getClassLoader()
        if classLoader != nil
            return "ClassLoader: " + classLoader.class.name
        end
        raise StandardError.new("Unable to get ClassLoader")
    end
end

