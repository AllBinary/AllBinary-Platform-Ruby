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
# package org.allbinary.logic.visual.transform.info

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttp"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoHttpContext < TransformInfoHttp
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttpContext
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 3 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttpContext_3(*args)
        when 2 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttpContext_2(*args)
        else raise ArgumentError, "No constructor of TransformInfoHttpContext takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttpContext_3(databaseHashMap, propertiesHashMap, pageContext)
        TransformInfoHttpContext.superclass.instance_method(:initialize).bind(self).call(databaseHashMap, propertiesHashMap, pageContext)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttpContext
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Database HashMap: ")
            stringBuffer.append(databaseHashMap.to_s)
            stringBuffer.append("\nProperties HashMap: ")
            stringBuffer.append(propertiesHashMap.to_s)
            @logUtil.putF(stringBuffer.to_s, self, @commonStrings.CONSTRUCTOR)
        end
        self.setStoreName(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttpContext_2(propertiesHashMap, pageContext)
        TransformInfoHttpContext.superclass.instance_method(:initialize).bind(self).call(propertiesHashMap, pageContext)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttpContext
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, @commonStrings.CONSTRUCTOR)
        end
        self.setStoreName(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    

    # throws Exception
    def getPath()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().INSTALLPATH)
        stringBuffer.append(self.getStoreName())
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        return stringBuffer.to_s
    end
    java_overload :getPath, 0
    

    # throws Exception
    def getTemplateFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.getPath(), self.getTemplateFile())
    end
    java_overload :getTemplateFilePath, 0
    

    # throws Exception
    def getObjectConfigFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.getPath(), self.getObjectConfigFile())
    end
    java_overload :getObjectConfigFilePath, 0
    

    # throws Exception
    def getDataFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(self.getPath(), self.getDataFile())
    end
    java_overload :getDataFilePath, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

