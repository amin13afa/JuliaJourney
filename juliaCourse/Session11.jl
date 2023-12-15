### A Pluto.jl notebook ###
# v0.19.32

using Markdown
using InteractiveUtils

# ╔═╡ 3d6e5154-e8a9-44c6-a6b0-4a216b4525fb
begin
	using PlutoUI
	Resource("https://upload.wikimedia.org/wikipedia/commons/9/94/Animation_Sieve_of_Eratosth.gif")
end

# ╔═╡ 82df8f97-d81c-491b-99ff-475de92cd22c
html"<button onclick='present()'>present</button>"

# ╔═╡ 300931a4-8503-11ee-284b-cbb29288b663
md"""
# چند برنامهٔ نظریهٔ اعدادی
‫امروز می‌خواهیم با نوشتن چند برنامه تمرین برنامه نویسی کنیم.
"""

# ╔═╡ 6cee3236-5bc4-4fd8-918f-619ae2642a5c
md"""
## تشخیص اول یا مرکب بودن عدد
‫عدد اول به عددی طبیعی بزرگ‌تر از ۱ می‌گویند که فقط بر خودش و ۱ بخش‌پذیر باشد. بنابراین برای تشخیص این که یک مثل n عدد اول است یا نه کافی است آن را به تمامی اعداد بین ۲ تا n-1   تقسیم کرد و اگر به هیچ یک بخش‌پذیر نبود آن عدد اول خواهد بود.

‫الگوریتمی که در بالا توصیف کردیم از مرتبهٔ ``O(n)`` عملیات نیاز دارد انجام دهد تا تشخیص دهد که عدد اول است یا خیر.

‫با کمی تفکر متوجه می‌شویم که مقسوم علیه‌های اعداد به صورت جفت ظاهر می‌شوند، که یکی بزرگتر یا مساوی از جذر عدد بوده و دیگر کوچک‌تر یا مساوی جذر عدد می‌باشد. بنابراین واقعا نیاز نیست به تمامی اعداد موجود در بازهٔ ۲ الی n-1 تقسیم کنیم، بلکه کافی است از ۲ تا جذر عدد پیش برویم.

‫با این بهبود ساده می‌توان اول بودن یک عدد را با مرتبهٔ ``O(\sqrt{n})`` تشخیص داد.
"""

# ╔═╡ 99463541-1248-4cf1-b81e-924152752b7d
md"""
## کار کلاسی ۱
‫۲ برنامه برای تشخیص اول بودن یک عدد بنویسید. این برنامه‌ها باید یک عدد به عنوان ورودی بگیرد و چنانچه عدد اول بود مقدار `true` را برگردانده و در غیر این صورت `false` خروجی بدهند. برنامهٔ اول از الگوریتم اولی که بالا نوشتیم پیروی کرده و برنامهٔ دوم از الگوریتم بهبودیافته دوم.
"""

# ╔═╡ 5b3016b3-de51-4df3-91ef-f3748aadd0ff
# function is_it_prime1(n)


# end

# ╔═╡ 3add4db7-0b04-4ed2-9aef-e18500955414
# function is_it_prime2(n)

# end

# ╔═╡ 19610f64-68bc-4a78-a82e-c9445ad18f38
md"""
‫در جولیا ماکروهای گوناگونی برای اندازه‌گیری و نشان دادن عملکرد برنامه‌ها وجود دارند. احتمالا ساده‌ترین آن‌ها ماکرویی به نام ``@time``  می‌باشد که زمان مصرف شده در یک محاسبه را در خروجی استاندارد چاپ می‌کند. بار اولی که یک کد جولیا را اجرا می‌کنید بخشی از زمان صرف اصطلاحا compile کردن (ترجمه به زبان ماشین کردن) برنامه می‌شود. 
"""

# ╔═╡ 00c4a7f5-0b51-4585-a487-03869158642b
md"""
‫عملکرد برنامه‌هایی که نوشتید را به ازای مقادیر ورودی مختلف با هم مقایسه کنید:
"""

# ╔═╡ fae36eda-be66-4f85-bae7-0be25b3098ed
# @time is_it_prime1(1234567)

# ╔═╡ c8dbccf7-7d45-4fb7-a1f1-89d9bea6c7f4
md"""
## Comparing the `for` and `while` loops
‫به یاد بیاورید که هر کدام از حلقه‌های `for` و `while` چگونه کار می‌کردند. چنانچه برنامهٔ `is_it_prime2` را با یکی از این‌ حلقه‌ها نوشتید، اکنون `is_it_prime3` را با دیگری بنویسید.
"""

# ╔═╡ f3c78240-9b61-4c5f-8ee8-513645b0bf84
# function is_it_prime3(n)


# end

# ╔═╡ c52400f8-60a9-4229-9d43-9c6b709194fb
md"""
‫برای مقایسهٔ جدی‌تر برنامه‌ها پکیجی به نام `BenchmarkTools` وجود دارد که ابزارهایی دارد که می‌توانند چند بار برنامه‌ها را اجرا کرده و اطلاعات آماری خوبی در رابطه با عملکرد آن‌ها به ما بدهند. یکی از این ابزارها ماکرو ``@btime`` بوده که در زیر از آن استفاده می‌کنید تا عملکرد دو تابع `is_it_prime2` و ‍`is_it_prime3` را با هم مقایسه کنید:
"""

