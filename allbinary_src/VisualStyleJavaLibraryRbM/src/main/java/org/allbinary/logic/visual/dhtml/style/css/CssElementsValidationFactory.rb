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
# package org.allbinary.logic.visual.dhtml.style.css


module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css

class CssElementsValidationFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance_j1_1(cssElementStyleNodeList)
        styles = ::Org::Allbinary::Util::BasicArrayListD.new()
        size = cssElementStyleNodeList.size()
        cssElementStyleNode = nil
        cssValidationInterface = nil
        (0...size).each do |index|
            cssElementStyleNode = cssElementStyleNodeList.get(index)
            cssValidationInterface = CssElementValidationFactory.getInstance(cssElementStyleNode)
            styles.add(cssValidationInterface)
        end
        return styles
    end
    

    def self.getInstance_j1_2(hashMap)
        styles = ::Org::Allbinary::Util::BasicArrayListD.new()
        return styles
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def self.getInstance_j1(*java_overload_args)
        return getInstance_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Util::BasicArrayList))
        return getInstance_j1_2(*java_overload_args)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Validate; autoload :ValidationInterface, "org/allbinary/logic/control/validate/ValidationInterface" unless const_defined?(:ValidationInterface, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :CssElementValidationFactory, "org/allbinary/logic/visual/dhtml/style/css/CssElementValidationFactory" unless const_defined?(:CssElementValidationFactory, false)

end; end; end; end; end; end; end

