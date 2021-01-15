### A Pluto.jl notebook ###
# v0.10.0

using Markdown

# ╔═╡ 0afe32fe-1c35-4793-b26c-720efe4a6fb3
2 + 3

# ╔═╡ d3e0cb0b-0d84-41ae-b472-8927b463306c
sleep(60)

# ╔═╡ 790cf552-041b-4799-9287-c8cbfc63c7f6
2

# ╔═╡ db9131be-8344-478b-9173-14b865c638b1
typeof(2)

# ╔═╡ 92c0baab-d49a-4866-94c6-2596ada1fa52
typeof(3.0)

# ╔═╡ fbd8c298-8729-43ed-a66f-415ba97c1077
typeof("hello")

# ╔═╡ 34ace175-91e0-48b3-8910-528661323e07
2 + 3.0

# ╔═╡ d823d5f5-abd0-48a8-a553-c7402e99187b
2 + "hello"

# ╔═╡ ec634631-a3c5-4d66-bf39-b8aa5f041fd1
[1, 2, 3]

# ╔═╡ ca85d685-1dbf-4c1b-8478-9879f4a44f8d
[1.0, 2.0, 3.0]

# ╔═╡ 947fba54-f6f3-49ca-b960-31fa5461bab4
[1 2; 3 4; 5 6]

# ╔═╡ 9eb29016-15d9-47cc-943d-8a28de860f75
2 + 3

# ╔═╡ 9802a4a1-6bd3-4665-b5d8-374f1c780580
[1, 2] + [3, 4]

# ╔═╡ d5cbc158-a026-46fc-919a-336b90488ea9
2 * [3, 4]

# ╔═╡ 6e42ea95-1f98-48fe-bbce-a7a1831da38d
[1, 2] .* [3, 4]

# ╔═╡ ffb6b502-1407-489f-b0e3-d9fd37e45530
A = rand(3, 3)

# ╔═╡ 09f7aa47-6623-4d43-b0e0-7ba923356223
b = rand(3)

# ╔═╡ b7595513-3344-4a57-81be-60cea5093fa0
A * b

# ╔═╡ 1931f760-a3e0-4ca7-994a-ad8bfeca2e1b
inv(A)

# ╔═╡ eee12777-2fae-4639-9eaa-632bd6e6c510
inv(A) * A

# ╔═╡ f89005fe-0834-42a5-889d-d6e88046b924
using LinearAlgebra

# ╔═╡ b3f6c32c-628c-4abe-9c1d-8c823a7a183c
eigen(A)

# ╔═╡ 32cee4a1-7ec2-48cd-9e73-8b1ffae67dd1
eigen(A + A')

# ╔═╡ 33f3729f-c0f7-4408-a5ed-9f13f7e5e6c7
svd(A)

# ╔═╡ b1a2a1c9-cfdc-44ab-9a73-ea0116c9cf51
]add Gadfly

# ╔═╡ 69377f15-ea7f-48ac-ab30-1e8060e5b219
using Gadfly

# ╔═╡ a5f2118d-a295-49b2-a572-69878f30d2cd
plot(x=rand(20), y=rand(20))

# ╔═╡ 94e1ef22-33ec-4f3f-8edc-4b7236f09f94
plot(x=rand(10000), Geom.histogram(bincount=100))

# ╔═╡ ad264406-451c-4e12-8961-e79ff6888397
plot(x=randn(10000), Geom.histogram(bincount=100))

# ╔═╡ 205eb7d2-a41f-4596-9cc8-ead5f90a9fc6
md"""
## Syntax trees
"""

# ╔═╡ 6fc1902d-6e6f-4d8a-ade3-03a54def3a14
2 + 3

# ╔═╡ 9a3d5b1e-de25-4ebe-8351-c8fcc6146f34
:(2 + 3)

# ╔═╡ 595a5351-aa88-449a-8a5a-f9f60786253f
x + 2

# ╔═╡ 72c8c60d-8400-44f0-9191-d79e74ad1073
:(x + 2)

# ╔═╡ e1cf73c2-9031-4d14-b227-b624ff452421
typeof(:(x + 2))

# ╔═╡ fcb72f2e-04b0-475d-9667-4cdfe038ec26
dump(:(x + 2))

