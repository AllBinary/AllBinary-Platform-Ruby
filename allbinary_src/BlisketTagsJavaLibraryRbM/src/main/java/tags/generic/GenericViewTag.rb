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
# package tags.generic

require "java/lang/JavaOverload"
require "tags/TransformTag"

module ::Tags; module Generic

class GenericViewTag < ::Tags::TransformTag
    attr_accessor :logUtil, :output, :file

    def jfields_tags_generic_GenericViewTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @output = nil unless instance_variable_defined?(:@output)
        @file = nil unless instance_variable_defined?(:@file)
    end
    

    def initialize()
        super()
        jfields_tags_generic_GenericViewTag
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def setOutput(value)
        @output = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().NAME, @output)
    end
    java_overload :setOutput, 1
    

    def setFile(value)
        @file = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().FILE, @file)
    end
    java_overload :setFile, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData" unless const_defined?(:InputOutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

