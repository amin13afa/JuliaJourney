### A Pluto.jl notebook ###
# v0.19.30

using Markdown
using InteractiveUtils

# ╔═╡ 4ea4d37e-7802-11ee-35f7-6550d0a3d497
html"<button onclick='present()'>present</button>"

# ╔═╡ a04a5ecc-d9da-4525-99c1-3c51a5d17bb0
md"""
# Functions, Arrays and Matrices
"""

# ╔═╡ 3585000e-81fe-495f-806f-e2510bd78da3
md"""
## ‫توابع در جولیا
- توابع تک خطی
- توابع چند خطی
- توابع با آرگومان‌های دلخواه و مقادیر پیش‌فرض
- توابع بی‌نام (لامبدا)
"""

# ╔═╡ 1aa4848b-2c44-4971-91c9-6f2c81056f61
md"""
## توابع تک خطی

توابع تک خطی را می‌توان به راحتی به صورت زیر تعریف کرد‫:

	f(arg1,arg2,...) = *(function body)*



اسم تابع لزومی ندارد‫ f باشد و می‌توان هر عنوانی گذاشت.
"""

# ╔═╡ 0e0bfd3f-ba53-43d8-953a-7cdb8163af1e
md"""
مثلا تابع زیر طول دو ضلع روبروی وتر در مثلث قائم‌الزاویه را می‌گیرد و طول وتر را حساب می‌کند:
"""

# ╔═╡ 94d78e43-3019-4a95-ad69-fb22c10efa19
d(a,b) = sqrt(a^2+b^2)

# ╔═╡ fdff9a6e-a9e3-47ad-b5aa-f10bf756fea1
d(12,5)

# ╔═╡ 27477594-1cd5-425a-a503-ecbfd0f52b7d
md"""
یا تابع زیر یک ضلع و ارتفاع مثلثی را به عنوان ورودی می‌گیرد و مساحت آن را برمی‌گرداند‫:
"""

# ╔═╡ e6d81e70-b5c0-4117-878d-40794917a025
area_of_triangle(b,h) = b*h/2

# ╔═╡ 59c479a2-d523-46f9-aed7-2ce94f9e97e2
area_of_triangle(3,4)

# ╔═╡ ae3c37d9-6a44-4ca5-92b8-cf95b6bcb2d8
md"""
یا تابع زیر ثابت فنر و جابجایی را به عنوان ورودی می‌گیرد و نیروی وارد بر جسم را حساب می‌کند‫:

"""

# ╔═╡ 680e3ae0-4d51-4324-9a66-83fc823e598f
Hooke(k,Δx) = -k*Δx 

# ╔═╡ cda6042b-596d-4c66-aec0-ddd315f7c96e
md"""
این متد در عین سادگی بعضی و‫قت‌ها می‌تواند بسیار قدرتمند نیز باشد. برای مثال در مورد زیر یک نمونه از توابع بازگشتی برای تابع فیبوناچی را می‌بینیم.
"""

# ╔═╡ 2509705e-bfc3-4ab6-9674-4786883abda4
fib(n::Integer) = n <= 2 ? 1 : fib(n-1) + fib(n-2)

# ╔═╡ fd4f158e-952b-4ecd-b40d-923e1a688d80
subtypes(Integer)

# ╔═╡ 9e968818-7cfe-42ac-a340-845a1621aba1
subtypes(Signed)

# ╔═╡ 87f934b6-4738-4ce4-8024-ac51f18a63e2
fib(Int8(45))

# ╔═╡ 2b301338-c195-402d-bf6e-3d4f32cbec01
[fib(i) for i in 1:20]

# ╔═╡ 16356028-6a58-4181-af3e-a5f9c63e0004
md"""
## توابع چند خطی

توابع چندخطی و پیچیده‌تر را می‌توان به صورت زیر تعریف کرد‫:

	f(arg1, arg2, ...)
		*(body function)*
	end

‫در این حالت تابع به صورت اتومات خط آخر تابع را به عنوان خروجی برمی‌گرداند. البته می‌توان از دستور `return` نیز استفاده کرد.
"""

