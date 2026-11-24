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
# package org.allbinary.osgi

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/visitor/VisitorInterface"

module ::Org; module Allbinary; module Osgi

module OSGIServiceVisitorInterface
    include ::Org::Allbinary::Logic::Util::Visitor::VisitorInterface
    

    def visit(osgiServiceInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :visit, 1
end

autoload :OSGIServiceInterface, "org/allbinary/osgi/OSGIServiceInterface" unless const_defined?(:OSGIServiceInterface, false)

end; end; end

