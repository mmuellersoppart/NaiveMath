module NaiveMath
    module Numerics
        module Primes
            export isprime

            function isprime()
                "hi"
            end
        end
        using .Primes
        export isprime
        
        

    end

    using .Numerics
    export isprime

    
greet() = print("Hello World!")

end; # module NaiveMath
