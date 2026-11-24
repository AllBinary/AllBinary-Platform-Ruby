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
# package tags

require "java/lang/JavaOverload"
require "tags/PropertiesTag"

module ::Tags

class HelperTag < PropertiesTag
    attr_accessor :logUtil, :tagHelperFactoryInterface, :anyType

    def jfields_tags_HelperTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tagHelperFactoryInterface = nil unless instance_variable_defined?(:@tagHelperFactoryInterface)
        @anyType = nil unless instance_variable_defined?(:@anyType)
    end
    

    def initialize(tagHelperFactoryInterface)
        super()
        jfields_tags_HelperTag
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
        @tagHelperFactoryInterface = tagHelperFactoryInterface
    end
    

    # throws Exception
    def setHelper()
        if @anyType == nil
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                @logUtil.putF("Creating TagHelper with: \n" + self.getPropertiesHashMap().to_s, self, "doStartTag")
            end
            @anyType = @tagHelperFactoryInterface.getInstance(self.getPropertiesHashMap(), @pageContext)
        end
    end
    java_overload :setHelper, 0
    

    def getHelper()
        return @anyType
    end
    java_overload :getHelper, 0
    

    def doEndTag()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF("Tag Ended", self, "doEndTag")
        end
        @anyType = nil
        return HelperTag.superclass.java_super_method(:doEndTag, 0).bind(self).call()
    end
    java_overload :doEndTag, 0
end

module ::Admin; module Taghelpers; autoload :TagHelperFactoryInterface, "admin/taghelpers/TagHelperFactoryInterface" unless const_defined?(:TagHelperFactoryInterface, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end

