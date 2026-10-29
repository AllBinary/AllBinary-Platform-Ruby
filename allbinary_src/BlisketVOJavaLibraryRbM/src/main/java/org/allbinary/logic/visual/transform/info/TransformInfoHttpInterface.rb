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

# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

module TransformInfoHttpInterface
    include TransformInfoInterface
    

    def getWeblisketSession()
        raise NotImplementedError
    end
    

    def getPageContext()
        raise NotImplementedError
    end
    

    def getPropertiesHashMap()
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface"

