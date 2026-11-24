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

class TransformStoreDocumentFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance_j2(pageContext, weblisketSession)
        return TransformStoreDocument.new(pageContext, weblisketSession)
    end
    

    # throws Exception
    def self.getInstance_j1(searchRequest)
        return TransformStoreDocument.new(searchRequest)
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchRequest, "org/allbinary/logic/control/search/SearchRequest" unless const_defined?(:SearchRequest, false); end; end; end; end; end
autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false)
autoload :TransformStoreDocument, "org/allbinary/logic/visual/transform/data/TransformStoreDocument" unless const_defined?(:TransformStoreDocument, false)

end; end; end; end; end; end

