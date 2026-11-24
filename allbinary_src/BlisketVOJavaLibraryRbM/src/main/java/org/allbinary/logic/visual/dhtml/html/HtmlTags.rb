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

class HtmlTags
    attr_accessor :htmlTagVector

    def jfields_org_allbinary_logic_visual_dhtml_html_HtmlTags
        @htmlTagVector = nil unless instance_variable_defined?(:@htmlTagVector)
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_dhtml_html_HtmlTags
        @htmlTagVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def get(index)
        return @htmlTagVector.get(index)
    end
    

    def add(htmlTag)
        @htmlTagVector.add(htmlTag)
    end
    

    def size()
        return @htmlTagVector.size()
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :HtmlTag, "org/allbinary/logic/visual/dhtml/html/HtmlTag" unless const_defined?(:HtmlTag, false)

end; end; end; end; end; end

