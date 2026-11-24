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
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfo"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoHttp < TransformInfo
    include TransformInfoHttpInterface
    attr_accessor :logUtil, :abContext

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttp
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @abContext = nil unless instance_variable_defined?(:@abContext)
    end

    def initialize(*args)
        case args.length
        when 3 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_3(*args)
        when 2 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_2(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_1(*args)
        else raise ArgumentError, "No constructor of TransformInfoHttp takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_3(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Java::Util::HashMap)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array)) && (java_overload_args[2] == true || java_overload_args[2] == false)
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_3_2(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Java::Util::HashMap)) && !(java_overload_args[2].is_a?(::Numeric) || java_overload_args[2] == true || java_overload_args[2] == false || java_overload_args[2].is_a?(::Array))
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_3_3(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_3_1(propertiesHashMap, pageContext, crud)
        TransformInfoHttp.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttp
        @abContext = ::Org::Allbinary::Business::Context::AbContext.new(propertiesHashMap, pageContext)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, "Constructor(HashMap, PageContext, boolean)")
        end
        self.override(propertiesHashMap)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_3_2(request, propertiesHashMap, pageContext)
        TransformInfoHttp.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttp
        @abContext = ::Org::Allbinary::Business::Context::AbContext.new(propertiesHashMap, pageContext)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, "Constructor(HttpServletRequest, HashMap, PageContext)")
        end
        self.set(::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(request).toHashMap())
        self.override(propertiesHashMap)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_3_3(databaseHashMap, propertiesHashMap, pageContext)
        TransformInfoHttp.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttp
        @abContext = ::Org::Allbinary::Business::Context::AbContext.new(propertiesHashMap, pageContext)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, "Constructor(HashMap, HashMap, PageContext)")
        end
        self.set(databaseHashMap)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_2(propertiesHashMap, pageContext)
        TransformInfoHttp.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttp
        @abContext = ::Org::Allbinary::Business::Context::AbContext.new(propertiesHashMap, pageContext)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + propertiesHashMap.to_s, self, "Constructor(HashMap, PageContext)")
        end
        self.set(propertiesHashMap)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoHttp_1(parentViewOfThisTransformInfoInterface)
        TransformInfoHttp.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoHttp
        @abContext = ::Org::Allbinary::Business::Context::AbContext.new(parentViewOfThisTransformInfoInterface.getPropertiesHashMap(), parentViewOfThisTransformInfoInterface.getPageContext())
    end
    

    # throws Exception
    def set(hashMap)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Properties HashMap: " + hashMap.to_s, self, "set()")
        end
        transformInfoData = TransformInfoData.getInstance()
        self.setName(hashMap.get(transformInfoData.NAME))
        self.setStoreName(hashMap.get(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME))
        self.setObjectFile(hashMap.get(transformInfoData.OBJECTFILENAME))
        self.setObject(hashMap.get(transformInfoData.OBJECT))
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        objectConfigString = hashMap.get(transformInfoData.OBJECTCONFIG)
        if stringValidationUtil.isValidRequired(objectConfigString, 10, ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXBLOB)
            self.setObjectConfig(objectConfigString)
        else
            self.setObjectConfig(::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::TransformInfoObjectConfig.new(self).to_s)
        end
        if !stringValidationUtil.isEmpty(hashMap.get(transformInfoData.OBJECTCONFIGFILENAME))
            self.setObjectConfigFile(hashMap.get(transformInfoData.OBJECTCONFIGFILENAME))
        end
        self.setTemplateFile(hashMap.get(transformInfoData.TEMPLATEFILENAME))
        self.setTemplate(hashMap.get(transformInfoData.TEMPLATE))
        self.setDataFile(hashMap.get(transformInfoData.DATAFILENAME))
        self.setData(hashMap.get(transformInfoData.DATA))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
            @logUtil.putF(self.log(), self, "set()")
        end
    end
    java_overload :set, 1
    

    def getWeblisketSession()
        return @abContext.getWeblisketSession()
    end
    java_overload :getWeblisketSession, 0
    

    def getPageContext()
        return @abContext.getPageContext()
    end
    java_overload :getPageContext, 0
    

    def getPropertiesHashMap()
        return @abContext.getPropertiesHashMap()
    end
    java_overload :getPropertiesHashMap, 0
    

    # throws Exception
    def getTemplateFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH, self.getTemplateFile())
    end
    java_overload :getTemplateFilePath, 0
    

    # throws Exception
    def getObjectConfigFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH, self.getObjectConfigFile())
    end
    java_overload :getObjectConfigFilePath, 0
    

    # throws Exception
    def getDataFilePath()
        return ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH, self.getDataFile())
    end
    java_overload :getDataFilePath, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; autoload :AbContext, "org/allbinary/business/context/AbContext" unless const_defined?(:AbContext, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlData, "org/allbinary/logic/communication/sql/AbSqlData" unless const_defined?(:AbSqlData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfig, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig" unless const_defined?(:TransformInfoObjectConfig, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false)

end; end; end; end; end; end