# ╔═╡ 7adfa128-5f60-4709-8716-30e56f18b8e0
# using BenchmarkTools

# ╔═╡ f334f5ec-760e-480e-af8f-057ae8ce3efa
# @btime is_it_prime2(12345678899)

# ╔═╡ ea56fe83-0494-48ab-ab1b-e79c1b28e60e
# @btime is_it_prime3(12345678899)

# ╔═╡ dabb3f84-f669-4dc0-ac7d-e7d496393360
md"""
سعی کنید برای خودتان توجیه کنید که چرا دو برنامه‌ای که نوشتید با هم این قدر اختلاف دارند؟
"""

# ╔═╡ fc7482db-f0eb-4403-8e7d-95c0c87628ea
md"""
## کار کلاسی ۲
### Sieve of Eratosthenes
‫غربال اراتوستن روشی برای پیدا کردن تمامی اعداد اول موجود در بازهٔ ۲ تا n می‌باشد. نحوهٔ عملکرد این الگوریتم بدین صورت است که ابتدا تمامی اعداد ۲ الی n را نوشته و سپس از ۲ شروع کرده و تمامی مضارب آن به جز خودش را خط می‌زنیم.  سپس به سراغ اولین عدد خط نخورده بعد از ۲ یعنی ۳ می‌رویم و تمامی مضارب آن غیر از خودش را خط می‌زنیم. و این کار را آن‌قدر ادامه می‌دهیم تا به انتهای لیست برسیم. اعدادی که خط نخورده باقی مانده‌اند اعداد اول موجود در این بازه می‌باشند. برای اطلاعات بیشتر به این صفحهٔ ویکیپدیا می‌توانید مراجعه کنید:

[https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes)
"""

# ╔═╡ b8c98243-9dbb-427a-ab37-593367041258
md"""
‫در این قسمت شما باید برنامه‌ای بنویسید که مقدار n را از کاربر به عنوان ورودی بگیرد و این الگوریتم را با استفاده از دیکشنری‌ها پیاده‌سازی کند. ابتدا یک دیکشنری بسازید که به تمامی اعداد این بازه مقدار `true` نسبت می‌دهد، سپس گام به گام اعدادی که اول نیستند را طبق این روش غربال اراتوستن مقدارشان را به `false` تغییر دهید.
"""

# ╔═╡ 9371ad6a-1deb-4c4e-9c05-ee70bb21ec60
# function my_sieve(n)
# list = Dict([i => true  for i in 2:n])
# for i in 1:n-1
	# if list[i]


# return filter((k,v) -> v == true, list) # v == true is redundant; it suffices to write just `v`!
# end

# ╔═╡ 0af56f04-ed3b-4cc3-998e-b6a209a7485b
md"""
‫قسمت‌هایی از برنامهٔ بالا که کامل نیستند باید توسط شما تکمیل شود. اگر بعضی از خط‌های برنامه برای شما ناآشناست، سعی کنید ابتدا در سلولهای مجزا همان خط را اجرا کرده و دستورات آن را با استفاده از مستندات (documentation) درک کنید.
"""

# ╔═╡ 00c8a689-2196-4792-bbe5-a8a8eefee6f1
md"""
‫از برنامه‌هایی که امروز نوشتید استفاده کنید و برنامه‌ای بنویسید که مسألهٔ شماره ۷ پروژهٔ اویلر را حل کند:

[Project Euler: 7](https://projecteuler.net/problem=7)

‫در این مسأله از شما می‌خواهد که عدد اول شمارهٔ ۱۰۰۰۱ را پیدا کنید.
"""

# ╔═╡ 23ee3589-212a-4f34-a3d4-e236bd714061
md"""
## کار کلاسی ۳
### تجزیه عدد به عوامل اول

‫برنامه‌ای بنویسید که یک عدد طبیعی به عنوان ورودی بگیرد و آن را به عوامل اول آن تجزیه کند. خروجی این تابع باید به شکل دیکشنری بوده که کلیدهای دیکشنری اعداد اول موجود در تجزیه و مقادیر آن‌ها توان متناظر با همان عدد اول باشد. برای مثال حاصل تجزیه ۱۲ باید `Dict(2 => 2, 3 => 1)` باشد.

‫به عنوان نکتهٔ اضافه کاری کنید که علاوه بر محاسبهٔ تجزیه در خروجی استاندارد هم اعداد و توانشان نمایش داده شود. مثلاً حاصل تجزیه ۱۲ در خروجی استاندارد هم چاپ کند:
``2^2×3^1``
"""

# ╔═╡ 89a6e17c-ef54-4728-a269-33035c20a714
# function my_factor(n)
# 	d = Dict{Int,Int}()

# end

