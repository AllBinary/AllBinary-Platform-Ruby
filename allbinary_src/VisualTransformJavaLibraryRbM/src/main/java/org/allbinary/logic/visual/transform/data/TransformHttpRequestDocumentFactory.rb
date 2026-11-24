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

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage

class TransformHttpRequestDocumentFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(pageContext, weblisketSession)
        return TransformHttpRequestDocument.new(pageContext, weblisketSession)
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false)
autoload :TransformHttpRequestDocument, "org/allbinary/logic/visual/transform/data/TransformHttpRequestDocument" unless const_defined?(:TransformHttpRequestDocument, false)

end; end; end; end; end; end

