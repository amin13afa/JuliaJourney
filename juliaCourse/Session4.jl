### A Pluto.jl notebook ###
# v0.19.32

#> [frontmatter]
#> title = "Basics of julia"
#> date = "2023-10-25"
#> tags = ["Julia"]
#> 
#>     [[frontmatter.author]]
#>     name = "Ali Hamed Moosavian"
#>     url = "github.com/CNOT"

using Markdown
using InteractiveUtils

# ╔═╡ 67617894-70d8-11ee-22bf-e321edf16e24
md"""
# Basics
## Other resources
### English
#### Tutorials and courses
‫دوره‌های زیر برای جولیا وجود دارند:
- مقدمه‌ای بر جولیا (جین هریمن)
- - [https://juliaacademy.com/p/intro-to-julia](https://juliaacademy.com/p/intro-to-julia)
- آموزش مقدمات جولیا (مارتین ماس)
- - [https://www.matecdev.com/posts/julia-tutorial-science-engineering.html](https://www.matecdev.com/posts/julia-tutorial-science-engineering.html)
- کارگاه‌های جولیا توسط کارستن باور
- - [https://carstenbauer.eu/#workshops](https://carstenbauer.eu/#workshops)
- MIT Computational Thinking course
- - [https://computationalthinking.mit.edu/](https://computationalthinking.mit.edu/Fall23/)
#### Seeking help:
‫اگر سؤالی دارید می‌توانید از طرق زیر کمک بخواهید:
- Slack: [https://julialang.org/slack/](https://julialang.org/slack/)
- - بسیار سریع جواب می‌دهند‫.
- - ‫جواب‌ها برای طولانی مدت باقی نمی‌مانند.
- - ممکن است به‫ vpn نیاز باشد.
- Zulip: [https://julialang.zulipchat.com/register/](https://julialang.zulipchat.com/register/)
- - ‫مشابه اسلک ولی از بعضی نظرات بهتر می‌باشد ولی جامعهٔ کوچک‌تری دارد.
- Discourse: [https://discourse.julialang.org/](https://discourse.julialang.org/)
- - فروم بزرگ و فعالی برای سؤالات و بحث پیرامون جولیا

### فارسی
دوره‌های زیادی وجود دارند، در ادامه چند نمونه معرفی می‌شوند‫:
- [https://hamruyesh.com/product/julia-programming-projects-course-basics/](https://hamruyesh.com/product/julia-programming-projects-course-basics/)
- [آموزش برنامه نویسی با جولیا از صفر تا پیشرفته](https://toplearn.com/courses/-%D8%AA%D8%AD%D8%AA-%D9%88%DB%8C%D9%86%D8%AF%D9%88%D8%B2-/%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D9%86%D9%88%DB%8C%D8%B3%DB%8C-%D8%A8%D8%A7-%D8%AC%D9%88%D9%84%DB%8C%D8%A7-%D8%A7%D8%B2-%D8%B5%D9%81%D8%B1-%D8%AA%D8%A7-%D9%BE%DB%8C%D8%B4%D8%B1%D9%81%D8%AA%D9%87)
- [‫مرجع فارسی زبان برنامه نویسی Julia](https://juliair.github.io/tutorials/)
- دوره‌های پولی روی فرادرس و‫ ...


## Assign variable
- ‫می‌توانیم با = به متغیرها مقدار بدهیم.

"""

# ╔═╡ 5ab3c862-5399-46de-8e56-cdf9ab446cd7
first_variable_x = 5

# ╔═╡ bceb16e2-9b11-4c67-93c1-f6295ea8fa12
SecondVariableY = 4.5

# ╔═╡ 3c7324b9-a0a9-4ac6-9cfa-db0f18f5f2a9
md"""
- ‫جولیا خودش نوع متغیر را تشخیص می‌دهد و بعد از تشخیص کد را به صورت بهینه اجرا می‌کند.
"""

# ╔═╡ dae74470-f6cf-4126-b188-ac9f2fa56645
typeof(first_variable_x)

# ╔═╡ 3b1b5148-ddfe-40f7-9bc0-0035b6901e42
typeof(SecondVariableY)

# ╔═╡ a61f5dcb-a437-4306-a294-2981bf9b6d49
z = first_variable_x*SecondVariableY

# ╔═╡ 0a61fd3f-c442-40bf-9701-60d5dd3a40a8
typeof(z)

