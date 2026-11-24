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
# package org.allbinary.input.motion.button

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Input; module Motion; module Button

class BaseTouchInput
    attr_accessor :commonStrings, :basicArrayListUtil

    def jfields_org_allbinary_input_motion_button_BaseTouchInput
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_button_BaseTouchInput
    end
    

    def getList()
        return @basicArrayListUtil.getImmutableInstance()
    end
    

    def toString()
        return self.class.java_name
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

end; end; end; end; end

