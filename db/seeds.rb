
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)


# scores seed
# score = PoliticianScore.create( politician_id: "1", mentions: "243")

# score = PoliticianScore.create( politician_id: "2", mentions: "2")
# score = PoliticianScore.create( politician_id: "3", mentions: "201")
# score = PoliticianScore.create( politician_id: "4", mentions: "200")
# score = PoliticianScore.create( politician_id: "5", mentions: "90")
# score = PoliticianScore.create( politician_id: "7", mentions: "67")
# score = PoliticianScore.create( politician_id: "6", mentions: "100")
# score = PoliticianScore.create( politician_id: "8", mentions: "187")
# score = PoliticianScore.create( politician_id: "9", mentions: "122")
# score = PoliticianScore.create( politician_id: "10", mentions: "28")
# score = PoliticianScore.create( politician_id: "11", mentions: "333")
# score = PoliticianScore.create( politician_id: "12", mentions: "0")
# score = PoliticianScore.create( politician_id: "13", mentions: "120")
# score = PoliticianScore.create( politician_id: "14", mentions: "67")
# score = PoliticianScore.create( politician_id: "15", mentions: "87")
# score = PoliticianScore.create( politician_id: "16", mentions: "453")
# score = PoliticianScore.create( politician_id: "17", mentions: "5")
# score = PoliticianScore.create( politician_id: "18", mentions: "434")
# score = PoliticianScore.create( politician_id: "19", mentions: "43")
# score = PoliticianScore.create( politician_id: "20", mentions: "39")
# score = PoliticianScore.create( politician_id: "21", mentions: "24")
# score = PoliticianScore.create( politician_id: "22", mentions: "23")



# Real SEED from they work for you

# require "nokogiri"
# require "open-uri"

# puts 'Cleaning database...'
# Politician.destroy_all

# puts 'Creating politicians...'

# page = Nokogiri::HTML(open("https://www.theyworkforyou.com/mps/"))

# page.css(".people-list__person").each do |mp|
#   full_name = mp.css(".people-list__person__name").text.split
#   first_name = full_name[0]
#   last_name = full_name[1]
#   party = mp.css(".people-list__person__party").text
#   # photo = mp.css(".people-list__person__image").attr("src").value
#   # url = "https://www.theyworkforyou.com#{photo}"
#   politician = Politician.new(first_name: first_name, last_name: last_name, party: party)
#   # politician.remote_photo_url = url
#   politician.save!
# end

# puts "Finished!"

# PoliticianScore.destroy_all
# # Po.destroy_all
# Politician.destroy_all

# # photos seed for pre-demo day