# ╔═╡ e3ed346e-59ba-4f29-80cc-47b5e0169cdb
md"""
## Autocomplete
- ‫توجه کنید که لازم نیست اسم متغیرها یا توابع و ... را کامل وارد کنید، با زدن کلید Tab اگر یک گزینه وجود داشته باشد آن را اتومات کامل می‌کند.
- ‫اگر چند گزینه وجود داشته باشد چه اتفاقی می‌افتد؟
"""


# ╔═╡ 6899cacf-cf25-4759-a3df-1bec9ca518c5
#use <Tab> to autocomplete
# pri 

# ╔═╡ 8f55dab5-896b-4184-878d-7403cbec8c0d
md"""
### Unicode and Math symbols
‫جولیا بسیاری از نمادها و سمبل‌ها را پشتیبانی می‌کند. برای وارد کردن آنها کافی است پس از علامت \ اسم آن‌ها را وارد کنید و Tab یا Enter را بزنید. مثلا:
- \blacksmiley = ☻
- \pentagon = ⬠
- \sqrt = √
- `\_2` = ₂
این امکان در‫ REPL و محیط‌های دیگر هم مهیا می‌باشد.
"""

# ╔═╡ 4430061b-6e33-47e3-baca-47d8a7ad6b88
√4

# ╔═╡ aa2c577e-b604-4e25-810b-e6c404d4d655
2π 

# ╔═╡ a71d4369-ee0e-4a72-a599-4e10b0a635e7
ℯ # \euler

# ╔═╡ 71929cf1-6bda-4768-a8d1-902b3f0fe73d
ϕ = (1 + √5)/2

# ╔═╡ 5e19a99e-c71f-424a-be02-4b53a6066b20
md"""
## ‫یک نکته در مورد محیط Pluto
در هر سلول محیط *پلوتو* فقط یک خط فرمان می‌توان وارد کرد‫. اگر بیش از یک خط فرمان می‌خواهید وارد کنید دستورات را بین `begin` و `end` قرار دهید. مثلا:
"""

# ╔═╡ 903e86d3-4362-4bab-96b4-ee5dca107e18
a = 5
b = a*2 # this throws an error

# ╔═╡ c170a64b-060f-4ada-abd6-75cf6731ea07
begin
	a = 5
	b = 2*a
end

# ╔═╡ edb7a1d7-4f55-4173-88c0-da92b3002386
md"""
## ‫توابع print و println
اگر بخواهیم مقدار یک متغیر یا تابع در خروجی استاندارد چاپ شود از دستورات فوق می‌توان ‫استفاده کرد. تفاوت  `println` با `print` در این است که در انتها دستور خط جدید را نیز می‌دهد.
"""

# ╔═╡ 6abaf5a0-f641-4bcf-aa8f-c90acbfc4270
begin
	print(2*3," ")
	print(4*5)
end

# ╔═╡ 3e187c4c-97e9-475d-b5db-fbd0d37af5af
begin
	println(2*3)
	println(4*5)
end

# ╔═╡ 886f2d01-5d02-45a7-8bd3-84699c0abd16
md"""
به این توابع می‌توان چند ورودی نیز داد‫.
"""

# ╔═╡ 55228f18-655d-4cba-8d25-0c6504566644
println(2*3,4*5)

# ╔═╡ 398644bd-6986-4d9e-aa7a-2945515ccef4
md"""
## ‫انواع متغیرها
‫جولیا بسیاری از متغیرها را به صورت پیش‌فرض پشتیبانی می‌کند. جولیا نوع متغیرها را نیز اتوماتیک تعیین می‌کند و نیازی وارد کردن دستی نوع متغیرها مثل بعضی از زبان‌های برنامه‌نویسی نیست.
"""

# ╔═╡ 2c5be7be-c7ad-44d6-9639-0067d582f917
Int == Int64

# ╔═╡ 4e270aef-866a-4659-95c8-02692d0db831
typeof(6)

# ╔═╡ 889ad361-77ec-46a2-9b3b-f14b99d0a777
supertypes(Int)

# ╔═╡ 17a30030-4891-41f4-9901-61b8cf3856e1
subtypes(Number)

# ╔═╡ 9713a554-b3e8-4bb1-bb31-6b5b878c95d4
subtypes(AbstractFloat)

