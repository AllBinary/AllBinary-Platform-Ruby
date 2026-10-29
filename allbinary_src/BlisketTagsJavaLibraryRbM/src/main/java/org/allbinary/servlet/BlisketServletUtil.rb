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
# package org.allbinary.servlet

# require "javax/servlet/http/HttpServletRequest"

class BlisketServletUtil
    

    def self.getInstance()
        return BlisketServletUtil.instance
    end
    

    def init(request)
        urlGlobals = AppUrlGlobals.new()
        urlGlobals.setWebappPath(request.getServletContext().getRealPath(AbPathData.getInstance().SEPARATOR))
        URLGLOBALS.init(urlGlobals)
        WebappClassLoaderInfo.setLoader(self.class.getClassLoader())
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/globals/AppUrlGlobals"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/system/loader/WebappClassLoaderInfo"

class BlisketServletUtil
    @@instance = BlisketServletUtil.new()
end

