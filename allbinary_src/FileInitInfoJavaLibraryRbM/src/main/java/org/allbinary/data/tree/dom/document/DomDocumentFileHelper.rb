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
# package org.allbinary.data.tree.dom.document

# require "javax/xml/transform/Transformer"
# require "javax/xml/transform/TransformerFactory"
# require "javax/xml/transform/dom/DOMSource"
# require "javax/xml/transform/stream/StreamResult"

class DomDocumentFileHelper
    

    def initialize()
    end
    

    # throws Exception
    def self.createDocument(xmlFile)
        begin
            return DomDocumentHelper.create(AbFileInputStream.new(xmlFile))
        rescue StandardError => e
            raise e
        end
    end
    

    # throws Exception
    def self.save(file, document)
        dataOutputStream = nil
        begin
            copyTransformerFactory = TransformerFactory.newInstance()
            copyTransformer = copyTransformerFactory.newTransformer()
            domSource = DOMSource.new(document)
            if file.isFile()
                file.delete()
            end
            file.createNewFile()
            dataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(file)
            streamResult = StreamResult.new(dataOutputStream)
            copyTransformer.transform(domSource, streamResult)
            dataOutputStream.flush()
        rescue StandardError => e
            raise e
        ensure
            StreamUtil.getInstance().close(dataOutputStream)
        end
    end
end

require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/w3c/dom/Document"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"

