# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graphics.form.item


module ::Org; module Allbinary; module Graphics; module Form; module Item

module ABCustomItemInterface
    

    def getMinimumWidth()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMinimumHeight()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getLabel()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def paintXY(graphics, x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def paintUnselected(graphics, x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end

end; end; end; end; end

