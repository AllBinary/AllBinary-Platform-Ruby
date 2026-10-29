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
# package org.allbinary.business.time.modified

require "org/allbinary/data/tree/dom/DomNodeInterface"

class TimeLastModifiedView
    include DomNodeInterface
    attr_accessor :timeLastModified

    def initialize_fields
        @timeLastModified = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(timeLastModified)
        initialize_fields
        self.setTimeLastModified(timeLastModified)
    end
    

    def constructor1(node)
        initialize_fields
        self.setTimeLastModified(TimeLastModified.new(DomNodeHelper.getTextNodeValue(node)))
    end
    

    # throws Exception
    def toXmlNode(document)
        return ModDomHelper.createTextNode(document, EntryData.getInstance().TIMECREATED, self.getTimeLastModified().to_s)
    end
    

    def getTimeLastModified()
        return @timeLastModified
    end
    

    def setTimeLastModified(timeLastModified)
        @timeLastModified = timeLastModified
    end
end

require "org/allbinary/business/entry/EntryData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/time/modified/TimeLastModified"