# ╔═╡ 95c2fca3-b9c3-4be3-b4bd-52883ed225fb
subtypes(Integer)

# ╔═╡ d8002ef2-cdec-44e2-a597-2e3a610ec7cf
subtypes(Signed)

# ╔═╡ 42119287-b3ad-4e5f-b824-702329b47872
bitstring(typemax(Int128))

# ╔═╡ 05da7ab5-c377-4a43-9443-0ab6eb42e626


# ╔═╡ d6c95369-ffa2-41ee-a2a9-84be013d1d18
subtypes(Any)

# ╔═╡ 3b11f542-1764-489c-a6a9-ec02dc14e681
Any <: Any

# ╔═╡ 475c27bd-d9aa-4c6e-9888-5e83efc643bf
Int <: Signed

# ╔═╡ 44bcbf9a-8069-4c24-8a4a-a4618dc62101
Float64 <: Number

# ╔═╡ 76a1db74-d6df-4ac0-8c48-149cc3475786
typeof(true)

# ╔═╡ 5c16cafc-c403-465b-bd69-92050ded2583
supertypes(String)

# ╔═╡ 00f2db47-7b62-4c4d-840b-b2c100f66ef7
alphabet = "abcdefghijklmnopqrstuvwxyz"

# ╔═╡ 6001f079-53f4-4562-906a-e4e4230fe9b2
typeof(alphabet)

# ╔═╡ 67c8a20a-5c23-465b-99e6-9363ca49f0dd
typeof('a')

# ╔═╡ 3063146b-d1bc-490f-9a75-86cbae0ad205
typeof("a")

# ╔═╡ 8f5f8492-45cd-4a7d-85db-02c2ec2d60ba
'a' == "a"

# ╔═╡ e9ef1912-4b80-49b6-a909-a4a89be4c5b0
f(x) = 2*x

# ╔═╡ d2ce2718-4d6c-42cf-a0cb-70a8a2ae0f8b
typeof(f)

# ╔═╡ f80f752c-7336-4fae-b549-dddb158105d0
supertypes(Function)

