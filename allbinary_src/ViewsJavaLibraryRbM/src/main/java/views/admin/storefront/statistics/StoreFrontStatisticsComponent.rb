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
# package views.admin.storefront.statistics

require "java/lang/JavaOverload"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Admin; module Storefront; module Statistics

class StoreFrontStatisticsComponent < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    attr_accessor :logUtil, :newStoreFrontInterface, :domNodeInterface

    def jfields_views_admin_storefront_statistics_StoreFrontStatisticsComponent
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @newStoreFrontInterface = nil unless instance_variable_defined?(:@newStoreFrontInterface)
        @domNodeInterface = nil unless instance_variable_defined?(:@domNodeInterface)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_storefront_statistics_StoreFrontStatisticsComponent
        @newStoreFrontInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontFactory.getInstance(transformInfoInterface.getStoreName())
        @domNodeInterface = ::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::RealTimeStoreFrontStatisticsView.new(::Org::Allbinary::Business::Context::Modules::Storefront::Statistics::RealTimeStoreFrontStatistics.new(@newStoreFrontInterface), self.getWeblisketSession().getRole())
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(@domNodeInterface)
    end
    java_overload :addDomNodeInterfaces, 0
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return StoreFrontStatisticsComponent.superclass.java_super_method(:view, 0).bind(self).call()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory" unless const_defined?(:StoreFrontFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; autoload :RealTimeStoreFrontStatistics, "org/allbinary/business/context/modules/storefront/statistics/RealTimeStoreFrontStatistics" unless const_defined?(:RealTimeStoreFrontStatistics, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; module Statistics; autoload :RealTimeStoreFrontStatisticsView, "org/allbinary/business/context/modules/storefront/statistics/RealTimeStoreFrontStatisticsView" unless const_defined?(:RealTimeStoreFrontStatisticsView, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeInterface, "org/allbinary/data/tree/dom/DomNodeInterface" unless const_defined?(:DomNodeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end