# ╔═╡ 6d807c41-f4d9-46a7-a355-51d44e3df840
md"""
## Primes.jl
‫در جولیا پکیجی برای اعداد اول وجود دارد که بسیاری از مسائل بالا را حل می‌کند. این پکیج `Primes` نام داشته و توابعی مثل ‍`isprime` برای تشخیص اول بودن عدد، `prime` برای برگرداندن عدد اول nام و `factor` برای تجزیه عدد به عوامل اول را دارد. پکیج `Primes` را فراخوانی کرده و عملکرد توابعی که ذکر شد را با توابعی که شما خودتان نوشتید مقایسه کنید.
"""

# ╔═╡ 1dcde6b3-d848-444f-b701-008820dd8ba8
md"""
# Homework 4
1. ‫برنامه‌ای بنویسید که کوچک‌ترین عدد اول بزرگتر یا مساوی شماره دانشجویی شما را پیدا کند.
2. ‫برنامه‌ای بنویسید که این عدد را در مبنای ۵ نوشته، سپس نموداری میله‌ای بکشد که هر رقم ۰ الی ۴ چند بار تکرار شده‌اند.
3. برنامه‌ای بنویسید که شمارهٔ دانشجویی شما را به عوامل اولش تجزیه کند‫.
4. ‫برنامه‌ای بنویسید که یک عدد n را به عنوان ورودی بگیرد و اگر n زوج بود آن را بر ۲ تقسیم کند و اگر فرد بود 3n+1 را برگرداند.
5. یک حدس در ریاضیات است که اگر تابع سؤال ۴ را به تعداد کافی روی یک عدد پیاده کنیم، این سری نهایتا ختم به ۱ می‌شود. برنامه‌ای بنویسید که به ازای یک عدد ورودی تعیین کند چند بار باید این تابع اعمال شود تا سری به ۱ برسد. اگر عدد سؤال ۱ را به عنوان ورودی به این تابع بدهیم چه خروجی‌ای خواهیم گرفت؟

- ‫**چند نکته:**
- - ‫استفاده از دستورات موجود در جولیا ، علی‌الخصوص پکیج `Primes` لازم نیست ولی به شدت توصیه می‌شود. 
- - ‫برنامه‌تان باید به گونه‌ای نوشته شود که به ازای هر شمارهٔ دانشجویی کار کند، نه فقط شماره خودتان. 
‫
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.53"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.4"
manifest_format = "2.0"
project_hash = "2221109544af0af0a1dbe6ee2a9707ab16223647"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "91bd53c39b9cbfb5ef4b015e8b582d344532bd0a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.0"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.4.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "a935806434c9d4c506ba941871b327b96d41f2bf"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.2"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "db8ec28846dbf846228a32de5a6912c63e2052e3"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.53"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "03b4c25b43cb84cee5c90aa9b5ea0a78fd848d2f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "00805cd429dcb4870060ff49ef443486c262e38e"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.1"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "eae1bb484cd63b36999ee58be2de6c178105112f"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.8"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.52.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─82df8f97-d81c-491b-99ff-475de92cd22c
# ╟─300931a4-8503-11ee-284b-cbb29288b663
# ╟─6cee3236-5bc4-4fd8-918f-619ae2642a5c
# ╟─99463541-1248-4cf1-b81e-924152752b7d
# ╠═5b3016b3-de51-4df3-91ef-f3748aadd0ff
# ╠═3add4db7-0b04-4ed2-9aef-e18500955414
# ╟─19610f64-68bc-4a78-a82e-c9445ad18f38
# ╟─00c4a7f5-0b51-4585-a487-03869158642b
# ╠═fae36eda-be66-4f85-bae7-0be25b3098ed
# ╟─c8dbccf7-7d45-4fb7-a1f1-89d9bea6c7f4
# ╠═f3c78240-9b61-4c5f-8ee8-513645b0bf84
# ╟─c52400f8-60a9-4229-9d43-9c6b709194fb
# ╠═7adfa128-5f60-4709-8716-30e56f18b8e0
# ╠═f334f5ec-760e-480e-af8f-057ae8ce3efa
# ╠═ea56fe83-0494-48ab-ab1b-e79c1b28e60e
# ╟─dabb3f84-f669-4dc0-ac7d-e7d496393360
# ╟─fc7482db-f0eb-4403-8e7d-95c0c87628ea
# ╟─3d6e5154-e8a9-44c6-a6b0-4a216b4525fb
# ╟─b8c98243-9dbb-427a-ab37-593367041258
# ╠═9371ad6a-1deb-4c4e-9c05-ee70bb21ec60
# ╟─0af56f04-ed3b-4cc3-998e-b6a209a7485b
# ╟─00c8a689-2196-4792-bbe5-a8a8eefee6f1
# ╟─23ee3589-212a-4f34-a3d4-e236bd714061
# ╠═89a6e17c-ef54-4728-a269-33035c20a714
# ╟─6d807c41-f4d9-46a7-a355-51d44e3df840
# ╟─1dcde6b3-d848-444f-b701-008820dd8ba8
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
