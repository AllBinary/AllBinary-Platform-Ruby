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
# package org.allbinary.midlet

require "java/lang/JavaOverload"
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Midlet

class MidletExitProcessor < ::Org::Allbinary::Canvas::Processor
    attr_accessor :midlet

    def jfields_org_allbinary_midlet_MidletExitProcessor
        @midlet = nil unless instance_variable_defined?(:@midlet)
    end
    

    def initialize(midlet)
        super()
        jfields_org_allbinary_midlet_MidletExitProcessor
        @midlet = midlet
    end
    

    # throws Exception
    def process()
    end
    java_overload :process, 0
end

module ::Javax; module Microedition; module Midlet; autoload :MIDlet, "javax/microedition/midlet/MIDlet" unless const_defined?(:MIDlet, false); end; end; end

end; end; end

