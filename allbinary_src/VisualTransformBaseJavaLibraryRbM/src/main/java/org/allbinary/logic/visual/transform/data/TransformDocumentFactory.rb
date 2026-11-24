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


module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage

class TransformDocumentFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance()
        return TransformDocument.new()
    end
end

autoload :TransformDocument, "org/allbinary/logic/visual/transform/data/TransformDocument" unless const_defined?(:TransformDocument, false)
autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false)

end; end; end; end; end; end

