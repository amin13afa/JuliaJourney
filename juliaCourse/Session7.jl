### A Pluto.jl notebook ###
# v0.19.30

using Markdown
using InteractiveUtils

# ╔═╡ 8239f617-92ae-4ff3-a4ea-6b3a4427cd49
html"<button onclick='present()'>present</button>"

# ╔═╡ 559483ba-7b30-11ee-269b-3dbea12248f9
md"""
# ورودی و خروجی
‫در جولیا مانند بسیاری از زبان‌های برنامه‌نویسی راه‌های متنوعی برای گرفتن ورودی و دادن خروجی به کاربران وجود دارد. در این جلسه می‌خواهیم بعضی از این راه‌ها را با هم تمرین کنیم. پس کلید `present` بالای صفحه را بزنید و گام به گام با اسلاید‌ها پیش بیایید و تمام مراحل را انجام بدهید.
"""

# ╔═╡ 57f5ba9b-cf6d-4cc5-91cb-46418d74221e
md"""
## IO
همان طور که در زیر می‌بینید جولیا انواع متنوعی از ورودی‌ها و خروجی‌ها را می‌شناسد. 
"""

# ╔═╡ 130d94a3-d17f-436e-9c5a-2bbd61ef65b4
subtypes(IO) #IO stands for Input/Output

# ╔═╡ 16c93179-1598-49e2-848c-1b719a82b21b
md"""
طراحی پلوتو بعضی از این ورودی‌ها را پشتیبانی نمی‌کند. به همین دلیل برای آشنایی با یکی دو مورد از انواع ورودی‌ها نیاز داریم جولیا را به صورت استانداردتری مشابه سایر زبان‌های برنامه نویسی اجرا کنیم.
"""

# ╔═╡ 61fa5002-e47b-4426-9fd0-9af1a1e9ef76
md"""
## ورودی و خروجی ‫استاندارد در REPL
‫یک محیط REPL جدید جولیا آغاز کنید و فرمان‌های زیر را خط به خط در آن اجرا کنید، توصیه می‌شود با `?` توضیحات دستوراتی که برایتان جدید می‌باشد را هم بخوانید.

	print("Salaam\n")
	println("Salaam!")
	write(stdout,"Aleyk Salaam!") 

‫دو دستور اول عینا یک کار را انجام می‌دهند. دستور سوم نیز بسیار شبیه موارد بالا می‌باشد. `stdout` خروجی استاندارد می‌باشد. هر کدام از دستورات بالا این امکان را دارد که محیط خروجی دیگری نیز بگیرند که در ادامه خواهیم دید، ولی تفاوت `write` با موارد دیگر این است که بدون مشخص کردن محیط خروجی خطا می‌دهد در صورتی که `print` و `println` اگر خروجی مشخص نباشد به صورت پیش‌فرض در محیط استاندارد چاپ می‌کنند.

 به 

	'\n'

‫در انتهای دستور اول دقت کنید. این کاراکتر نمایان‌گر کاراکتر خط جدید در متون می‌باشد.
"""

# ╔═╡ 2402f733-a995-44c4-9854-385310a9be86
'\n'

# ╔═╡ d462d327-7815-474c-848e-2c99737f5d71
md"""
## IO in REPL (continued)
‫در همان محیط REPL دستورات زیر را نیز خط به خط اجرا کنید.

	write("my_test.txt","Wow!!\n This is awesome!\n I can write to files too now!")

‫این دستور یک فایل متنی به نام `my_test.txt` ایجاد می‌کند. می‌توانید این فایل را با سایر نرم‌افزار‌ها مانند `Notepad` نیز باز کنید. حال بیایید اطلاعات داخل این فایل را بخوانیم.
"""

# ╔═╡ 0b55bd66-f8db-4729-9e19-45557c2beffd
md"""
## گرفتن ورودی
‫برای گرفتن ورودی، روش‌های متنوعی وجود دارد. دستورات زیر را اجرا کنید تا با بعضی از این روش‌ها برای خواندن متون آشنا بشویم:

	text1 = readlines("my_test.txt") 

‫این روش تمامی خطوط متن را می‌خواند و آن را داخل یک آرایه از رشته‌های متنی می ریزد.

	text2 = readline("my_test.txt")

‫با این دستور یک خط از متن را می‌خواند. خودتان تست کنید که اگر دوباره این دستور را اجرا کنید چه اتفاقی می‌افتد. یک دستور کلی‌تر دستور `readuntil` است که یک متن را می‌خواند تا به کاراکتر مشخصی برسد. مثلا:

	text3 = readuntil("my_test.txt",'\n')

	text4 = readuntil("my_test.txt",'m')

‫اگر بخواهیم با استفاده از این دستور تمامی خطوط یک متن را بخوانیم می‌توان کل متن را به روش زیر اصطلاحا استریم (stream: جاری کردن) کرد و خط به خط آن را خواند:

	io = open("my_test.txt")
	while !eof(io)
       line = readline(io)
       println(line)
    end
	close(io)


"""

# ╔═╡ e55e3f3f-f551-4077-9f2a-5e3e0685ba65
md"""
## چند نکته دربارهٔ روش قبل

	io = open("my_test.txt")
	while !eof(io)
       line = readline(io)
       println(line)
    end
	close(io)

- ‫از تابع `open` می‌توان برای کارهای دیگری مانند نوشتن به فایل‌ها هم استفاده کرد. در ادامهٔ درس به بعضی از این کاربردها اشاره خواهد شد.
- ‫هرگاه از دستور `open` استفاده کردید و کارتان با فایل تمام شد، فراموش نکنید که با دستور `close` استریم را ببندید. اگر این کار را نکنید سیستم عامل فرض می‌کند جولیا همچنان دارد از فایل استفاده می‌کند و ممکن است بعدا به مشکلاتی بخورید.
- ‫تابع `eof` این کار را انجام می‌دهد که اگر به انتهای استریم رسیده باشید مقدار `true` و در غیر این صورت مقدار `false` را برمی‌گرداند. نام دستور مخفف (end of file) می‌باشد.
"""