# ╔═╡ 2a261e50-06b8-4abc-aa5e-d988f5d99833
md"""
## Functions
"""

# ╔═╡ 332bcd54-97fa-4419-a281-11f156037863
function f(x)
    2*x+1
end

# ╔═╡ 8be11abc-20b7-4112-b6de-5e949f76b854
f(2)

# ╔═╡ 4db12c33-599e-452d-bf0f-e8608921ddcf
f(3.0)

# ╔═╡ 0ce5cd30-72d4-4ca6-b583-a46a6855530f
f(4im)

# ╔═╡ 160cc541-cb25-4777-8ff6-2e216a2519aa
g(x) = 2x+1

# ╔═╡ 8469dd5a-d7b0-4a6f-99d6-48a3a4f8529a
g(2)

# ╔═╡ a458e848-f369-409f-90d4-39e22c99578e
f("hello")

# ╔═╡ 139658e3-b028-4760-92bf-7f4ddfcd1bae
function f2(x::Number)
    2*x+1
end

# ╔═╡ 69f7b32c-c72e-4d6c-aa68-bd510d8e32b0
f2(1+2im)

# ╔═╡ f1267c88-1d21-487f-8a16-2eae8ab6caf1
f2("hello")

# ╔═╡ b0ddab57-6ecd-47af-a9dd-750c4966b01a
md"""
## Types
"""

# ╔═╡ 60768926-eb92-4f59-8d41-aec141880048
struct Point
    x::Float64
    y::Float64
end

# ╔═╡ e1c5cea8-d4f8-425c-a88b-6a038eb578cf
Point(1,2)

# ╔═╡ d700b5dc-3ed5-438d-a76e-47e930b75e4f
function pointadd(p::Point, q::Point)
    Point(p.x + q.x, p.y + q.y)
end

# ╔═╡ ec1d678d-39e0-40e5-bfa3-bb0761c66f04
pointadd(Point(1,2), Point(3,4))

# ╔═╡ d6e151ed-d8d1-414f-bbc9-229d6c01b1c3
function Base.:+(p::Point, q::Point)
    Point(p.x + q.x, p.y + q.y)
end

# ╔═╡ 7a5a9abd-cc03-411b-acec-ccb8b662f13c
Point(1,2) + Point(3,4)

# ╔═╡ f6b9fdb8-ed4f-40cd-928a-dbe18c3e9f15
methods(+)

# ╔═╡ 98e8bd4d-81eb-4eb2-a944-15480e9ab45b
im

# ╔═╡ b4e02b70-9cd3-4ca5-b24e-f0c06a29e8ac
typeof(im)

# ╔═╡ 95645080-c4af-4126-b07b-a2c92e8ca615
10^30

# ╔═╡ 91a8dbb2-bdd1-4edd-8a67-43fb65e16c32
big(10)^30

# ╔═╡ a848e585-6a8c-4739-8d3f-91aa9e2b353f
10.0^3000

# ╔═╡ 0d80dd75-556d-45cd-b3e3-c7ce4a5cf9b1
big(10.0)^3000

# ╔═╡ 046a5e1e-cef8-41da-8e34-2def3df3ecb8
setprecision(4000)

# ╔═╡ 1cc2ba60-6b68-40c7-8675-ff6abcb62f8e
big(10.0)^3000

# ╔═╡ a0e3a78f-a4d9-4c61-bd97-ff80dd0a6086
pi

# ╔═╡ 9696907a-7d71-4b0f-8ab7-c1aedc480dbd
typeof(pi)

# ╔═╡ 75072033-d5f4-4a59-9507-189be19a2091
Float64(pi)

# ╔═╡ 2a26788f-c3f1-42c6-a45b-07a3288baad9
BigFloat(pi)

# ╔═╡ c8781923-334c-4a5e-90e2-921b897a8423
?Irrational

# ╔═╡ 544af91e-2c7d-44c7-b756-15c2e28c002a
1//3

# ╔═╡ 1313cccb-6b49-4882-883f-e57cd59d9238
big(1/10)

# ╔═╡ cb7b5a86-08f1-4e9e-9ca1-619b62f765c8
1//10

# ╔═╡ 654f5f1d-c03c-41e2-8233-d56143272f83
[1 2; 3 4]//10