# ╔═╡ 9d3a6c33-9e77-478f-b6ea-c80935715db4
typeof(3//5)

# ╔═╡ 9be801ea-2d14-4935-a765-d32a78ff6e96
supertypes(Rational{Int64})

# ╔═╡ f006a03e-17f1-4946-8de9-8c50ffbb50a8
2//5 + 4//5

# ╔═╡ 27e8b63c-781a-4e7f-a827-71e2b486b802
md"""
به عنوان یک نکتهٔ نهایی سعی کنید نوع متغیرها در حین برنامه عوض نشود. این کار می‌تواند ‫برنامه را کند کند.
"""

# ╔═╡ e21992d6-4a32-47b8-8920-2032a0d0ced6
md"""
## ‫بررسی تساوی، متغیرهای Boolean و تابع if
"""

# ╔═╡ abafc6e7-3304-41e4-a046-cb0266a8cc6d
md"""
‫برای بررسی تساوی از توابع == و === می‌توان استفاده کرد.
"""

# ╔═╡ f7798cf7-63e8-4788-8b8b-cfcfe819e024
2 == 2.0

# ╔═╡ 0d9610b6-88ee-4da0-959c-889fd69fa15c
2 === 4//2

# ╔═╡ 7988c172-af1e-4246-a22c-df8200a7aae2
md"""
‫برای بررسی بزرگ‌تر یا کوچک‌تر بودن متغیرها می‌توان از توابع ``< , > , <= , >=`` استفاده کرد.
"""

# ╔═╡ 22f159a9-9b7f-4ea1-9aa0-252a2147a0e1
8//2 >= 2*2

# ╔═╡ c098fe4c-3ac9-4065-b406-8979b2effa9d
10^2 > 2^10

# ╔═╡ a7beebd9-57b8-4501-88bb-c1508af9e564
md"""
‫true و false مقادیر ممکن برای متغیرهای منطقی (boolean) می‌باشند. 
"""

# ╔═╡ c21b301e-9927-4ad7-a444-2996b3450782
!true

# ╔═╡ ddec421d-e893-488a-b8c5-7f646e746218
!(10^2 > 2^10)

# ╔═╡ e32778be-74d9-4ac4-9770-5d9629b5231f
true&&true

# ╔═╡ d49c12e2-fa57-4ba8-a774-be818cb9b9c8
false && false

# ╔═╡ e30982fb-1371-4fdf-86e1-8537d77b1c4c
# true || false

# ╔═╡ e7cdcb49-9691-4ab3-a222-48f90df490b5
md"""
متغیرهای منطقی یک بیت برای ذخیره لازم دارند. می‌توان به مقدار عددی این بیت دسترسی داشت‫:
"""

# ╔═╡ 4ed731be-39a9-4b0d-b99b-765ebc1ad6da
bitstring(true) #Anybody knows why Julia is using 7 extra bits?

# ╔═╡ 6c5c13b2-a32f-4b75-a232-f6e48082d7bd
bitstring(false) #Because computers typically work with bytes these days.

# ╔═╡ 4eedc88c-f2bd-4d96-9d01-4f67de5d07a8
true + false

# ╔═╡ ef0c6959-3043-4638-ba2a-0208447b2cf2
3 * false

# ╔═╡ b571f962-d541-4266-8704-fe5d1ac6fe8e
md"""
‫تابع `if` به این صورت کار می‌کند که اگر شرط تابع `if` برقرار باشد، قسمت دوم تابع را اجرا کند.

    if (condition 1)
    	(do this)
    elseif (condition 2)
    	(do this instead)
	else
		(if nothing works do this)
	end 

مثلا در سلول زیر تساوی دو متغیر را بررسی می‌کنیم‫. 
"""

# ╔═╡ 1a7f6650-37f8-49bf-a844-317c030b773b
begin
	x = 6
	y = 15//3
	if x > y
		println("ایکس بزرگتر از وای")
	elseif y > x
		println("وای بزرگتر از ایکس")
	else
		println("ایکس برابر وای")
	end
end

# ╔═╡ c1c3452d-9382-4e3b-9f5d-966aee92fe8c


# ╔═╡ 2818fda4-9cc1-434a-8bba-49c766335790
md"""
استفاده از‫ `else` و `elseif` در تابع `if` اجباری نیست.
"""

# ╔═╡ 50e9728a-7b28-46af-bcac-c2327123eca6
if sin(π/4) == cos(π/4)
	println("tan(π/4) = 1")
end

# ╔═╡ fc62f5ef-a28d-417b-a921-4011dc076aa4
md"""
### نک‫ته مهم:
وقتی تساوی بین اعداد اعشاری‫ (Float) را می‌خواهیم بررسی کنیم بهتر است از ≈ استفاده کنیم
"""

# ╔═╡ 3c446cb8-1998-4081-95bc-e65a07d5b9eb
sin(π/4)

# ╔═╡ 6eb6ae18-69eb-4f75-9b9e-7be1198dc4da
cos(π/4)

# ╔═╡ 22508a2c-ffee-4ac2-a73d-4771127901b9
bitstring(sin(π/4))

# ╔═╡ 32e507db-f335-431f-a2aa-a1474ea407a1
bitstring(cos(π/4))

# ╔═╡ b08ffb4a-12a8-4784-9a0e-1110f0866401
sin(π/4) ≈ cos(π/4)

# ╔═╡ fcd5160c-03ff-4fe3-990a-1bdb5e0aa3a3
if sin(π/4) ≈ cos(π/4)
	println("tan(π/4) = 1")
end

# ╔═╡ c26223b1-3502-4751-9bdb-e2e02b9d2d8b
md"""
می‌توان با استفاده از تابع سه گانه به صورت زیر تابع شرطی را در یک خط نیز نوشت‫:

	(condition) ? (if true do this) : (if false do this)
"""

# ╔═╡ 2a68fec6-4532-4350-811b-5ae514ef9959
sin(π/3)==cos(π/6) ? println("nice!") : println("hmm!")

# ╔═╡ 7211fee0-b1bd-4e46-8767-65a237c3b14a
md"""
‫توابع && و || می‌توانند بعضی وقت‌ها با احتساب مقدار پارامتر اول خود خروجی‌شان را بدون حساب کردن متغیر دوم معین کنند. به این کار اتصال کوتاه می‌گویند و می‌تواند بعضی از برنامه‌ها را کوتاه‌تر کند:
"""

# ╔═╡ 0595ee02-5f6c-4057-8eaa-cc45d358d26b
begin
	5 < 2 && println("this shouldn't do anything, in fact I can do something illegal and Julia won't notice")
	5 < 2 && println(0//0)
	5 > 2 && println("wow this actually works!!")
end

# ╔═╡ 736c21a6-7e88-4fd3-b473-d2e91359ee7c
0//0

# ╔═╡ 8f27bbe5-8317-4808-9780-a94cd299b332
md"""
## توابع مقدماتی
- جمع `+`
- تفریق `-`
- ضرب `*`
- تقسیم `/`
- باقیمانده `%`
- خارج قسمت `÷`
- توان `^`
- Right bit shift `>>`
- Left bit shift `<<`
"""

# ╔═╡ 6d34aad9-9336-4401-8276-c64874f5c7e5
2+2.0

# ╔═╡ efa49d5d-01ff-4ea8-ad5f-9d40360b4894
5-6

# ╔═╡ 7a5ec57d-3cfc-4503-b4f7-f8a17c78047e
3*4

# ╔═╡ d7959eac-d30b-4e48-a542-851685a81786
10/3

# ╔═╡ 27636305-b86b-45f1-a57f-188a9fff7f1b
10%3

# ╔═╡ bb8a72b0-da10-4d0a-85f1-d2efe49ef144
10÷3

# ╔═╡ 27e38ccc-8420-4d4f-9abb-d8dca035af59


# ╔═╡ eb92cdab-fb91-45af-b3a3-18e1b935f0ab
div(10,3)

# ╔═╡ e87edf66-91f1-4106-9151-8cb3386d0352
3^2

# ╔═╡ d1aa0726-9c06-4284-b60b-5bf00771d4ad
3^2.

# ╔═╡ 1a3a7b5e-03fb-4163-9da9-21ed529f2c27
13 >> 2

# ╔═╡ 6e9c0727-c9ca-4d93-baef-791cc15b0389
bitstring(13)

# ╔═╡ 19cc9698-2ed3-45f6-a07f-1234d1bf0e55
bitstring(3)

# ╔═╡ 433d3aa0-5a58-47d0-9f24-cabd1a32f7d6
43 << 4

# ╔═╡ 606f5082-92d8-4f94-a16c-1a4355e773d4
43*2^4

# ╔═╡ c01c2b32-2402-4aee-a214-50900eae1ace
bitstring(43)

# ╔═╡ 6f2942f9-4bba-43d0-b88a-ad5e30c79436
tmp = bitstring(688)

# ╔═╡ 42b4f139-9c1f-46ff-8e7a-4221009f5bad
parse(Int,tmp,base = 2)

# ╔═╡ b3352ba8-f57a-4c3d-b099-206fefbfa937
true << 2

# ╔═╡ f21fd775-6e07-48f2-a4d8-d0690b2db3fa
md"""
‫برای تبدیل عدد اعشاری به صحیح راه‌های متعددی وجود دارد:
"""

# ╔═╡ 4f075e94-378c-4570-8c12-e7399aa2a158
Int(8.0)

# ╔═╡ eff8caac-97e5-4079-98bf-b3d279d07c3d
Int8(3.0)

# ╔═╡ 71a6a316-2b46-4edb-b8f2-971aaaa9e520
Int(3.5)

# ╔═╡ 31116906-45a7-4923-992a-4f6c853b8eee
floor(-3.32)

# ╔═╡ c14cda24-1cca-4125-b620-16af3f3fb251
floor(Int64,-3.32)

# ╔═╡ ffb0975b-cc77-4e33-b2cd-332e0394bc2c
ceil(Int, -3.32)

# ╔═╡ 3cc39469-626c-46cf-951b-d99440e40fd3
round(Int, -3.32)

# ╔═╡ d673a4aa-94c3-4b3d-a754-cc63b2c134c5
md"""
## ‫یک نکته 

فکر می‌کنید خط زیر چه مقداری برمی‌گرداند؟

	1/2^64
"""

# ╔═╡ c6b850b1-2740-4339-8966-9975bfe1afe0
1/2^64

# ╔═╡ 7bcfae19-13c8-4024-b11d-af78f1637085
typeof(Inf)

# ╔═╡ 6f600a19-1938-445c-9676-1c897778fb53
Inf > 10^1000

# ╔═╡ bac984ac-2bb8-4249-8bed-3d9d55caa446
2^64

# ╔═╡ 1e211187-644a-47de-8b53-e4100fcb921f
typemax(Int)

# ╔═╡ 79df8f81-fe64-41bb-91b7-b83e2e14bd59
exp2(64) > typemax(Int)

# ╔═╡ aa2aaf19-38a5-4e61-b875-4edab7d9defd
md"""
راه حل‌ها‫:
"""

# ╔═╡ 7ef2f910-7c7c-4d50-9705-84b82d1afc27
1/BigInt(2)^64

# ╔═╡ 570bb2d9-cccc-4717-aa94-c68b383ba2c5
1/2.0^64

# ╔═╡ 88841015-40e2-4fb4-8b98-9be996fef356
1/2^64.

# ╔═╡ de7da876-d4e9-44d3-acc9-1b76fe694a24
(1/2)^64

# ╔═╡ 5232c8c9-c23c-400c-bcfe-8d8167eb9aee
1.0/2^64 # This does not work!

# ╔═╡ d1b10ef2-ca8c-423c-8299-d4db7168ec8f
2^-64

# ╔═╡ 4caecda1-be4c-4398-85e2-8a1c1bb0f2b0
md"""
# تکلیف
یک نتبوک پلوتو ایجاد کنید و کارهای زیر را در آن انجام دهید‫:
1.  شماره دانشجویی و نام و نام خانوادگی خود را در نظر بگیرید و مقدارشان را به سه پارامتر بدهید 
2. باقیماندهٔ شمارهٔ دانشجویی‌تان را به اعداد ۳، ۹، ۲۷ و ۸۱ چاپ کنید
3. ‫‫ با‫ استفاده از یک دستور `println` نام و نام خانوادگی و جذر شمارهٔ دانشجویی‌تان را چاپ کنید.
4. اع‫داد اول کوچک‌تر از ۲۰ عبارتند از ۲ و ۳ و ۵ و ۷ و ۱۱ و ۱۳ و ۱۷ و ۱۹. اگر شماره دانشجویی شما به نیمی از این اعداد بخش‌پذیر بود شمارهٔ دانشجویی به توان ۴ و در غیر این صورت شمارهٔ دانشجویی به توان ۵ را چاپ کنید. خروجی باید به شکل عدد صحیح باشد و مراقب حدود اعداد صحیح باشید. همچنین برنامهٔ شما باید بتواند برای هر شمارهٔ دانشجویی کار کند.
5. خو‫دتان امتحان کنید که تابع `*` و `^` با رشته‌ها چه کار می‌کنند. برنامه‌ای بنویسید که نام و نام خانوادگی‌تان را در یک خط ۲۰ بار چاپ کند.
"""

# ╔═╡ Cell order:
# ╟─67617894-70d8-11ee-22bf-e321edf16e24
# ╠═5ab3c862-5399-46de-8e56-cdf9ab446cd7
# ╠═bceb16e2-9b11-4c67-93c1-f6295ea8fa12
# ╟─3c7324b9-a0a9-4ac6-9cfa-db0f18f5f2a9
# ╠═dae74470-f6cf-4126-b188-ac9f2fa56645
# ╠═3b1b5148-ddfe-40f7-9bc0-0035b6901e42
# ╠═a61f5dcb-a437-4306-a294-2981bf9b6d49
# ╠═0a61fd3f-c442-40bf-9701-60d5dd3a40a8
# ╟─e3ed346e-59ba-4f29-80cc-47b5e0169cdb
# ╠═6899cacf-cf25-4759-a3df-1bec9ca518c5
# ╟─8f55dab5-896b-4184-878d-7403cbec8c0d
# ╠═4430061b-6e33-47e3-baca-47d8a7ad6b88
# ╠═aa2c577e-b604-4e25-810b-e6c404d4d655
# ╠═a71d4369-ee0e-4a72-a599-4e10b0a635e7
# ╠═71929cf1-6bda-4768-a8d1-902b3f0fe73d
# ╟─5e19a99e-c71f-424a-be02-4b53a6066b20
# ╠═903e86d3-4362-4bab-96b4-ee5dca107e18
# ╠═c170a64b-060f-4ada-abd6-75cf6731ea07
# ╟─edb7a1d7-4f55-4173-88c0-da92b3002386
# ╠═6abaf5a0-f641-4bcf-aa8f-c90acbfc4270
# ╠═3e187c4c-97e9-475d-b5db-fbd0d37af5af
# ╟─886f2d01-5d02-45a7-8bd3-84699c0abd16
# ╠═55228f18-655d-4cba-8d25-0c6504566644
# ╟─398644bd-6986-4d9e-aa7a-2945515ccef4
# ╠═2c5be7be-c7ad-44d6-9639-0067d582f917
# ╠═4e270aef-866a-4659-95c8-02692d0db831
# ╠═889ad361-77ec-46a2-9b3b-f14b99d0a777
# ╠═17a30030-4891-41f4-9901-61b8cf3856e1
# ╠═9713a554-b3e8-4bb1-bb31-6b5b878c95d4
# ╠═95c2fca3-b9c3-4be3-b4bd-52883ed225fb
# ╠═d8002ef2-cdec-44e2-a597-2e3a610ec7cf
# ╠═42119287-b3ad-4e5f-b824-702329b47872
# ╠═05da7ab5-c377-4a43-9443-0ab6eb42e626
# ╠═d6c95369-ffa2-41ee-a2a9-84be013d1d18
# ╠═3b11f542-1764-489c-a6a9-ec02dc14e681
# ╠═475c27bd-d9aa-4c6e-9888-5e83efc643bf
# ╠═44bcbf9a-8069-4c24-8a4a-a4618dc62101
# ╠═76a1db74-d6df-4ac0-8c48-149cc3475786
# ╠═5c16cafc-c403-465b-bd69-92050ded2583
# ╠═00f2db47-7b62-4c4d-840b-b2c100f66ef7
# ╠═6001f079-53f4-4562-906a-e4e4230fe9b2
# ╠═67c8a20a-5c23-465b-99e6-9363ca49f0dd
# ╠═3063146b-d1bc-490f-9a75-86cbae0ad205
# ╠═8f5f8492-45cd-4a7d-85db-02c2ec2d60ba
# ╠═e9ef1912-4b80-49b6-a909-a4a89be4c5b0
# ╠═d2ce2718-4d6c-42cf-a0cb-70a8a2ae0f8b
# ╠═f80f752c-7336-4fae-b549-dddb158105d0
# ╠═9d3a6c33-9e77-478f-b6ea-c80935715db4
# ╠═9be801ea-2d14-4935-a765-d32a78ff6e96
# ╠═f006a03e-17f1-4946-8de9-8c50ffbb50a8
# ╟─27e8b63c-781a-4e7f-a827-71e2b486b802
# ╟─e21992d6-4a32-47b8-8920-2032a0d0ced6
# ╟─abafc6e7-3304-41e4-a046-cb0266a8cc6d
# ╠═f7798cf7-63e8-4788-8b8b-cfcfe819e024
# ╠═0d9610b6-88ee-4da0-959c-889fd69fa15c
# ╟─7988c172-af1e-4246-a22c-df8200a7aae2
# ╠═22f159a9-9b7f-4ea1-9aa0-252a2147a0e1
# ╠═c098fe4c-3ac9-4065-b406-8979b2effa9d
# ╟─a7beebd9-57b8-4501-88bb-c1508af9e564
# ╠═c21b301e-9927-4ad7-a444-2996b3450782
# ╠═ddec421d-e893-488a-b8c5-7f646e746218
# ╠═e32778be-74d9-4ac4-9770-5d9629b5231f
# ╠═d49c12e2-fa57-4ba8-a774-be818cb9b9c8
# ╠═e30982fb-1371-4fdf-86e1-8537d77b1c4c
# ╟─e7cdcb49-9691-4ab3-a222-48f90df490b5
# ╠═4ed731be-39a9-4b0d-b99b-765ebc1ad6da
# ╠═6c5c13b2-a32f-4b75-a232-f6e48082d7bd
# ╠═4eedc88c-f2bd-4d96-9d01-4f67de5d07a8
# ╠═ef0c6959-3043-4638-ba2a-0208447b2cf2
# ╟─b571f962-d541-4266-8704-fe5d1ac6fe8e
# ╠═1a7f6650-37f8-49bf-a844-317c030b773b
# ╠═c1c3452d-9382-4e3b-9f5d-966aee92fe8c
# ╟─2818fda4-9cc1-434a-8bba-49c766335790
# ╠═50e9728a-7b28-46af-bcac-c2327123eca6
# ╟─fc62f5ef-a28d-417b-a921-4011dc076aa4
# ╠═3c446cb8-1998-4081-95bc-e65a07d5b9eb
# ╠═6eb6ae18-69eb-4f75-9b9e-7be1198dc4da
# ╠═22508a2c-ffee-4ac2-a73d-4771127901b9
# ╠═32e507db-f335-431f-a2aa-a1474ea407a1
# ╠═b08ffb4a-12a8-4784-9a0e-1110f0866401
# ╠═fcd5160c-03ff-4fe3-990a-1bdb5e0aa3a3
# ╟─c26223b1-3502-4751-9bdb-e2e02b9d2d8b
# ╠═2a68fec6-4532-4350-811b-5ae514ef9959
# ╟─7211fee0-b1bd-4e46-8767-65a237c3b14a
# ╠═0595ee02-5f6c-4057-8eaa-cc45d358d26b
# ╠═736c21a6-7e88-4fd3-b473-d2e91359ee7c
# ╟─8f27bbe5-8317-4808-9780-a94cd299b332
# ╠═6d34aad9-9336-4401-8276-c64874f5c7e5
# ╠═efa49d5d-01ff-4ea8-ad5f-9d40360b4894
# ╠═7a5ec57d-3cfc-4503-b4f7-f8a17c78047e
# ╠═d7959eac-d30b-4e48-a542-851685a81786
# ╠═27636305-b86b-45f1-a57f-188a9fff7f1b
# ╠═bb8a72b0-da10-4d0a-85f1-d2efe49ef144
# ╠═27e38ccc-8420-4d4f-9abb-d8dca035af59
# ╠═eb92cdab-fb91-45af-b3a3-18e1b935f0ab
# ╠═e87edf66-91f1-4106-9151-8cb3386d0352
# ╠═d1aa0726-9c06-4284-b60b-5bf00771d4ad
# ╠═1a3a7b5e-03fb-4163-9da9-21ed529f2c27
# ╠═6e9c0727-c9ca-4d93-baef-791cc15b0389
# ╠═19cc9698-2ed3-45f6-a07f-1234d1bf0e55
# ╠═433d3aa0-5a58-47d0-9f24-cabd1a32f7d6
# ╠═606f5082-92d8-4f94-a16c-1a4355e773d4
# ╠═c01c2b32-2402-4aee-a214-50900eae1ace
# ╠═6f2942f9-4bba-43d0-b88a-ad5e30c79436
# ╠═42b4f139-9c1f-46ff-8e7a-4221009f5bad
# ╠═b3352ba8-f57a-4c3d-b099-206fefbfa937
# ╟─f21fd775-6e07-48f2-a4d8-d0690b2db3fa
# ╠═4f075e94-378c-4570-8c12-e7399aa2a158
# ╠═eff8caac-97e5-4079-98bf-b3d279d07c3d
# ╠═71a6a316-2b46-4edb-b8f2-971aaaa9e520
# ╠═31116906-45a7-4923-992a-4f6c853b8eee
# ╠═c14cda24-1cca-4125-b620-16af3f3fb251
# ╠═ffb0975b-cc77-4e33-b2cd-332e0394bc2c
# ╠═3cc39469-626c-46cf-951b-d99440e40fd3
# ╟─d673a4aa-94c3-4b3d-a754-cc63b2c134c5
# ╠═c6b850b1-2740-4339-8966-9975bfe1afe0
# ╠═7bcfae19-13c8-4024-b11d-af78f1637085
# ╠═6f600a19-1938-445c-9676-1c897778fb53
# ╠═bac984ac-2bb8-4249-8bed-3d9d55caa446
# ╠═1e211187-644a-47de-8b53-e4100fcb921f
# ╠═79df8f81-fe64-41bb-91b7-b83e2e14bd59
# ╟─aa2aaf19-38a5-4e61-b875-4edab7d9defd
# ╠═7ef2f910-7c7c-4d50-9705-84b82d1afc27
# ╠═570bb2d9-cccc-4717-aa94-c68b383ba2c5
# ╠═88841015-40e2-4fb4-8b98-9be996fef356
# ╠═de7da876-d4e9-44d3-acc9-1b76fe694a24
# ╠═5232c8c9-c23c-400c-bcfe-8d8167eb9aee
# ╠═d1b10ef2-ca8c-423c-8299-d4db7168ec8f
# ╠═4caecda1-be4c-4398-85e2-8a1c1bb0f2b0
