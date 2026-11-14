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
# package org.allbinary.business.category.properties.root.store.theme

# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/category/properties/root/store/RootStoreCategoryProperties"

class RootStoreThemeCategoryProperties < RootStoreCategoryProperties

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(transformInfoInterface)
        method(:initialize).super_method.call(transformInfoInterface)
    end
    

    def constructor2(transformInfoInterface, abPath)
        method(:initialize).super_method.call(transformInfoInterface, abPath)
    end
    

    def constructor2(transformInfoInterface, node)
        method(:initialize).super_method.call(transformInfoInterface, node)
    end
    

    def constructor2(transformInfoInterface, categoryPropertiesHashMap)
        method(:initialize).super_method.call(transformInfoInterface, categoryPropertiesHashMap)
    end
    

    # throws Exception
    def initPath()
        transformInfoHttpStoreInterface = @transformInfoInterface
        storeFrontInterface = StoreFrontFactory.getInstance(transformInfoHttpStoreInterface.getStoreName())
        stringBuffer = StringMaker.new()
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)
        stringBuffer.append(storeFrontInterface.getName())
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().THEMEPATH)
        abPath = AbPath.new(stringBuffer.to_s, StringUtil.getInstance().EMPTY_STRING)
        httpServletRequest = transformInfoHttpStoreInterface.getPageContext().getRequest()
        @webAppAbPath = AbPath.new((httpServletRequest.getContextPath()).to_s + abPath.to_s, StringUtil.getInstance().EMPTY_STRING)
        self.setRootFilePath(AbPath.new((URLGLOBALS.getMainPath()).to_s + abPath.to_s, StringUtil.getInstance().EMPTY_STRING))
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :StoreFrontFactory, "org/allbinary/business/context/modules/storefront/StoreFrontFactory"
autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :TransformInfoHttpStoreInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Node, "org/w3c/dom/Node"