# ╔═╡ 7625328d-f6ef-4d45-a570-036a4ca60730
inv([1 2; 3 4]//10)

# ╔═╡ df85bb97-3231-4f05-99fa-e6acfb3c2a54
md"""
## Generic programming
"""

# ╔═╡ f8e38ac1-9821-4577-990a-5f08d56c8f9d
function add2(x::T, y::T) where {T<:Number}
    x + y
end

# ╔═╡ 71b87c02-8c36-4f84-bca9-b9cfa84d68b5
add2(3, 4)

# ╔═╡ e0452ebb-2891-4717-9098-1b7f5b3afbdf
add2(3.0, 4.0)

# ╔═╡ 1b5f6008-32cf-43db-aa32-e8aaff3e264e
add2(3, 4.0)

# ╔═╡ f0e826d1-d691-4e2d-9cf6-3a59fdc101e4
@code_native add2(1, 2)

# ╔═╡ 27b0d580-b654-4d06-9a26-d6a6e23151c1
@code_native add2(1.0, 2.0)

# ╔═╡ dddbccca-04ab-448d-8137-4259c0d2aa99
@code_native add2(1.0im, 2.0im)

# ╔═╡ e3b1310f-96f8-4f39-85a0-633738fc1238
add2(2+im, 3im)

# ╔═╡ 804e722b-7d21-4dd7-b19d-e5599ff3b6cd
add2(2.0+im, 3im)

# ╔═╡ c1e5b2b3-b162-40ce-b8b9-0e67502822f3
typeof(2.0+im)

# ╔═╡ 1425b8c8-0380-4361-bf21-5187b97ea3d4
typeof(3im)

# ╔═╡ c73aab22-f973-4959-9093-f989e7d86856
add2(2.0+im, 3.0im)

# ╔═╡ ab3f15c3-47cb-4b0b-b8ca-5593c04be4f9
Any

# ╔═╡ 2db66292-8031-4cc7-afb4-105cb55c0a45
supertype(Int)

# ╔═╡ 67ebed62-32f6-4459-a4c4-6e2f0c4b5861
supertype(Signed)

# ╔═╡ a4da38b5-3f96-4a9d-ad66-70956e44c690
supertype(Integer)

# ╔═╡ f0066bf9-35ef-4d8f-8874-d597ac76f901
supertype(Real)

# ╔═╡ 309d4c18-ba49-4c66-ad8c-41ee69eeb004
supertype(Number)

# ╔═╡ ec720508-f036-4a7a-ae6b-756cc4711a25
supertype(Any)

# ╔═╡ a7d9fb69-1169-456a-947d-4e9cb96096ff
subtypes(Signed)

# ╔═╡ 0aa8294e-f47f-4c27-b860-dcbd8a125dbc
subtypes(Int64)

# ╔═╡ 2bc2b290-7843-41d4-b8c8-69b423c1a81a
struct PointG{T<:Number}
    x::T
    y::T
end

# ╔═╡ 9fdb2a3a-f200-4d30-acab-f3247347f46a
PointG{Int}(1, 2)

# ╔═╡ 9d30af41-ea85-42a8-acd6-b5898f8585fe
PointG{Int}(1)

# ╔═╡ 1ea9e455-c4b8-4d72-9f49-073c275d1a2c
PointG{Float64}(1.0, 2.0)

# ╔═╡ 32597ac6-4d25-4241-9512-39e68111f82c
PointG(1, 2)

# ╔═╡ 57216e8b-69db-4823-af63-46e2aff4eaa1
PointG(1.0, 2.0)

# ╔═╡ 4d3cad6d-9951-462d-809c-42a7554bd441
struct PointG2{T}
    x::T
    y::T
end

# ╔═╡ 4688d750-4440-42d0-9544-c2c62b4f7d11
PointG2{Any}(1, 2)

# ╔═╡ 9820b30d-b928-4eb5-b2d6-785e052ab67d
PointG2{Any}("hello", "world")

# ╔═╡ 73fa1648-0c8f-4d95-a5df-c93e7c18c739


# ╔═╡ Cell order:
# ╠═0afe32fe-1c35-4793-b26c-720efe4a6fb3
# ╠═d3e0cb0b-0d84-41ae-b472-8927b463306c
# ╠═790cf552-041b-4799-9287-c8cbfc63c7f6
# ╠═db9131be-8344-478b-9173-14b865c638b1
# ╠═92c0baab-d49a-4866-94c6-2596ada1fa52
# ╠═fbd8c298-8729-43ed-a66f-415ba97c1077
# ╠═34ace175-91e0-48b3-8910-528661323e07
# ╠═d823d5f5-abd0-48a8-a553-c7402e99187b
# ╠═ec634631-a3c5-4d66-bf39-b8aa5f041fd1
# ╠═ca85d685-1dbf-4c1b-8478-9879f4a44f8d
# ╠═947fba54-f6f3-49ca-b960-31fa5461bab4
# ╠═9eb29016-15d9-47cc-943d-8a28de860f75
# ╠═9802a4a1-6bd3-4665-b5d8-374f1c780580
# ╠═d5cbc158-a026-46fc-919a-336b90488ea9
# ╠═6e42ea95-1f98-48fe-bbce-a7a1831da38d
# ╠═ffb6b502-1407-489f-b0e3-d9fd37e45530
# ╠═09f7aa47-6623-4d43-b0e0-7ba923356223
# ╠═b7595513-3344-4a57-81be-60cea5093fa0
# ╠═1931f760-a3e0-4ca7-994a-ad8bfeca2e1b
# ╠═eee12777-2fae-4639-9eaa-632bd6e6c510
# ╠═f89005fe-0834-42a5-889d-d6e88046b924
# ╠═b3f6c32c-628c-4abe-9c1d-8c823a7a183c
# ╠═32cee4a1-7ec2-48cd-9e73-8b1ffae67dd1
# ╠═33f3729f-c0f7-4408-a5ed-9f13f7e5e6c7
# ╠═b1a2a1c9-cfdc-44ab-9a73-ea0116c9cf51
# ╠═69377f15-ea7f-48ac-ab30-1e8060e5b219
# ╠═a5f2118d-a295-49b2-a572-69878f30d2cd
# ╠═94e1ef22-33ec-4f3f-8edc-4b7236f09f94
# ╠═ad264406-451c-4e12-8961-e79ff6888397
# ╟─205eb7d2-a41f-4596-9cc8-ead5f90a9fc6
# ╠═6fc1902d-6e6f-4d8a-ade3-03a54def3a14
# ╠═9a3d5b1e-de25-4ebe-8351-c8fcc6146f34
# ╠═595a5351-aa88-449a-8a5a-f9f60786253f
# ╠═72c8c60d-8400-44f0-9191-d79e74ad1073
# ╠═e1cf73c2-9031-4d14-b227-b624ff452421
# ╠═fcb72f2e-04b0-475d-9667-4cdfe038ec26
# ╟─2a261e50-06b8-4abc-aa5e-d988f5d99833
# ╠═332bcd54-97fa-4419-a281-11f156037863
# ╠═8be11abc-20b7-4112-b6de-5e949f76b854
# ╠═4db12c33-599e-452d-bf0f-e8608921ddcf
# ╠═0ce5cd30-72d4-4ca6-b583-a46a6855530f
# ╠═160cc541-cb25-4777-8ff6-2e216a2519aa
# ╠═8469dd5a-d7b0-4a6f-99d6-48a3a4f8529a
# ╠═a458e848-f369-409f-90d4-39e22c99578e
# ╠═139658e3-b028-4760-92bf-7f4ddfcd1bae
# ╠═69f7b32c-c72e-4d6c-aa68-bd510d8e32b0
# ╠═f1267c88-1d21-487f-8a16-2eae8ab6caf1
# ╟─b0ddab57-6ecd-47af-a9dd-750c4966b01a
# ╠═60768926-eb92-4f59-8d41-aec141880048
# ╠═e1c5cea8-d4f8-425c-a88b-6a038eb578cf
# ╠═d700b5dc-3ed5-438d-a76e-47e930b75e4f
# ╠═ec1d678d-39e0-40e5-bfa3-bb0761c66f04
# ╠═d6e151ed-d8d1-414f-bbc9-229d6c01b1c3
# ╠═7a5a9abd-cc03-411b-acec-ccb8b662f13c
# ╠═f6b9fdb8-ed4f-40cd-928a-dbe18c3e9f15
# ╠═98e8bd4d-81eb-4eb2-a944-15480e9ab45b
# ╠═b4e02b70-9cd3-4ca5-b24e-f0c06a29e8ac
# ╠═95645080-c4af-4126-b07b-a2c92e8ca615
# ╠═91a8dbb2-bdd1-4edd-8a67-43fb65e16c32
# ╠═a848e585-6a8c-4739-8d3f-91aa9e2b353f
# ╠═0d80dd75-556d-45cd-b3e3-c7ce4a5cf9b1
# ╠═046a5e1e-cef8-41da-8e34-2def3df3ecb8
# ╠═1cc2ba60-6b68-40c7-8675-ff6abcb62f8e
# ╠═a0e3a78f-a4d9-4c61-bd97-ff80dd0a6086
# ╠═9696907a-7d71-4b0f-8ab7-c1aedc480dbd
# ╠═75072033-d5f4-4a59-9507-189be19a2091
# ╠═2a26788f-c3f1-42c6-a45b-07a3288baad9
# ╠═c8781923-334c-4a5e-90e2-921b897a8423
# ╠═544af91e-2c7d-44c7-b756-15c2e28c002a
# ╠═1313cccb-6b49-4882-883f-e57cd59d9238
# ╠═cb7b5a86-08f1-4e9e-9ca1-619b62f765c8
# ╠═654f5f1d-c03c-41e2-8233-d56143272f83
# ╠═7625328d-f6ef-4d45-a570-036a4ca60730
# ╟─df85bb97-3231-4f05-99fa-e6acfb3c2a54
# ╠═f8e38ac1-9821-4577-990a-5f08d56c8f9d
# ╠═71b87c02-8c36-4f84-bca9-b9cfa84d68b5
# ╠═e0452ebb-2891-4717-9098-1b7f5b3afbdf
# ╠═1b5f6008-32cf-43db-aa32-e8aaff3e264e
# ╠═f0e826d1-d691-4e2d-9cf6-3a59fdc101e4
# ╠═27b0d580-b654-4d06-9a26-d6a6e23151c1
# ╠═dddbccca-04ab-448d-8137-4259c0d2aa99
# ╠═e3b1310f-96f8-4f39-85a0-633738fc1238
# ╠═804e722b-7d21-4dd7-b19d-e5599ff3b6cd
# ╠═c1e5b2b3-b162-40ce-b8b9-0e67502822f3
# ╠═1425b8c8-0380-4361-bf21-5187b97ea3d4
# ╠═c73aab22-f973-4959-9093-f989e7d86856
# ╠═ab3f15c3-47cb-4b0b-b8ca-5593c04be4f9
# ╠═2db66292-8031-4cc7-afb4-105cb55c0a45
# ╠═67ebed62-32f6-4459-a4c4-6e2f0c4b5861
# ╠═a4da38b5-3f96-4a9d-ad66-70956e44c690
# ╠═f0066bf9-35ef-4d8f-8874-d597ac76f901
# ╠═309d4c18-ba49-4c66-ad8c-41ee69eeb004
# ╠═ec720508-f036-4a7a-ae6b-756cc4711a25
# ╠═a7d9fb69-1169-456a-947d-4e9cb96096ff
# ╠═0aa8294e-f47f-4c27-b860-dcbd8a125dbc
# ╠═2bc2b290-7843-41d4-b8c8-69b423c1a81a
# ╠═9fdb2a3a-f200-4d30-acab-f3247347f46a
# ╠═9d30af41-ea85-42a8-acd6-b5898f8585fe
# ╠═1ea9e455-c4b8-4d72-9f49-073c275d1a2c
# ╠═32597ac6-4d25-4241-9512-39e68111f82c
# ╠═57216e8b-69db-4823-af63-46e2aff4eaa1
# ╠═4d3cad6d-9951-462d-809c-42a7554bd441
# ╠═4688d750-4440-42d0-9544-c2c62b4f7d11
# ╠═9820b30d-b928-4eb5-b2d6-785e052ab67d
# ╠═73fa1648-0c8f-4d95-a5df-c93e7c18c739
