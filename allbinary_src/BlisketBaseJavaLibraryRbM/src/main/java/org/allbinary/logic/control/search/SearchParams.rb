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
# package org.allbinary.logic.control.search

# require "java/util/Set"
# require "javax/servlet/http/HttpServletRequest"

class SearchParams
    attr_accessor :columnsAndSearchValues, :order, :sortBy, :listLength, :startPage, :endPage

    def initialize_fields
        @columnsAndSearchValues = nil
        @order = nil
        @sortBy = nil
        @listLength = nil
        @startPage = nil
        @endPage = nil
    end
    

    def initialize(request)
        initialize_fields
        @columnsAndSearchValues = StdUtil.getInstance().createHashMap()
        self.setLength(request.getParameter(SearchData::LENGTH))
        self.setOrder(request.getParameter(SearchData::ORDER))
        page = request.getParameter(SearchData::PAGE)
        self.setStartPage(page)
        self.setEndPage(page)
        self.setSortBy(request.getParameter(SearchData::SORTBY))
        index = 0
        columnName = request.getParameter((SearchData::COLUMNNAME).to_s + "[0]")
        columnValue = request.getParameter((SearchData::COLUMNVALUE).to_s + "[0]")
        while columnName != nil
            self.add(columnName, columnValue)
            index += 1
            columnName = request.getParameter((SearchData::COLUMNNAME).to_s + "[" + (index).to_s + "]")
            columnValue = request.getParameter((SearchData::COLUMNVALUE).to_s + "[" + (index).to_s + "]")
        end
    end
    

    def add(column, value)
        @columnsAndSearchValues.put(column, value)
    end
    

    def setOrder(value)
        @order = value
    end
    

    def setSortBy(value)
        @sortBy = value
    end
    

    def setLength(value)
        @listLength = value
    end
    

    def setStartPage(value)
        @startPage = value
    end
    

    def setEndPage(value)
        @endPage = value
    end
    

    def get()
        return @columnsAndSearchValues
    end
    

    def getOrder()
        return @order
    end
    

    def getSortBy()
        return @sortBy
    end
    

    def getLength()
        return @listLength
    end
    

    def getLengthInt()
        if @listLength != nil
            return @listLength
        else
            return 0
        end
    end
    

    def getStartPage()
        return @startPage
    end
    

    def getEndPage()
        return @endPage
    end
    

    def getStartPageInt()
        if @startPage != nil
            return @startPage
        else
            return 0
        end
    end
    

    def getEndPageInt()
        if @endPage != nil
            return @endPage
        else
            return 0
        end
    end
    

    # throws Exception
    def getParamsNode(document)
        paramsNode = ModDomHelper.createNameValueNodes(document, SearchData::PARAMS, SearchData::PARAMS)
        paramsNode.appendChild(self.getFieldsNode(document))
        paramsNode.appendChild(self.getOrderNode(document))
        paramsNode.appendChild(self.getSortByNode(document))
        paramsNode.appendChild(self.getLengthNode(document))
        return paramsNode
    end
    

    # throws Exception
    def getFieldsNode(document)
        fieldsNode = ModDomHelper.createNameValueNodes(document, SearchData::FIELDS, @columnsAndSearchValues.size().to_s)
        set = @columnsAndSearchValues.keySet()
        searchValueArray = set.toArray()
        size = searchValueArray.length
        (0...size).each do |index|
            key = searchValueArray[index]
            searchValue = @columnsAndSearchValues.get(key)
            fieldsNode.appendChild(ModDomHelper.createNameValueNodes(document, SearchData::FIELD, key, ToDomHelper.convertNull(searchValue)))
        end
        return fieldsNode
    end
    

    # throws Exception
    def getOrderNode(document)
        return ModDomHelper.createNameValueNodes(document, SearchData::ORDER, ToDomHelper.convertNull(self.getOrder()))
    end
    

    # throws Exception
    def getSortByNode(document)
        return ModDomHelper.createNameValueNodes(document, SearchData::SORTBY, ToDomHelper.convertNull(self.getSortBy()))
    end
    

    # throws Exception
    def getLengthNode(document)
        return ModDomHelper.createNameValueNodes(document, SearchData::LENGTH, ToDomHelper.convertNull(self.getLength()))
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/data/tree/dom/ToDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/control/search/SearchData"