# ╔═╡ 4e466540-0480-498a-90e6-0dcff0ee4fd2
md"""
برای مثال ‫تابع زیر ۳ ضلع یک مثلث را می‌گیرد و مساحت آن را برمی‌گرداند:
"""

# ╔═╡ 46060330-87a5-4fd3-8cf8-00888c67aeda
function Heron(a,b,c)
	s = (a+b+c)/2
	√(s*(s-a)*(s-b)*(s-c))
end

# ╔═╡ 6defc613-4150-4a94-998f-f0b925b803c6
Heron(3,4,5)

# ╔═╡ fb05fcc9-ad44-4d6f-8018-a13004bed9c3
md"""
## Optional arguments
بعضی‫ وقت‌ها می‌توانیم به بعضی از پارامترهای توابع مقادیری پیش‌فرض نسبت بدهیم تا  نیاز نباشد همیشه آن‌ها را وارد کنیم.
"""

# ╔═╡ 23933a0b-346e-4967-8b46-aca934ba1d4e
age(birth_year, year = 1402 ) = year - birth_year

# ╔═╡ f985977d-daca-4b14-b20f-cad8805c3f2c
age(1384)

# ╔═╡ 145b40fb-1305-4d5b-aa7c-7ec6d39364c8
age(1387,1400)

# ╔═╡ d09383cc-6244-444e-9185-cbcfe83fd8bc
md"""
## Keyword arguments
‫در بعضی توابع به دلیل این که تعداد آرگومان‌ها می‌توانند بسیار زیاد باشند، نیاز داریم که آن‌ها را با اسم فراخوانی کنیم. توابع دارای ورودی‌های دارای اسم به این صورت تعریف می‌شوند:

	function f(arg1, arg2 , ... ; named_arg1 = value1, named_arg2 = value2, ...)

از مثال‌های‫ معروف که در ادامهٔ درس خواهیم دید تابع `plot` از پکیج `Plots` است که تعداد زیادی آرگومان دارد.  
"""

# ╔═╡ e58ba6b1-5899-4edc-b7dd-56f0dc912962
function is_TA_team_sorted(;n1 = "Amin", n2 = "Armin", n3 = "Yousof")
	if n1 < n2 < n3
		return true
	end
	return false
end

# ╔═╡ de82b364-5d31-49ca-b01f-9c8879d7c9b8
is_TA_team_sorted()

# ╔═╡ 7947b00d-9177-48a8-9df9-dda7fb2b1225
is_TA_team_sorted(n2 = "Ali")

# ╔═╡ cf0357da-1629-419d-84f9-855270a950ee
md"""
## توابع بی‌نام
‫بعضی اوقات ممکن است لازم داشته باشید تابعی را صرفا در موقعیتی خاص تعریف کنید و همان جا استفاده کنید بدون این که به آن نامی بدهید. 
‫برای مثال تابع `map` یک تابع را به تک‌تک عناصر یک آرایه اعمال می‌کند. در این تابع استفاده از توابع لامبدا بسیار شایع است. 
‫این توابع به این صورت تعریف می‌شوند:

	x -> f(x)
"""

# ╔═╡ 2b1640e1-601a-4bfd-83af-d2abce72d3dd
x -> x^2 - 3*x

# ╔═╡ 3887be33-e648-4759-a770-0f909316b377
(x -> x^2 - 3*x)(3)

# ╔═╡ 74fd6d74-273e-4e5b-9022-529c1676f010
map(sin, [π,π/2,π/3])

# ╔═╡ fdef3f4d-8667-47fa-a8a1-7503fe346ab8
tmp(x) = sin(x)^2+cos(x)

# ╔═╡ b0206170-7746-486a-90f4-646e91f4ee29
map(tmp, [π,π/2,π/3])

# ╔═╡ 4a054aa8-3aba-4b01-9783-6a7db20e52cc
map(x -> sin(x)^2+cos(x), [π,π/2,π/3])