# ╔═╡ 6f0d3a26-7921-4a4b-bf4b-ac5d9bf66052
md"""
## IO continued
‫خب بیایید فایل قبلی را پاک کنیم و یک فایل جدید بسازیم.

	rm("my_test.txt")
	a = [i^2 for i in 1:20]
	open("my_test.txt","w") do io
    	for p in a
    		write(io, "$p\n")
		end
    end

‫قبل از این که فراتر برویم بیایید دستورات بالا را مرور کنیم:
- `rm` فایل را پاک می‌کند (remove)
- `open("my_test.txt","w")`
- - ‫آرگومان "w" به تابع 'open' اطلاع می‌دهد که می‌خواهد یک فایل جدید بسازد و اطلاعاتی را درون آن بنویسد. (write)
- `open("my_test.txt","w") do io (...) end`
- - معادل‫ کد زیر است:

	io = open("my_test.txt","w")
	(...)
	close(io)

- - ‫در واقع با استفاده از `do` دیگر لازم نیست از `close` استفاده کنیم.
- 
	for p in a
		write(io, "$p\n")
	end

- - به ا‫زای تک تک المان‌های a آن المان و کاراکتر خط جدید را در فایل می‌نویسد.
- ‫سؤال: اگر بدون حلقهٔ `for` برای نوشتن اطلاعات به فایل از دستور  `write(io,a)` استفاده می‌کردیم چه اتفاقی می‌افتاد؟
"""

# ╔═╡ f4926d5d-8efa-4b9f-9878-d238b962a79b
md"""
## Reading files and converting the values.
‫حال بیایید فایلی که نوشته‌ایم را بخوانیم. با استفاده از دستور `readlines` که در اسلایدهای قبلی مشاهده کردید، فایل را خوانده و مقدار آن را در متغیری به نام `my_nums` بریزید.
"""

# ╔═╡ ee5ed4b2-fdac-4b91-8e5f-266b983db513
md"""
‫مشاهده می‌کنید که مقادیر خوانده شده به صورت یک آرایه از رشته‌ها خوانده شده است، در حالی که ما ترجیح می‌دهیم به صورت عددی اعداد خوانده بشوند. برای تبدیل رشته‌هایی که ذاتا عدد هستند به عدد متناظرشان می‌توان از دستور `parse` استفاده کرد.

	parse(Float64,"64.36")
	parse(Int,my_nums[1])
	nums = parse.(Int,my_nums) # Notice the broadcasting "."
	nums == a
"""

# ╔═╡ db9c3456-08ec-4d1c-9158-607476af6088
md"""
## Reading from stdin
‫بعضی اوقات می‌خواهیم برنامهٔ ما در محیط متنی اجرا شده و از کاربر ورودی‌هایی بگیرد و بر اساس آن‌ها کاری را انجام بدهد. این پایهء زبان‌های برنامه‌نویسی قدیمی می‌باشد. اگرچه می‌توان برنامهٔ زیر را در محیط REPL نیز اجرا کرد، ولی برای بهتر دیده شدن کاربری آن بهتر است خطوط زیر را در یک فایل متنی با نام calc.jl ذخیره کنید:

	println("Type num 1, then press Enter")
	n1 = parse(Float64, readline())
	println("Type num 2, then press Enter")
	n2 = parse(Float64, readline())
	println("Enter the operation number you want:")
	println("1: +\t 2: -\t 3: *\t 4: /")
	op = parse(Int,readline())
	op == 1 && println(n1+n2)
	op == 2 && println(n1-n2)
	op == 3 && println(n1*n2)
	op == 4 && println(n1/n2)

‫حال که فایل را ذخیره کردید می‌توانید با دستور `julia calc.jl` فایل جولیا خود را اجرا کنید. تبریک می‌گویم شما یک ماشین حساب ساده ساخته‌اید!

‫دقت کنید که شاید لازم باشد با استفاده از `cd` دایرکتوری خط فرمان را به فولدری که فایل را در آن ذخیره کرده‌اید تغییر دهید.
"""

# ╔═╡ d872bf77-2f59-44b1-aa35-7ff4826f18a3
md"""
## ادامه در نتبوک بعدی
"""

# ╔═╡ Cell order:
# ╟─8239f617-92ae-4ff3-a4ea-6b3a4427cd49
# ╟─559483ba-7b30-11ee-269b-3dbea12248f9
# ╟─57f5ba9b-cf6d-4cc5-91cb-46418d74221e
# ╠═130d94a3-d17f-436e-9c5a-2bbd61ef65b4
# ╟─16c93179-1598-49e2-848c-1b719a82b21b
# ╟─61fa5002-e47b-4426-9fd0-9af1a1e9ef76
# ╠═2402f733-a995-44c4-9854-385310a9be86
# ╟─d462d327-7815-474c-848e-2c99737f5d71
# ╟─0b55bd66-f8db-4729-9e19-45557c2beffd
# ╟─e55e3f3f-f551-4077-9f2a-5e3e0685ba65
# ╟─6f0d3a26-7921-4a4b-bf4b-ac5d9bf66052
# ╟─f4926d5d-8efa-4b9f-9878-d238b962a79b
# ╟─ee5ed4b2-fdac-4b91-8e5f-266b983db513
# ╟─db9c3456-08ec-4d1c-9158-607476af6088
# ╟─d872bf77-2f59-44b1-aa35-7ff4826f18a3
