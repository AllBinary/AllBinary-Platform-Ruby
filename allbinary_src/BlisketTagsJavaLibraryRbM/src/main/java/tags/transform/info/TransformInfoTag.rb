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
# package tags.transform.info

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/JspTagException"
require "tags/ModifyTag"

module ::Tags; module Transform; module Info

class TransformInfoTag < ::Tags::ModifyTag
    attr_accessor :logUtil, :name, :storeName, :objectFile, :anyType, :objectConfigFile, :objectConfig, :templateFile, :template, :dataFile, :data, :type

    def jfields_tags_transform_info_TransformInfoTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @storeName = nil unless instance_variable_defined?(:@storeName)
        @objectFile = nil unless instance_variable_defined?(:@objectFile)
        @anyType = nil unless instance_variable_defined?(:@anyType)
        @objectConfigFile = nil unless instance_variable_defined?(:@objectConfigFile)
        @objectConfig = nil unless instance_variable_defined?(:@objectConfig)
        @templateFile = nil unless instance_variable_defined?(:@templateFile)
        @template = nil unless instance_variable_defined?(:@template)
        @dataFile = nil unless instance_variable_defined?(:@dataFile)
        @data = nil unless instance_variable_defined?(:@data)
        @type = nil unless instance_variable_defined?(:@type)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_tags_transform_info_TransformInfoTag_0(*args)
        when 1 then jnew_tags_transform_info_TransformInfoTag_1(*args)
        else raise ArgumentError, "No constructor of TransformInfoTag takes #{args.length} arguments"
        end
    end
    

    def jnew_tags_transform_info_TransformInfoTag_0()
        TransformInfoTag.superclass.instance_method(:initialize).bind(self).call(::Taghelpers::Transform::Info::TransformInfoRequestHelperFactory.new())
        jfields_tags_transform_info_TransformInfoTag
    end
    

    def jnew_tags_transform_info_TransformInfoTag_1(tagHelperFactoryInterface)
        TransformInfoTag.superclass.instance_method(:initialize).bind(self).call(tagHelperFactoryInterface)
        jfields_tags_transform_info_TransformInfoTag
    end
    

    def setName(value)
        @name = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME, @name)
    end
    java_overload :setName, 1
    

    def setStoreName(value)
        @storeName = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, @storeName)
    end
    java_overload :setStoreName, 1
    

    def setObjectFile(value)
        @objectFile = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().OBJECTFILENAME, @objectFile)
    end
    java_overload :setObjectFile, 1
    

    def setObject(value)
        @anyType = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().OBJECT, @anyType)
    end
    java_overload :setObject, 1
    

    def setTemplateFile(value)
        @templateFile = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().TEMPLATEFILENAME, @templateFile)
    end
    java_overload :setTemplateFile, 1
    

    def setTemplate(value)
        @template = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().TEMPLATE, @template)
    end
    java_overload :setTemplate, 1
    

    def setDataFile(value)
        @dataFile = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().DATAFILENAME, @dataFile)
    end
    java_overload :setDataFile, 1
    

    def setData(value)
        @data = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().DATA, @data)
    end
    java_overload :setData, 1
    

    def setObjectConfigFile(value)
        @objectConfigFile = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().OBJECTCONFIGFILENAME, @objectConfigFile)
    end
    java_overload :setObjectConfigFile, 1
    

    def setObjectConfig(value)
        @objectConfig = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().OBJECTCONFIG, @objectConfig)
    end
    java_overload :setObjectConfig, 1
    

    def setType(value)
        @type = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Io::OutputTypeData.getInstance().NAME, @type)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF("TransformInfoTag type set: " + @type, self, "setType")
        end
    end
    java_overload :setType, 1
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getObjectFile()
        return @objectFile
    end
    java_overload :getObjectFile, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            return TransformInfoTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Admin; module Taghelpers; autoload :TagHelperFactoryInterface, "admin/taghelpers/TagHelperFactoryInterface" unless const_defined?(:TagHelperFactoryInterface, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :OutputTypeData, "org/allbinary/logic/io/OutputTypeData" unless const_defined?(:OutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Taghelpers; module Transform; module Info; autoload :TransformInfoRequestHelperFactory, "taghelpers/transform/info/TransformInfoRequestHelperFactory" unless const_defined?(:TransformInfoRequestHelperFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

