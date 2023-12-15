### A Pluto.jl notebook ###
# v0.19.32

using Markdown
using InteractiveUtils

# ╔═╡ d93d5bba-c250-4600-ad29-aaa3a51d39db
html"<button onclick='present()'>present</button>"

# ╔═╡ 923ff7d6-7586-11ee-009a-9f61ab3db3e8
md"""
# Basic data structures and Loops
‫‫در این جلسه ابتدا با ساختارهای ذخیرهٔ داده‌ها آشنا شده و سپس با چند مثال با حلقه‌ها هم آشنا خواهیم شد. البته قبل از آن چند سایت خوب برای تمرین برنامه‌نویسی نیز معرفی می‌گردد.
"""

# ╔═╡ e4328b2e-3c79-4884-92be-be27b1e8ee53
md"""
## Where to practice?
- [Exercism](https://exercism.org/tracks/julia)
- - ت‫عداد خوبی تمرین در زمینه‌های مختلف Julia دارد.
- [ProjectEuler](https://projecteuler.net/)
- - ‫تعداد زیادی سؤالات ریاضی دارد که می‌توان با هر زبانی حل کرد.
- [Hackerrank Challenges](https://www.hackerrank.com/challenges)
- - ‫تعداد زیادی سؤال، من جمله تعمیم سؤالات projecteuler را دارد که می‌توان با زبان‌های متنوعی حل کرد.

## Another resource for learning Julia
- [Calculus with Julia](https://jverzani.github.io/CalculusWithJuliaNotes.jl)
- - ‫هم مروری بر مباحث حسابان است و هم آموزش و استفاده از جولیا.
"""

# ╔═╡ b3e936d4-32eb-4228-bfa7-58107ba6bc47
md"""

## Basic data structures
1. Arrays, Vectors and Matrices
2. Tuples
3. Dictionaries
### **Oddballs!**
4. Strings
5. Iterators
"""

# ╔═╡ f4efc160-37ec-49b3-9c8d-05b018867dd7
md"""
## Arrays
- Arrays are mutable and ordered.
- ‫مقادیر ذخیره شده در آرایه‌ها را می‌توان تغییر داد.
- ‫آرایه‌ها مرتب هستند.
"""

# ╔═╡ b78b6f82-1470-470e-b37c-8e8cf036a272
TA_names = ["Amin Ahadi", "Armin Memarian", "Yousof Sadeghi"]

# ╔═╡ 645b84f6-0385-478c-8464-63d1594e64c0
typeof(TA_names)

# ╔═╡ 478ef34e-fa2d-46be-a70b-8648d190fa68
Fib_numbers = [1;1;2;3;5;8;13;21]

# ╔═╡ 800c7bae-645a-4d15-a26e-5a2eb6efa6b3
typeof(Fib_numbers)

# ╔═╡ aa0d30d8-f31e-40c9-bea1-14698a5c8f73
# Notice the type difference here
prime_numbers = [2 3 5 7 11 13 17 19 23]

# ╔═╡ 39a7d13a-69e8-4386-bf93-9a095f5a1d9d
typeof(prime_numbers)

# ╔═╡ 30d77667-82c6-4c08-9155-fcae1eed7b9e
md"""
## Question:
- What happens if the elements are not the same type?
- ‫اگر جنس المان‌ها یکی نباشد چه اتفاقی می‌افتد؟
"""

