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
# package org.allbinary.logic.visual.transform.data

# require "javax/servlet/jsp/PageContext"

class TransformStoreDocumentFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(pageContext, weblisketSession)
        return TransformStoreDocument.new(pageContext, weblisketSession)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(searchRequest)
        return TransformStoreDocument.new(searchRequest)
    end
end

require "org/allbinary/logic/communication/http/request/session/WeblisketSession"
require "org/allbinary/logic/control/search/SearchRequest"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
require "org/allbinary/logic/visual/transform/data/TransformStoreDocument"

