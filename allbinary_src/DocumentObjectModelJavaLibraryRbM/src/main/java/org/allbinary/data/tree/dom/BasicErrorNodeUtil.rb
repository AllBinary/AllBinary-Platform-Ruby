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


class BasicErrorNodeUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.get(document, errorText)
        begin
            node = document.createElement(ErrorData.getInstance().NAME)
            node.appendChild(ModDomHelper.createNameValueNodes(document, ErrorData.getInstance().TEXT, errorText))
            return node
        rescue StandardError => e
            raise StandardError.new("Error Node Creation Failure")
        end
    end
end

require "org/allbinary/business/error/ErrorData"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/data/tree/dom/ModDomHelper"

