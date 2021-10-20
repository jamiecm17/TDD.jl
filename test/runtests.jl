using TDD
using Test

@testset "TDD.jl" begin
    graph = [
        [2,3],
        [1],
        [1],
        [5],
        [4]]
    @test neighbor(1)==[1,2,3]
    @test neighbor(4)==[4,5]

    graph = [
        [2],
        [1],
        [1],
        [5],
        [4]]
    @test neighbor(1)==[1,2]
    @test neighbor(3)==[3,1]

    graph = [
        [2],
        [1],
        [1],
        [],
        [4]]
    @test neighbor(4)==[4]
end