# ╔═╡ 03374ce7-6cbd-413d-a2b6-9227d744b70d
mix_type1 = [1,2,3//2]

# ╔═╡ fd24ece8-757f-4f58-9270-96900d8e331b
mix_type2 = [4/3, π, ℯ^(π*(0+0.5im))]

# ╔═╡ 8f8da2d9-5959-4b0e-a327-c84c2683684a
mix_type3 = [TA_names, π^2, "Hello!"]

# ╔═╡ b0851f1f-f017-4a9b-b2f3-c8449aff49fe
typeof(mix_type3)

# ╔═╡ fa86e242-72a3-4bdb-937f-aa91de7601aa
md"""
## فراخوانی و‫ ...

"""

# ╔═╡ 774df522-48de-4cfd-b9c6-1c2057359009
TA_names[2]

# ╔═╡ f7fa1b2d-67ed-4394-b58f-3d9d27608065
TA_names[1] = "Dr Amin Ahadi"

# ╔═╡ 6c8656fa-e2b5-4e40-9677-421108e59078
TA_names

# ╔═╡ 6b4085b1-bcb0-41da-b200-7a3a0a72e4cf
push!(Fib_numbers,34)

# ╔═╡ b229a208-0226-4a73-babf-d89ad2d8f556
pop!(Fib_numbers)

# ╔═╡ 1cc301b6-c380-4170-94c8-e95da1f8dfdf
Fib_numbers

# ╔═╡ 9d23a468-f4f2-410a-8013-dfa53467e95a
Fib_numbers[3:5]

# ╔═╡ 01f905ab-1422-4e19-be90-3670702adc68
Fib_numbers[2:2:end]

# ╔═╡ f89b770e-0424-483a-be2e-85c9e3dfd1fb
md"""
## آرایه‌های چند بعدی
- n-dimensional arrays
- Array of arrays!
"""

# ╔═╡ 600bd661-1d15-4ff3-a44e-fb8c2f5dd07d
mat_A = [1 2 3; 1 2 4; 2 2 2]

# ╔═╡ 4c850650-bb3e-4e1b-8cf8-6154df99ae13
typeof(mat_A)

# ╔═╡ 13faecf4-3bf7-42d6-bb24-00dc1f39e764
mat_B = [3 4 5; 
     	1 2 4; 
     	2 2 2]

# ╔═╡ d28c186a-61f3-4aca-8abf-63e7c9190e40
mat_C = [[1,2,3] [4,5,6] [7,8,9]]

# ╔═╡ faa84619-7d55-4da7-9163-6fe20231ddab
arr_of_arr1 = [["Do","not","weaken","or","grieve"],["you","shall","have","the","upper hand"],["should","you","be","faithful."]]
# Not very efficient but could be handy.

# ╔═╡ 1e55bb19-6ae7-40e9-b682-3de0737ae61a
mat_A[1,3]

# ╔═╡ 1d83887e-dfc4-4abe-a29f-509a2b3a03ba
mat_B[1:2,2:3]

# ╔═╡ 10376cf1-aae8-43d5-9026-16cbf3a6e7f4
mat_C[2][2] #This throws an error

# ╔═╡ dca521fe-4f15-4aa3-9791-5c053b3f0696
arr_of_arr1[2][2] #This is ok though

# ╔═╡ 030a878f-6a36-443a-97c1-508f7b5f656a
md"""
## Tuples
‫چندتایی‌ها (توپل‌ها) مجموعه‌هایی مرتب هستند که مقادیر آن‌ها ثابت است و تغییر نمی‌کند.
"""

# ╔═╡ 9fa4ffb5-10b7-4508-8e4f-13fe5088149a
Solar_system = ("عطارد", "زهره", "زمین", "مریخ", "مشتری", "زحل", "اورانوس", "نپتون")

# ╔═╡ f42c2f4a-19ea-4645-9adf-34ef2b6cd60b
push!(Solar_system,"پلوتو") # Gives an error

# ╔═╡ 4b8e6225-f93e-48f9-9561-dcdbd1cf1d15
Solar_system[4]

# ╔═╡ 9020bceb-1185-4e63-b686-083bf9dce864
Solar_system[4] = "بهرام" #Gives an error

# ╔═╡ 7914067b-3fda-40cc-b901-d1ebc23a0e45
Solar_system[1:2:end]

# ╔═╡ 1691b131-aa96-4a4e-9b27-e59ed7cb9c81
md"""
## Dictionaries
- ‫یک ساختار داده بسیار منعطف که کلید‌ها را به مقادیرشان وصل می‌کند.
- ‫دیکشنری‌ها ترتیب ندارند!
"""

# ╔═╡ 0afe5b35-3222-4954-a16f-c5856c7948a0
Typing_Scores = Dict("Amin" => 21, "Yousof" => 25)

# ╔═╡ 381e8035-4223-4cdc-afab-39f2151ed2ec
Typing_Scores["Amin"]

# ╔═╡ 1ac2772a-4ecb-4893-87ac-ac0899f5a16d
Typing_Scores["Armin"] = 125

# ╔═╡ 0bc404c6-78fc-4c74-8db9-36bad2253d00
keys(Typing_Scores)

# ╔═╡ 7664670c-a193-4e93-b8c3-7d7eafd6357f
values(Typing_Scores)

# ╔═╡ 874de5c8-3288-4d13-bc9e-91e675e92635
pop!(Typing_Scores,"Amin")

# ╔═╡ 50f74e28-6b1e-4eb5-a76c-43d598f64a69
Typing_Scores

# ╔═╡ b53c63cd-45c3-427f-a233-b076bbe6fdea
md"""
## Strings
‫می‌توان از رشته‌ها هم برای ذخیره اطلاعات استفاده کرد. برای تعیین رشته‌ها می‌توان از \" و \""" استفاده کرد.
"""

# ╔═╡ 9a92be8b-47e1-4a91-baba-3129294ae133
"Here's a string"

# ╔═╡ 60f28910-e104-4ad1-b7bb-e18f16ef8769
"""Here's another string"""

# ╔═╡ 07830420-9fb5-4d2c-ba5e-b641d5b8c636
"This throws an "error""

# ╔═╡ 0e926f39-f16e-4475-a7d8-45fee19c0fb5
"""But this does not throw an "error"!"""

# ╔═╡ 5e471911-bb55-41b6-9137-2c2de6408d7b
md"""
### Indexing and slicing into strings
"""

# ╔═╡ 818b3658-46d0-4a3f-863b-0de0b277756d
str_1 = "Hello, my name is Ali"

# ╔═╡ 44b5fc9f-8186-42e0-b776-3a0647c33b01
str_1[1:5]

# ╔═╡ cce4e94b-e18c-408a-bf4f-0c9a21b852f6
str_1[end]

# ╔═╡ 314248e2-8007-40af-8346-f6bac1139f0a
str_1[2:2:end]

# ╔═╡ 2b5ff341-73b0-46a5-a6a5-017b82fb7418
str_1[1:5] = "Hola!" #This gives an error!

# ╔═╡ 65c038ac-5abe-4269-9c2d-3f4aeb6884d1
str_2 = "Hola, me llamo"*str_1[end-3:end]*"!"

# ╔═╡ 98d6d34e-85f1-42a6-bac7-5e2358bb2675
# استفاده از $ در رشته‌ها
begin
	num_students = 49
	num_present = 49
	println("We have $num_students students in this class!")
	println("There are $(num_students-num_present) absent")
end

# ╔═╡ 5fc61999-97e5-45b1-bc03-0bcb3afd486f
md"""
## Iterators
‫شمارشگر‌ها برای ذخیره اطلاعات به کار نمی‌روند ولی روشی فشرده برای نشان دادن بازه‌ها هستند. کاربرد عمدهٔ این‌ها در حلقه‌ها می‌باشد.

	(start) : [step] : (stop)
"""

# ╔═╡ 99f20685-db16-471d-8b32-f5e8b58fc6e0
1:12

# ╔═╡ d0b79991-8866-480e-95ff-64b1af7c6556
typeof(1:12)

# ╔═╡ a3f203c1-bc4a-4dcf-aaa4-f76e36e88973
collect(1:12)

# ╔═╡ e3e4c670-8563-4b42-a868-641fc8cba6e6
collect(3:3:100)

# ╔═╡ 6994bfda-b1d5-41b0-8507-aeceb34bf729
collect(1//2:2//3:10//1)

# ╔═╡ 99db82be-6368-4153-b084-505d3ff0dc97
md"""
# Loops
‫حلقه‌های `while` و `for` در جولیا وجود دارند.
- `while`

	while *(condition)*
		*(loop body)*
	end

- `for`

	for *(var)* in *(loop iterable)*
		*(loop body)*
	end

"""

# ╔═╡ abfc073c-3d18-4296-a9a9-d3baeebc1586
# let's print multiples of 3 that are between 1 and 100
begin
	n = 1
	while n <= 100
		if n % 3 == 0
			println("remainder of ", " =0")
		end 	# alternatively n%3 == 0 && println(n)
		# println(n)
		n = n + 1 # Alternatively n += 1
	end

end

# ╔═╡ 11bfe131-44d0-4efc-909d-e53f8bc98c0d
# Let's do the same with the for loop
for i in 1:100
	i % 3 == 0 ?  println(i) : print(" ")
end

# ╔═╡ 9edfa13f-6e3e-4017-894c-4b2175d0e133
md"""
‫دستور `for` شکل‌های دیگری هم دارد و کمی منعطف است. به جای `in` می‌توان از `=` و‪ `∈` ‫  

‫هم استفاده کرد.
"""

# ╔═╡ 4214baab-b97f-409e-a096-51cc6f3b9e6a
for name ∈ TA_names
	println(name)
end

# ╔═╡ 8849d7c9-493e-4fea-9775-e28003a750a3
for i = str_1
	println(i)
end

# ╔═╡ 036e1cf4-c892-4397-adfb-69967af9b549
md"""
## Initializing arrays
‫چندین روش برای مقداردهی به آرایه‌ها وجود دارد. در ضمن یک مثال با بعضی از این روش‌ها آشنا می‌شویم. 

### جدول ضرب
‫در این مثال می خواهیم جدول ضرب را آماده کنیم.
"""

# ╔═╡ 7aa32c88-732e-4277-bd5b-78818411fafa
begin
	mat_a = zeros(Int,6,6) #Alternatively ones() initializes with 1
	println(mat_a)
	for i in 1:6
		for j in 1:6
			mat_a[i,j] = i*j
		end
	end
	mat_a
end

# ╔═╡ b630b8d5-ff38-413e-ac5d-d6fd59d4cf1b
begin
	mat_b = Array{Int64}(undef,6,6)
	println(mat_b)
	for i in 1:6, j in 1:6
		mat_b[i,j] = i*j
	end
	mat_b
end
		

# ╔═╡ f7d5c4bf-c616-4392-91e4-8629b64bc508
# Array comprehension
mat_c = [i*j for i in 1:6, j in 1:6]

# ╔═╡ 86215e9d-3f77-4231-9198-968034f5005c
[i^2 for i in 1:5]

# ╔═╡ Cell order:
# ╟─d93d5bba-c250-4600-ad29-aaa3a51d39db
# ╟─923ff7d6-7586-11ee-009a-9f61ab3db3e8
# ╟─e4328b2e-3c79-4884-92be-be27b1e8ee53
# ╟─b3e936d4-32eb-4228-bfa7-58107ba6bc47
# ╟─f4efc160-37ec-49b3-9c8d-05b018867dd7
# ╠═b78b6f82-1470-470e-b37c-8e8cf036a272
# ╠═645b84f6-0385-478c-8464-63d1594e64c0
# ╠═478ef34e-fa2d-46be-a70b-8648d190fa68
# ╠═800c7bae-645a-4d15-a26e-5a2eb6efa6b3
# ╠═aa0d30d8-f31e-40c9-bea1-14698a5c8f73
# ╠═39a7d13a-69e8-4386-bf93-9a095f5a1d9d
# ╟─30d77667-82c6-4c08-9155-fcae1eed7b9e
# ╠═03374ce7-6cbd-413d-a2b6-9227d744b70d
# ╠═fd24ece8-757f-4f58-9270-96900d8e331b
# ╠═8f8da2d9-5959-4b0e-a327-c84c2683684a
# ╠═b0851f1f-f017-4a9b-b2f3-c8449aff49fe
# ╟─fa86e242-72a3-4bdb-937f-aa91de7601aa
# ╠═774df522-48de-4cfd-b9c6-1c2057359009
# ╠═f7fa1b2d-67ed-4394-b58f-3d9d27608065
# ╠═6c8656fa-e2b5-4e40-9677-421108e59078
# ╠═6b4085b1-bcb0-41da-b200-7a3a0a72e4cf
# ╠═b229a208-0226-4a73-babf-d89ad2d8f556
# ╠═1cc301b6-c380-4170-94c8-e95da1f8dfdf
# ╠═9d23a468-f4f2-410a-8013-dfa53467e95a
# ╠═01f905ab-1422-4e19-be90-3670702adc68
# ╟─f89b770e-0424-483a-be2e-85c9e3dfd1fb
# ╠═600bd661-1d15-4ff3-a44e-fb8c2f5dd07d
# ╠═4c850650-bb3e-4e1b-8cf8-6154df99ae13
# ╠═13faecf4-3bf7-42d6-bb24-00dc1f39e764
# ╠═d28c186a-61f3-4aca-8abf-63e7c9190e40
# ╠═faa84619-7d55-4da7-9163-6fe20231ddab
# ╠═1e55bb19-6ae7-40e9-b682-3de0737ae61a
# ╠═1d83887e-dfc4-4abe-a29f-509a2b3a03ba
# ╠═10376cf1-aae8-43d5-9026-16cbf3a6e7f4
# ╠═dca521fe-4f15-4aa3-9791-5c053b3f0696
# ╟─030a878f-6a36-443a-97c1-508f7b5f656a
# ╠═9fa4ffb5-10b7-4508-8e4f-13fe5088149a
# ╠═f42c2f4a-19ea-4645-9adf-34ef2b6cd60b
# ╠═4b8e6225-f93e-48f9-9561-dcdbd1cf1d15
# ╠═9020bceb-1185-4e63-b686-083bf9dce864
# ╠═7914067b-3fda-40cc-b901-d1ebc23a0e45
# ╟─1691b131-aa96-4a4e-9b27-e59ed7cb9c81
# ╠═0afe5b35-3222-4954-a16f-c5856c7948a0
# ╠═381e8035-4223-4cdc-afab-39f2151ed2ec
# ╠═1ac2772a-4ecb-4893-87ac-ac0899f5a16d
# ╠═0bc404c6-78fc-4c74-8db9-36bad2253d00
# ╠═7664670c-a193-4e93-b8c3-7d7eafd6357f
# ╠═874de5c8-3288-4d13-bc9e-91e675e92635
# ╠═50f74e28-6b1e-4eb5-a76c-43d598f64a69
# ╟─b53c63cd-45c3-427f-a233-b076bbe6fdea
# ╠═9a92be8b-47e1-4a91-baba-3129294ae133
# ╠═60f28910-e104-4ad1-b7bb-e18f16ef8769
# ╠═07830420-9fb5-4d2c-ba5e-b641d5b8c636
# ╠═0e926f39-f16e-4475-a7d8-45fee19c0fb5
# ╟─5e471911-bb55-41b6-9137-2c2de6408d7b
# ╠═818b3658-46d0-4a3f-863b-0de0b277756d
# ╠═44b5fc9f-8186-42e0-b776-3a0647c33b01
# ╠═cce4e94b-e18c-408a-bf4f-0c9a21b852f6
# ╠═314248e2-8007-40af-8346-f6bac1139f0a
# ╠═2b5ff341-73b0-46a5-a6a5-017b82fb7418
# ╠═65c038ac-5abe-4269-9c2d-3f4aeb6884d1
# ╠═98d6d34e-85f1-42a6-bac7-5e2358bb2675
# ╟─5fc61999-97e5-45b1-bc03-0bcb3afd486f
# ╠═99f20685-db16-471d-8b32-f5e8b58fc6e0
# ╠═d0b79991-8866-480e-95ff-64b1af7c6556
# ╠═a3f203c1-bc4a-4dcf-aaa4-f76e36e88973
# ╠═e3e4c670-8563-4b42-a868-641fc8cba6e6
# ╠═6994bfda-b1d5-41b0-8507-aeceb34bf729
# ╟─99db82be-6368-4153-b084-505d3ff0dc97
# ╠═abfc073c-3d18-4296-a9a9-d3baeebc1586
# ╠═11bfe131-44d0-4efc-909d-e53f8bc98c0d
# ╟─9edfa13f-6e3e-4017-894c-4b2175d0e133
# ╠═4214baab-b97f-409e-a096-51cc6f3b9e6a
# ╠═8849d7c9-493e-4fea-9775-e28003a750a3
# ╟─036e1cf4-c892-4397-adfb-69967af9b549
# ╠═7aa32c88-732e-4277-bd5b-78818411fafa
# ╠═b630b8d5-ff38-413e-ac5d-d6fd59d4cf1b
# ╠═f7d5c4bf-c616-4392-91e4-8629b64bc508
# ╠═86215e9d-3f77-4231-9198-968034f5005c
