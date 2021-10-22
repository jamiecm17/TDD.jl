module TDD

function neighbor(n)
    a=reshape(graph[n],(1,length(graph[n])))
    b=hcat(n,a)
    println(sort(b,dims=2))
end
end