Politician.destroy_all

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536226973/Fantasy%20Politics/Chuka%20Umunna.jpg"
politician = Politician.new(rank: "Backbencher", party: "Labour", first_name: "Chuka", last_name: "Umunna", about: "Chuka Harrison Umunna is a British Labour politician who has been the Member of Parliament for Streatham since 2010 and was Shadow Business Secretary from 2011 to 2015.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714645/Fantasy%20Politics/jeremy_corbyn.jpg"
politician = Politician.new(rank: "Party Leader", party: "Labour", first_name: "Jeremy", last_name: "Corbyn", about: "Jeremy Bernard Corbyn is a British politician serving as Leader of the Labour Party and Leader of the Opposition since 2015. Corbyn was first elected Member of Parliament for Islington North in 1983.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714773/Fantasy%20Politics/Jacob%20Rees-%20Mogg.jpg"
politician = Politician.new(rank: "Backbencher", party: "Conservative", first_name: "Jacob", last_name: "Rees-Mogg", about:"Jacob William Rees-Mogg is a British politician serving as the Member of Parliament for North East Somerset since the general election of 2010.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715093/Fantasy%20Politics/Sir_Vince_Cable_crop_2.jpg"
politician = Politician.new(rank: "Party Leader", party: "Lib Dem", first_name: "Vince", last_name: "Cable", about:"Sir John Vincent Cable is a British politician serving as Leader of the Liberal Democrats and Member of Parliament for Twickenham since 2017. He was the Secretary of State for Business, Innovation and Skills from 2010 to 2015.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714618/Fantasy%20Politics/_102532948_tmay.jpg"
politician = Politician.new(rank: "Party Leader", party: "Conservative", first_name: "Theresa", last_name: "May", about: "Theresa Mary May is a British politician serving as Prime Minister of the United Kingdom and Leader of the Conservative Party since 2016. She served as Home Secretary from 2010 to 2016.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714809/Fantasy%20Politics/1200px-Official_portrait_of_Emily_Thornberry_crop_2.jpg"
politician = Politician.new(rank: "Shadow Cabinet", party: "Labour", first_name: "Emily", last_name: "Thornberry", about:"Emily Anne Thornberry is a British Labour Party politician who has been the Member of Parliament for Islington South and Finsbury since the 2005 general election. Thornberry was born in north Surrey, the daughter of Sallie and Cedric Thornberry.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715303/Fantasy%20Politics/Z4GFBNWBFFFYZN5HK6YABP6YVQ.jpg"
politician = Politician.new(rank: "Other", party: "UKIP", first_name: "Nigel", last_name: "Farage", about: "Nigel Paul Farage is a British politician, broadcaster and political analyst who is currently serving as a Vice Chairman of the pro-Brexit Leave Means Leave organisation.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536228357/Fantasy%20Politics/Caroline_Lucas_2010.jpg"
politician = Politician.new(rank: "Other", party: "Green", first_name: "Caroline", last_name: "Lucas", about: "Caroline Patricia Lucas is a British politician, who has been the Member of Parliament for Brighton Pavilion since the 2010 general election, when she became the Green Party's first MP.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715114/Fantasy%20Politics/Jo_Swinson_crop_2.jpg"
politician = Politician.new(rank: "Backbencher", party: "Lib Dem", first_name: "Jo", last_name: "Swinson", about:"Joanne Kate Swinson CBE is a Scottish Liberal Democrat politician and is the Member of Parliament for East Dunbartonshire.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536225944/Fantasy%20Politics/Shami%20Chakrabarti.jpg"
politician = Politician.new(rank: "Other", party: "Labour", first_name: "Shami", last_name: "Chakrabarti", about: "Sharmishta Chakrabarti, Baroness Chakrabarti, CBE, PC, commonly known as Shami Chakrabarti, is a British Labour Party politician and member of the House of Lords.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714914/Fantasy%20Politics/4627460.jpg"
politician = Politician.new(rank: "Backbencher", party: "SNP", first_name: "Keith", last_name: "Brown", about:"Keith James Brown is a Scottish politician who is currently Depute Leader of the Scottish National Party. He is a former Royal Marines commando and served as Cabinet Secretary for the Economy, Jobs and Fair Work from May 2016 to June 2018.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536226829/Fantasy%20Politics/Ed%20Milliband.jpg"
politician = Politician.new(rank: "Backbencher", party: "Labour", first_name: "Ed", last_name: "Milliband", about:"Edward Samuel Miliband is a British politician who was Leader of the Labour Party as well as Leader of the Opposition between 2010 and 2015.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714895/Fantasy%20Politics/Deirdre%20Brock.jpg"
politician = Politician.new(rank: "Backbencher", party: "SNP", first_name: "Deirdre", last_name: "Brock", about:"Deidre Leanne Brock MP (born 23 November 1961) is an Australian-born Scottish National Party (SNP) politician. She was first elected as the Member of Parliament (MP) for Edinburgh North and Leith in May 2015 — the first SNP representative to hold the seat at either a Westminster or Scottish Parliament level.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715216/Fantasy%20Politics/Catherine%20Bearder.jpg"
politician = Politician.new(rank: "Backbencher", party: "Lib Dem", first_name: "Catherine", last_name: "Bearder", about:"Catherine Zena Bearder is a Liberal Democrat politician and MEP for South East England.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536227433/Fantasy%20Politics/Mhairi%20Black.jpg"
politician = Politician.new(rank: "Other", party: "SNP", first_name: "Mhairi", last_name: "Black", about:"Mhairi Black MP is a Scottish politician. She has been the SNP Member of Parliament for Paisley and Renfrewshire South since 2015, when she defeated Labour Shadow Foreign Secretary Douglas Alexander. Black was the youngest MP to be elected to the House of Commons since 1880.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714642/Fantasy%20Politics/boris_johnson.jpg"
politician = Politician.new(rank: "Backbencher", party: "Conservative", first_name: "Boris", last_name: "Johnson", about: "Alexander Boris de Pfeffel Johnson, better known as Boris Johnson, is a British politician, popular historian, and journalist. He has been the Member of Parliament for Uxbridge and South Ruislip since 2015.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536228524/Fantasy%20Politics/jonathan-bartley.jpg"
politician = Politician.new(rank: "Party Leader", party: "Green", first_name: "Jonathan", last_name: "Bartley", about: "Jonathan Bartley is a British politician, and since 2 September 2016, Co-Leader of the Green Party of England and Wales, a position he shared with Caroline Lucas and, from 4 September 2018, Sian Berry.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714849/Fantasy%20Politics/1200px-Official_portrait_of_Ms_Diane_Abbott_crop_2.jpg"
politician = Politician.new(rank: "Shadow Cabinet", party: "Labour", first_name: "Diane", last_name: "Abbott", about:"Diane Julie Abbott is a British Labour Party politician who was appointed Shadow Home Secretary in October 2016.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536226033/Fantasy%20Politics/Tim%20Farron.jpg"
politician = Politician.new(rank: "Backbencher", party: "Lib Dem", first_name: "Tim", last_name: "Farron", about:"Timothy James Farron is a British politician who was the Leader of the Liberal Democrats between July 2015 and July 2017.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714929/Fantasy%20Politics/Ian%20Blackford.jpg"
politician = Politician.new(rank: "Backbencher", party: "SNP", first_name: "Ian", last_name: "Blackford", about:"Ian Blackford MP is a Scottish National Party politician who, since May 2015, has been the Member of Parliament for Ross, Skye and Lochaber.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715354/Fantasy%20Politics/Douglas%20Carswell.jpg"
politician = Politician.new(rank: "Other", party: "UKIP", first_name: "Douglas", last_name: "Carswell", about: "John Douglas Wilson Carswell is a former British Member of Parliament who in 2014 became the first elected MP for the UK Independence Party, representing Clacton. From March 2017, he sat as an independent.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715192/Fantasy%20Politics/Dick%20Newby_crop_2.jpg"
politician = Politician.new(rank: "Backbencher", party: "Lib Dem", first_name: "Dick", last_name: "Newby", about:"Richard Mark Newby, Baron Newby OBE PC, known popularly as Dick Newby, is a British politician, who has been the Leader of the Liberal Democrats in the House of Lords since September 2016.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714790/Fantasy%20Politics/Tom_Watson.jpg"
politician = Politician.new(rank: "Shadow Cabinet", party: "Labour", first_name: "Tom", last_name: "Watson", about:"Thomas Anthony Watson is a British Labour Party politician who was elected as Deputy Leader of the Labour Party in September 2015. ")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715284/Fantasy%20Politics/Gerard-Batten.jpg"
politician = Politician.new(rank: "Other", party: "UKIP", first_name: "Gerard", last_name: "Batten", about:"Gerard Joseph Batten is a British politician, who has been the leader of the UK Independence Party since February 2018, and is a Member of the European Parliament representing the European parliamentary constituency of London.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714652/Fantasy%20Politics/nicola_sturgeon.jpg"
politician = Politician.new(rank: "Party Leader", party: "SNP", first_name: "Nicola", last_name: "Sturgeon", about: "Nicola Ferguson Sturgeon is a Scottish politician who is the current First Minister of Scotland and leader of the Scottish National Party, in office since November 2014. She is the first woman to hold either position.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536228647/Fantasy%20Politics/sian-berry-1x1_0.jpg"
politician = Politician.new(rank: "Party Leader", party: "Green", first_name: "Sian", last_name: "Berry", about: "Siân Rebecca Berry is an English politician and, since 4 September 2018, co-leader of the Green Party of England and Wales alongside Jonathan Bartley. From 2006 to 2007, she was one of the Green Party's Principal Speakers.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536226315/Fantasy%20Politics/Helen%20Whately.jpg"
politician = Politician.new(rank: "Other", party: "Conservative", first_name: "Helen", last_name: "Whately", about: "Helen Olivia Bicknell Whately is a British Conservative Party politician who has been the Member of Parliament for the Faversham and Mid Kent constituency in Kent since 2015.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715067/Fantasy%20Politics/Blackman_Kirsty_MP.jpg"
politician = Politician.new(rank: "Backbencher", party: "SNP", first_name: "Kirsty", last_name: "Blackman", about:"Kirsty Ann Blackman MP is a Scottish National Party politician who was elected as the Member of Parliament for Aberdeen North at the May 2015 general election. She has two children.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714833/Fantasy%20Politics/John%20McDonnell.jpg"
politician = Politician.new(rank: "Shadow Cabinet", party: "Labour", first_name: "John", last_name: "McDonnell", about:"John Martin McDonnell is a British Labour Party politician who was appointed the Shadow Chancellor of the Exchequer in September 2015.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715325/Fantasy%20Politics/Mike%20Hookem.jpg"
politician = Politician.new(rank: "Other", party: "UKIP", first_name: "Mike", last_name: "Hookem", about: "Michael Hookem is a Member of the European Parliament for the Yorkshire and the Humber region for the UK Independence Party.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715175/Fantasy%20Politics/Sal%20Brinton.jpg"
politician = Politician.new(rank: "Backbencher", party: "Lib Dem", first_name: "Sal", last_name: "Brinton", about:"Sarah Virginia Brinton, Baroness Brinton, known popularly as Sal Brinton, is the President of the UK Liberal Democrats.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1536226653/Fantasy%20Politics/Harriet%20Harman.jpg"
politician = Politician.new(rank: "Backbencher", party: "Labour", first_name: "Harriet", last_name: "Harman", about:"Harriet Ruth Harman QC is a British solicitor and Labour Party politician who has served as the Member of Parliament since 1982, first for Peckham, and then for its successor constituency of Camberwell and Peckham since 1997. ")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714711/Fantasy%20Politics/Sajid_Javid_MP.jpg"
politician = Politician.new(rank: "Cabinet", party: "Conservative", first_name: "Sajid", last_name: "Javid", about:" Sajid Javid is a British politician of the Conservative Party and former managing director at Deutsche Bank. He was appointed Home Secretary in April 2018. He has been the Member of Parliament for Bromsgrove in Worcestershire since 2010.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535714754/Fantasy%20Politics/Andrea_Leadsom_crop_2.jpg"
politician = Politician.new(rank: "Cabinet", party: "Conservative", first_name: "Andrea", last_name: "Leadsom", about:"Andrea Jacqueline Leadsom is a British Conservative Party politician, who became Leader of the House of Commons on 11 June 2017.")
politician.remote_photo_url = url
politician.save!

url = "https://res.cloudinary.com/dodobzdpn/image/upload/v1535715385/Fantasy%20Politics/Mark_Reckless_AM__2827889492560_29.jpg"
politician = Politician.new(rank: "Other", party: "Conservative", first_name: "Mark", last_name: "Reckless", about: "Michael Hookem was a Member of the Conservative party before defecting to UKIP in 2014. He then defected from UKIP to the Conservative Group in the Welsh Assembly in 2017." )
politician.remote_photo_url = url
politician.save!


