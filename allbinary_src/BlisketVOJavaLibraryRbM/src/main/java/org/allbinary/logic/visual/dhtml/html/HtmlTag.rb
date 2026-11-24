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
# package org.allbinary.logic.visual.dhtml.html


module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html

class HtmlTag
    attr_accessor :otherAttributes

    def jfields_org_allbinary_logic_visual_dhtml_html_HtmlTag
        @otherAttributes = nil unless instance_variable_defined?(:@otherAttributes)
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_dhtml_html_HtmlTag
        @otherAttributes = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
    end
    

    def addAttribute(key, value)
        @otherAttributes.put(key, value)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end

end; end; end; end; end; end

