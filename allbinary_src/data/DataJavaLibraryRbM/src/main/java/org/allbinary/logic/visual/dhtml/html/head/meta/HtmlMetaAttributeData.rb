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
# package org.allbinary.logic.visual.dhtml.html.head.meta


class HtmlMetaAttributeData
    attr_accessor :id, :name

    def initialize_fields
        @id = nil
        @name = nil
    end
    

    def initialize(id, value)
        initialize_fields
        @name = value
        @id = id
    end
    

    def equals(htmlMetaAttributeData)
        if htmlMetaAttributeData.id == @id
            return true
        else
            return false
        end
    end
    alias_method :==, :equals
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString
end

