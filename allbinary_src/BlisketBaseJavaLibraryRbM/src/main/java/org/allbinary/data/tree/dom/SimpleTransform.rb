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
# package org.allbinary.data.tree.dom

# require "java/io/StringBufferInputStream"
# require "javax/xml/transform/stream/StreamSource"

class SimpleTransform
    attr_accessor :xsltFilePath, :dataFilePath

    def initialize_fields
        @xsltFilePath = nil
        @dataFilePath = nil
    end
    

    def initialize(xsltFilePath, dataFilePath)
        initialize_fields
        @xsltFilePath = xsltFilePath
        @dataFilePath = dataFilePath
    end
    

    # throws Exception
    def transform()
        inputStream = AbFileLocalInputStream.new(AbFile.createAbFileFromAbPath(@xsltFilePath))
        document = DomDocumentHelper.create(AbFileLocalInputStream.new(AbFile.createAbFileFromAbPath(@dataFilePath)))
        result = XslHelper.getInstance().translate(StreamSource.new(inputStream), StreamSource.new(StringBufferInputStream.new(XmlDocumentHelper.toString(document))))
        return result
    end
end

require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/io/AbFileLocalInputStream"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPath"
require "org/w3c/dom/Document"
require "org/allbinary/data/tree/dom/XslHelper"

