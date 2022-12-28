module NaiveMath
    module Numerics
        module Primes
            export isprime, primefactorization

            function isprime(NN)
                for i in 2:(NN - 1)
                    mod(NN, i) == 0 && return false
                end
                return true
            end

            function primefactorization(NN)

                isprime(NN) && return [NN]

                primes = []
                composites = [NN]
                while(!isempty(composites))
                    composite = pop!(composites)

                    for i in 2:composite
                        if mod(composite, i) == 0
                            isprime(i) ? push!(primes, i) : push!(composites, i)

                            divisor = composite ÷ i
                            isprime(divisor) ? push!(primes, divisor) : push!(composites, divisor)
                            break
                        end
                    end
                end
                return primes
            end

        end # module Primes

        using .Primes
        export isprime, primefactorization

    end # module Numerics

    using .Numerics
    export Numerics

end; # module NaiveMath
