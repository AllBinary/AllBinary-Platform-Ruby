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
# package org.allbinary.business.time.created

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Business; module TimePackage; module Created

class TimeCreatedView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :timeCreated

    def jfields_org_allbinary_business_time_created_TimeCreatedView
        @timeCreated = nil unless instance_variable_defined?(:@timeCreated)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_time_created_TimeCreatedView_1(*args)
        else raise ArgumentError, "No constructor of TimeCreatedView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_time_created_TimeCreatedView_1(*java_overload_args)
        return jnew_org_allbinary_business_time_created_TimeCreatedView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(TimeCreated))
        return jnew_org_allbinary_business_time_created_TimeCreatedView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_time_created_TimeCreatedView_1_1(timeCreated)
        jfields_org_allbinary_business_time_created_TimeCreatedView
        self.setTimeCreated(timeCreated)
    end
    

    def jnew_org_allbinary_business_time_created_TimeCreatedView_1_2(node)
        jfields_org_allbinary_business_time_created_TimeCreatedView
        self.setTimeCreated(TimeCreated.new(::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(node)))
    end
    

    # throws Exception
    def toXmlNode(document)
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createTextNode(document, ::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED, self.getTimeCreated().to_s)
    end
    java_overload :toXmlNode, 1
    

    def getTimeCreated()
        return @timeCreated
    end
    java_overload :getTimeCreated, 0
    

    def setTimeCreated(timeCreated)
        @timeCreated = timeCreated
    end
    java_overload :setTimeCreated, 1
end

module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :TimeCreated, "org/allbinary/business/time/created/TimeCreated" unless const_defined?(:TimeCreated, false)

end; end; end; end; end

