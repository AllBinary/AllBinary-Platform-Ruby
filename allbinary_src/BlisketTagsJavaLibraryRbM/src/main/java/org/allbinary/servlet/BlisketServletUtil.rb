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

module ::Org; module Allbinary; module Servlet

class BlisketServletUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def init(request)
        urlGlobals = ::Org::Allbinary::Globals::AppUrlGlobals.new()
        urlGlobals.setWebappPath(request.getServletContext().getRealPath(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR))
        ::Org::Allbinary::Globals::URLGLOBALS.init(urlGlobals)
        ::Org::Allbinary::Logic::System::Loader::WebappClassLoaderInfo.setLoader(self.class.getClassLoader())
    end

    def self.instance()
        BlisketServletUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BlisketServletUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BlisketServletUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BlisketServletUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Globals; autoload :AppUrlGlobals, "org/allbinary/globals/AppUrlGlobals" unless const_defined?(:AppUrlGlobals, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :WebappClassLoaderInfo, "org/allbinary/logic/system/loader/WebappClassLoaderInfo" unless const_defined?(:WebappClassLoaderInfo, false); end; end; end; end; end

begin
    BlisketServletUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

