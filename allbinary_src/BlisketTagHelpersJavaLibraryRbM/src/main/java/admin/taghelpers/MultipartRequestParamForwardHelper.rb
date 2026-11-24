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
# package admin.taghelpers

# require "javax/servlet/jsp/PageContext"

module ::Admin; module Taghelpers

class MultipartRequestParamForwardHelper
    attr_accessor :logUtil, :pageContext, :requestMapInterface, :page, :command, :paramVector

    def jfields_admin_taghelpers_MultipartRequestParamForwardHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
        @requestMapInterface = nil unless instance_variable_defined?(:@requestMapInterface)
        @page = nil unless instance_variable_defined?(:@page)
        @command = nil unless instance_variable_defined?(:@command)
        @paramVector = nil unless instance_variable_defined?(:@paramVector)
    end
    

    def initialize(parentHelperTag, page, command, paramVector, pageContext)
        jfields_admin_taghelpers_MultipartRequestParamForwardHelper
        @pageContext = pageContext
        @page = page
        @command = command
        @paramVector = paramVector
        @requestMapInterface = InventoryItemViewParentTagHelper.getInstance().getRequestMapInterface(parentHelperTag)
    end
    

    # throws Exception
    def forward()
        begin
            if self.shouldForward()
                params = self.getParams()
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append(@page)
                stringBuffer.append(params)
                @pageContext.forward(stringBuffer.to_s)
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, "forward()", e)
            end
        end
    end
    

    def getParams()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        _AMP = commonSeps.AMPERSAND
        _QUESTION = commonSeps.QUESTION
        _EQUALS = commonSeps.EQUALS
        hashMap = @requestMapInterface.getRequestHashMap()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = @paramVector.size()
        (0...size).each do |index|
            key = @paramVector.get(index)
            value = hashMap.get(key)
            if index != 0
                stringBuffer.append(_AMP)
            else
                stringBuffer.append(_QUESTION)
            end
            stringBuffer.append(key)
            stringBuffer.append(_EQUALS)
            stringBuffer.append(value)
        end
        return stringBuffer.to_s
    end
    

    def shouldForward()
        hashMap = @requestMapInterface.getRequestHashMap()
        requestCommand = hashMap.get(::Org::Allbinary::Globals::GLOBALS2::ADMINCOMMAND)
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@command) || (!::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(requestCommand) && (@command <=> requestCommand) == 0)
            return true
        end
        return false
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestMapInterface, "org/allbinary/logic/communication/http/request/RequestMapInterface" unless const_defined?(:RequestMapInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Tags; autoload :HelperTag, "tags/HelperTag" unless const_defined?(:HelperTag, false); end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :InventoryItemViewParentTagHelper, "admin/taghelpers/InventoryItemViewParentTagHelper" unless const_defined?(:InventoryItemViewParentTagHelper, false)

end; end

