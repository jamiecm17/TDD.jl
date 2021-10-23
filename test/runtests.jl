using Test

@testset "TDD.jl" begin
    function neighbor(n)
        a=reshape(graph[n],(1,length(graph[n])))
        b=hcat(n,a)
        println(sort(b,dims=2))
    end
    graph = [
        [2,3],
        [1],
        [1],
        [5],
        [4]]
    @test neighbor(1)==[1 2 3]
    @test neighbor(4)==[4 5]

    graph = [
        [2],
        [1],
        [1],
        [5],
        [4]]
    @test neighbor(1)==[1 2]
    @test neighbor(3)==[1 3]

    graph = [
        [2],
        [1],
        [1],
        [],
        [4]]
    @test neighbor(4)==[4]
end
