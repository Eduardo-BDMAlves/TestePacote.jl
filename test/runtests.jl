using TestePacote
using Test

@testset "TestePacote.jl" begin
    @test TestePacote.hello_world() == "Hello, World!"
end