# ╔═╡ 5373b047-7453-4b3e-901b-ef241a8981c7
md"""
## آرایه‌ها و ماتریس‌ها

در جلسه قبل کمی با آرایه‌ها و ماتریس‌ها آشنا شدیم. اکنون با بعضی از قابلیت‌های دیگر آن‌ها نیز آشنا می‌شویم‫.

- Broadcasting (پخش کردن)
- Matrix multiplication (ضرب ماتریسی)
- Dot product (ضرب نقطه‌ای)
- Element-wise product (ضرب مستقیم)
- Backslash operator (\\)
- `hcat` and `vcat`

"""

# ╔═╡ e72385d7-985c-4ccc-b028-8853294fd9f5
md"""
## Broadcasting
‫جولیا قابلیت جذابی دارد به نام پخش کردن. کاربرد این قابلیت به این صورت است که اگر یک نقطه بین اسم تابع و آرگومان‌های بگذاریم؛ آن‌گاه تابعی که قبلا فقط بر روی یک آرگومان تعریف شده بود را می‌توان بر روی تک تک عناصر یک آرایه اجرا کرد.
"""

# ╔═╡ 621e37b0-e2db-45a4-aee4-acd72c0e9185
rand(5)

# ╔═╡ 4f6bb94b-85f2-43f4-ad7b-453c395b8977
sin.(rand(3))

# ╔═╡ 92052df5-ead0-4dd5-b4e7-bec441714e7b
sin.([π/2,π/3,π/6])

# ╔═╡ b3be3242-e877-4e30-a70d-c3d16435ffdc
d.([1 2;3 4],[4 5;6 7])

# ╔═╡ 76697ba0-385b-470e-8a33-ac8598330966
md"""
## عملیات ماترسی
"""

# ╔═╡ dba26eda-fe27-4896-b930-4e375a48c2e0
A = rand(1:4, 3, 3)

# ╔═╡ 65086903-7d69-4a88-a1a7-cc41af28c9bc
B = rand(3:6, 3, 4)

# ╔═╡ cca35112-a000-47c3-8727-27bbeba2069c
A*B

# ╔═╡ a1a79d24-04c0-424f-af9b-a2f052bb4e4c
A' #ترانهاده

# ╔═╡ b75e29c6-cfed-4be0-8b47-af5dfe8d0f2b
B'A # Try B'A too

