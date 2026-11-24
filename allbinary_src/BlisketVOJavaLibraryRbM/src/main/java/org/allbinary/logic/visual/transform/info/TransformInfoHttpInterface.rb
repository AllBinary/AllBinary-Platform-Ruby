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
# package org.allbinary.logic.visual.transform.info

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

module TransformInfoHttpInterface
    include TransformInfoInterface
    

    def getWeblisketSession()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getWeblisketSession, 0
    

    def getPageContext()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPageContext, 0
    

    def getPropertiesHashMap()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPropertiesHashMap, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end

