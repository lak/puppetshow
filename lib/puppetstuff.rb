module PuppetStuff
    Parser = Puppet::Parser
    AST = Puppet::Parser::AST
    def mkclassframing(interp = nil)
        interp ||= mkinterp

        interp.newdefine("resource", :arguments => [%w{one}, %w{two value}, %w{three}])
        interp.newclass("")
        source = interp.newclass("base")
        interp.newclass("sub1", :parent => "base")
        interp.newclass("sub2", :parent => "base")
        interp.newclass("other")

        scope = Parser::Scope.new(:interp => interp)
        scope.source = source

        return interp, scope, source
    end

    def mkinterp(args = {}) 
        args[:Code] ||= "" unless args.include?(:Manifest)
        args[:Local] ||= true
        Puppet::Parser::Interpreter.new(args)
    end 

    def mkparser
        Puppet::Parser::Parser.new(mkinterp)
    end 

    def mkscope(hash = {}) 
        hash[:interp] ||= mkinterp
        hash[:source] ||= (hash[:interp].findclass("", "") ||
            hash[:interp].newclass(""))

        unless hash[:source]
            raise "Could not find source for scope"
        end
        Puppet::Parser::Scope.new(hash)
    end
end
