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


module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Head; module Meta

class HtmlMetaAttributeData
    attr_accessor :id, :name

    def jfields_org_allbinary_logic_visual_dhtml_html_head_meta_HtmlMetaAttributeData
        @id = nil unless instance_variable_defined?(:@id)
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(id, value)
        jfields_org_allbinary_logic_visual_dhtml_html_head_meta_HtmlMetaAttributeData
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

end; end; end; end; end; end; end; end

