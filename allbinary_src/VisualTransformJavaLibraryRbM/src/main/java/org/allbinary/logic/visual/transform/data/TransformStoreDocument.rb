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
# package org.allbinary.logic.visual.transform.data

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/data/TransformHttpRequestDocument"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage

class TransformStoreDocument < TransformHttpRequestDocument
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_transform_data_TransformStoreDocument
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_logic_visual_transform_data_TransformStoreDocument_2(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_data_TransformStoreDocument_1(*args)
        else raise ArgumentError, "No constructor of TransformStoreDocument takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_data_TransformStoreDocument_2(pageContext, weblisketSession)
        TransformStoreDocument.superclass.instance_method(:initialize).bind(self).call(pageContext, weblisketSession)
        jfields_org_allbinary_logic_visual_transform_data_TransformStoreDocument
        begin
            storeName = weblisketSession.getStoreName()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Using Session StoreName: " + storeName, self, @commonStrings.CONSTRUCTOR)
            end
            self.getBaseNode().appendChild(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontViewFactory.getInstance(storeName).toXmlNode(self.getDoc()))
            self.getBaseNode().appendChild(::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(pageContext.getRequest()).toXmlNode(self.getDoc()))
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
    

    def jnew_org_allbinary_logic_visual_transform_data_TransformStoreDocument_1(searchRequest)
        TransformStoreDocument.superclass.instance_method(:initialize).bind(self).call(searchRequest)
        jfields_org_allbinary_logic_visual_transform_data_TransformStoreDocument
        begin
            self.getBaseNode().appendChild(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontViewFactory.getInstance(searchRequest.getStoreFront().getName()).toXmlNode(self.getDoc()))
            self.getBaseNode().appendChild(searchRequest.getParams().getParamsNode(self.getDoc()))
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            end
            raise e
        end
    end
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontViewFactory, "org/allbinary/business/context/modules/storefront/StoreFrontViewFactory" unless const_defined?(:StoreFrontViewFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