# ╔═╡ 90e678fa-3c33-42cd-ae15-a66ea22e2f0b
(B'A)'-A'B

# ╔═╡ 20de5746-8c8a-43da-8335-85ae686138b7
[A B] # Equivalently `hcat`

# ╔═╡ 1a372791-e435-4526-8ae3-0bbb14c6c4c1
hcat(A,B)

# ╔═╡ 705bce8e-3610-4de1-a77c-4e2560229694
vcat(A,B') # Alternatively [A;B']

# ╔═╡ ba05612b-d873-4839-8dc4-1a5f9fadcc58
[A;B']

# ╔═╡ 44c7b7f6-7230-4fe6-b3df-d25ee8dd8b33
md"""
## یک سؤال
فکر می‌کنید کد زیر چه مقداری برمی‌گرداند؟
"""

# ╔═╡ e8f3a937-f9e3-4005-8d63-387d3ba1a994
begin
	C = [1 2; 3 4]
	D = C
	F = copy(C)
	[D F]
end

# ╔═╡ e6dafff6-5b6c-46c4-99a8-1651a862efd8
C[1,1] = 5

# ╔═╡ 5942a6f1-b7d5-4ba5-8a50-6ccbdbb84d53
[D F]

# ╔═╡ 1a97e2d5-5b2a-487d-b569-2d840b4caa7b
md"""
‫در واقع علامت = در این جا به جولیا می‌گوید که این دو عبارت یک چیز هستند و هر دو به یک جا در حافظه اشاره می‌کنند!
"""

# ╔═╡ c0d9d465-6182-4b6c-882a-9f6e3cd6de34
md"""
‫معادلهٔ زیر را در نظر بگیرید:

‍‍```` A x = B ````

در جولیا می‌توان این معادله را با عملگر \\ حل کرد‫.
"""

# ╔═╡ a5a4ec59-cd42-470b-93e8-b5c83e697a42
M = rand(1:10, 5,5)

# ╔═╡ 7f1f88ba-9d87-4cd0-bb47-a76eff733d3e
x = ones(5)

# ╔═╡ 19cba211-6624-4bb0-94c1-8551ade9c709
B2 = M*x

# ╔═╡ d5bcf218-9d7b-4e24-832c-460cd637eb94
B3 = rand(5)

# ╔═╡ ddf38c34-7c5e-4335-a6d1-0a20770ae2f2
M\B3

# ╔═╡ ae180cec-4252-40c5-a889-42606a85a04f
M\B2

# ╔═╡ 81006eb2-0973-4a43-aef5-a466ed86a691
vec1 = rand(3)

# ╔═╡ 91eac850-a046-47a1-bb50-b19ad34299e7
vec2 = rand(3)

# ╔═╡ 759e06a2-bb64-4fd9-991b-b51df925c126
vec1'vec2 #Alternatively vec1'*vec2, this is how you do a dot product

# ╔═╡ d65b6512-766e-41ec-be11-d968e21d54e7
vec1*vec2'

# ╔═╡ b02aa541-ba27-4e64-ba3a-5d6f8cecda20
A

# ╔═╡ 25e3ec38-629a-4b69-9b72-eccd41d7169e
A*A

# ╔═╡ 9ee5ce50-c1e7-4cca-9a4f-dfe41e383986
A.*A # This is an element-wise product. Sometimes called the Hadamard or Schur product.

# ╔═╡ 4838d492-2092-4540-901c-0993057b7dcf
inv(M)

# ╔═╡ bcecab76-83fc-4b53-afb6-363212258e5e
one(rand([0,5],5,5))

# ╔═╡ 7d8e6dac-3d3a-4dc6-a992-091bdef10edc


# ╔═╡ 25ac555d-ca81-4d2e-b82c-6b708e210ce8
rand([5],5,5)

# ╔═╡ bb5c5f44-283d-412e-b035-b7057147e388
inv(M)

# ╔═╡ 96be9305-d94f-4e0f-bd19-2df1778946bd
md"""
## Project Euler #1 and an introduction to **Order**
"""

# ╔═╡ baf94983-3bb5-4bea-944c-7771283fbbc9
begin
	s = 0
	for i in 1:999
		if i%3 == 0 || i%5 == 0
			s += i # Alternatively s = s + i
		end
	end
	s

end

# ╔═╡ 047617e6-cb05-44a3-a431-921f5ddfe298
function sum3_5_15(n)
	n3 = floor(n//3)
	n5 = floor(n//5)
	n15 = floor(n//15)
	return 3*n3*(n3+1)/2+5*n5*(n5+1)/2-15*n15*(n15+1)/2
end

# ╔═╡ 9bfe475e-d641-42b1-b794-a4c46892f679
sum3_5_15(999)

# ╔═╡ 716cea5d-d321-4af8-90c4-8c8c136a0be6
md"""
# Homework 2
یک نتبوک پلوتو ایجاد کنید و کارهای زیر را در آن انجام دهید‫:
1. ‫۹رقم سمت راست شمارهٔ دانشجویی خود را در ماتریسی  ۳x۳ به نام A ذخیره کنید.
2. ‫‫تعریف دترمینان را از کتب دبیرستان به خاطر بیاورید. برای یک ماتریس دو در دو دترمینان عبارت است از حاصلضرب درایه‌های روی قطر اصلی منها حاصلضرب درایه‌های روی قطر فرعی:

````\det\left(\begin{matrix}a & b \\ c & d\end{matrix}\right) = ad-bc\, .````

  می‌توان دترمینان ماتریس‌های بزرگ‌تر را بر حسب دترمینان زیرماتریس‌های کوچک‌تر آن بسط داد‫. تابعی بنویسید که اگر ماتریس ۲x۲ بود عبارت فوق را حساب کند و اگر ۳x۳ بود به صورت بازگشتی دترمینان را بر حسب زیرماتریس‌های کوچک‌تر بسط داده و حساب کند. 
3. ‫با استفاده از تابعی که تعریف کردید، دترمینان A را حساب کنید.
4. ‫تابعی تعریف کنید که یک ماتریس وروری بگیرد و حاصل جمع درایه‌های روی قطر اصلی آن را حساب کند. این تابع رد ماتریس (trace) نام دارد.
5. ‫ چک کنید که ماتریس A در اتحاد زیر صدق می‌کند: 

````A^{-1} = \frac{1}{\det(A)}[\frac 1 2 ((\text{tr} A)^2-\text{tr}A^2)I-A\text{tr}A+A^2]\, ,````

که در رابطهٔ فوق‫ I ماتریس واحد است که عناصر روی قطر اصلی آن ۱ و بقیه عناصر آن ۰ می‌باشد. در صورتی که دترمینان ماتریس A برابر ۰ بود، یک واحد به تمام عناصر روی قطر اصلی آن اضافه کنید و گام‌های ۳ تا ۵ را تکرار کنید.

در این تکلیف اجازه ندارید از پکیج‌های جانبی جولیا استفاده کنید.

مانند سری قبل فایل با فرمت 

(شماره دانشجویی)hw2.jl

ذخیره و بارگذاری کنید‫.
"""

# ╔═╡ Cell order:
# ╠═4ea4d37e-7802-11ee-35f7-6550d0a3d497
# ╟─a04a5ecc-d9da-4525-99c1-3c51a5d17bb0
# ╟─3585000e-81fe-495f-806f-e2510bd78da3
# ╟─1aa4848b-2c44-4971-91c9-6f2c81056f61
# ╟─0e0bfd3f-ba53-43d8-953a-7cdb8163af1e
# ╠═94d78e43-3019-4a95-ad69-fb22c10efa19
# ╠═fdff9a6e-a9e3-47ad-b5aa-f10bf756fea1
# ╟─27477594-1cd5-425a-a503-ecbfd0f52b7d
# ╠═e6d81e70-b5c0-4117-878d-40794917a025
# ╠═59c479a2-d523-46f9-aed7-2ce94f9e97e2
# ╟─ae3c37d9-6a44-4ca5-92b8-cf95b6bcb2d8
# ╠═680e3ae0-4d51-4324-9a66-83fc823e598f
# ╟─cda6042b-596d-4c66-aec0-ddd315f7c96e
# ╠═2509705e-bfc3-4ab6-9674-4786883abda4
# ╠═fd4f158e-952b-4ecd-b40d-923e1a688d80
# ╠═9e968818-7cfe-42ac-a340-845a1621aba1
# ╠═87f934b6-4738-4ce4-8024-ac51f18a63e2
# ╠═2b301338-c195-402d-bf6e-3d4f32cbec01
# ╟─16356028-6a58-4181-af3e-a5f9c63e0004
# ╟─4e466540-0480-498a-90e6-0dcff0ee4fd2
# ╠═46060330-87a5-4fd3-8cf8-00888c67aeda
# ╠═6defc613-4150-4a94-998f-f0b925b803c6
# ╟─fb05fcc9-ad44-4d6f-8018-a13004bed9c3
# ╠═23933a0b-346e-4967-8b46-aca934ba1d4e
# ╠═f985977d-daca-4b14-b20f-cad8805c3f2c
# ╠═145b40fb-1305-4d5b-aa7c-7ec6d39364c8
# ╟─d09383cc-6244-444e-9185-cbcfe83fd8bc
# ╠═e58ba6b1-5899-4edc-b7dd-56f0dc912962
# ╠═de82b364-5d31-49ca-b01f-9c8879d7c9b8
# ╠═7947b00d-9177-48a8-9df9-dda7fb2b1225
# ╟─cf0357da-1629-419d-84f9-855270a950ee
# ╠═2b1640e1-601a-4bfd-83af-d2abce72d3dd
# ╠═3887be33-e648-4759-a770-0f909316b377
# ╠═74fd6d74-273e-4e5b-9022-529c1676f010
# ╠═fdef3f4d-8667-47fa-a8a1-7503fe346ab8
# ╠═b0206170-7746-486a-90f4-646e91f4ee29
# ╠═4a054aa8-3aba-4b01-9783-6a7db20e52cc
# ╟─5373b047-7453-4b3e-901b-ef241a8981c7
# ╟─e72385d7-985c-4ccc-b028-8853294fd9f5
# ╠═621e37b0-e2db-45a4-aee4-acd72c0e9185
# ╠═4f6bb94b-85f2-43f4-ad7b-453c395b8977
# ╠═92052df5-ead0-4dd5-b4e7-bec441714e7b
# ╠═b3be3242-e877-4e30-a70d-c3d16435ffdc
# ╟─76697ba0-385b-470e-8a33-ac8598330966
# ╠═dba26eda-fe27-4896-b930-4e375a48c2e0
# ╠═65086903-7d69-4a88-a1a7-cc41af28c9bc
# ╠═cca35112-a000-47c3-8727-27bbeba2069c
# ╠═a1a79d24-04c0-424f-af9b-a2f052bb4e4c
# ╠═b75e29c6-cfed-4be0-8b47-af5dfe8d0f2b
# ╠═90e678fa-3c33-42cd-ae15-a66ea22e2f0b
# ╠═20de5746-8c8a-43da-8335-85ae686138b7
# ╠═1a372791-e435-4526-8ae3-0bbb14c6c4c1
# ╠═705bce8e-3610-4de1-a77c-4e2560229694
# ╠═ba05612b-d873-4839-8dc4-1a5f9fadcc58
# ╟─44c7b7f6-7230-4fe6-b3df-d25ee8dd8b33
# ╠═e8f3a937-f9e3-4005-8d63-387d3ba1a994
# ╠═e6dafff6-5b6c-46c4-99a8-1651a862efd8
# ╠═5942a6f1-b7d5-4ba5-8a50-6ccbdbb84d53
# ╟─1a97e2d5-5b2a-487d-b569-2d840b4caa7b
# ╟─c0d9d465-6182-4b6c-882a-9f6e3cd6de34
# ╠═a5a4ec59-cd42-470b-93e8-b5c83e697a42
# ╠═7f1f88ba-9d87-4cd0-bb47-a76eff733d3e
# ╠═19cba211-6624-4bb0-94c1-8551ade9c709
# ╠═d5bcf218-9d7b-4e24-832c-460cd637eb94
# ╠═ddf38c34-7c5e-4335-a6d1-0a20770ae2f2
# ╠═ae180cec-4252-40c5-a889-42606a85a04f
# ╠═81006eb2-0973-4a43-aef5-a466ed86a691
# ╠═91eac850-a046-47a1-bb50-b19ad34299e7
# ╠═759e06a2-bb64-4fd9-991b-b51df925c126
# ╠═d65b6512-766e-41ec-be11-d968e21d54e7
# ╠═b02aa541-ba27-4e64-ba3a-5d6f8cecda20
# ╠═25e3ec38-629a-4b69-9b72-eccd41d7169e
# ╠═9ee5ce50-c1e7-4cca-9a4f-dfe41e383986
# ╠═4838d492-2092-4540-901c-0993057b7dcf
# ╠═bcecab76-83fc-4b53-afb6-363212258e5e
# ╠═7d8e6dac-3d3a-4dc6-a992-091bdef10edc
# ╠═25ac555d-ca81-4d2e-b82c-6b708e210ce8
# ╠═bb5c5f44-283d-412e-b035-b7057147e388
# ╠═96be9305-d94f-4e0f-bd19-2df1778946bd
# ╠═baf94983-3bb5-4bea-944c-7771283fbbc9
# ╠═047617e6-cb05-44a3-a431-921f5ddfe298
# ╠═9bfe475e-d641-42b1-b794-a4c46892f679
# ╠═716cea5d-d321-4af8-90c4-8c8c136a0be6