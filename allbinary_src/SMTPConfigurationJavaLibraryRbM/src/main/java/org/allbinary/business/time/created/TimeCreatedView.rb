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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class TimeCreatedView
    include DomNodeInterface
    attr_accessor :timeCreated

    def initialize_fields
        @timeCreated = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(timeCreated)
        initialize_fields
        self.setTimeCreated(timeCreated)
    end
    

    def constructor1(node)
        initialize_fields
        self.setTimeCreated(TimeCreated.new(DomNodeHelper.getTextNodeValue(node)))
    end
    

    # throws Exception
    def toXmlNode(document)
        return ModDomHelper.createTextNode(document, EntryData.getInstance().TIMECREATED, self.getTimeCreated().to_s)
    end
    

    def getTimeCreated()
        return @timeCreated
    end
    

    def setTimeCreated(timeCreated)
        @timeCreated = timeCreated
    end
end

autoload :EntryData, "org/allbinary/business/entry/EntryData"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :TimeCreated, "org/allbinary/business/time/created/TimeCreated"

