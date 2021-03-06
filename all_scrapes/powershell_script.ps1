if (!($args.Length -eq 1)) {
    Write-Host("Uh-Oh! The number of arguments passed to the script should be 1.")
}
elseif ($args -eq "cdc".ToLower()) {
    scrapy crawl cdc_links
    scrapy crawl cdc_posts -o posts/cdc_posts.json
}
elseif ($args -eq "brazil".ToLower()) {
    scrapy crawl brazil_links
    scrapy crawl brazil_posts -o posts/brazil_posts.json
}
elseif ($args -eq "spain".ToLower()) {
    scrapy crawl spain_links
    scrapy crawl spain_posts -o posts/spain_posts.json
}
elseif ($args -eq "uk".ToLower()) {
    scrapy crawl uk_links
    scrapy crawl uk_posts -o posts/uk_posts.json
}
elseif ($args -eq "italy".ToLower()) {
    scrapy crawl italy_links
    scrapy crawl italy_posts -o posts/italy_posts.json
}
elseif ($args -eq "germany".ToLower()) {
    scrapy crawl germany_links
    scrapy crawl germany_posts -o posts/germany_posts.json
}
elseif ($args -eq "peru".ToLower()) {
    scrapy crawl peru_links
    scrapy crawl peru_posts -o posts/peru_posts.json
}elseif ($args -eq "new_zealand".ToLower()) {
    python .\new_zealand_links\new_zealand_links.py
    scrapy crawl new_zealand_posts -o posts/new_zealand_posts.json
}
elseif ($args -eq "korea".ToLower()) {
    scrapy crawl korea_links
    scrapy crawl korea_posts -o posts/korea_posts.json
}
elseif ($args -eq "iran".ToLower()) {
    scrapy crawl iran_links
    scrapy crawl iran_posts -o posts/iran_posts.json
}elseif ($args -eq "vietnam".ToLower()) {
    python .\vietnam_links\vietnam_links.py
    scrapy crawl vietnam_posts -o posts/vietnam_posts.json
}
elseif ($args -eq "all".ToLower()) {
    .\powershell_script.ps1 cdc
    .\powershell_script.ps1 brazil
    .\powershell_script.ps1 spain
    .\powershell_script.ps1 uk
    .\powershell_script.ps1 italy
    .\powershell_script.ps1 germany
    .\powershell_script.ps1 peru
    .\powershell_script.ps1 new_zealand
    .\powershell_script.ps1 korea
    .\powershell_script.ps1 iran
    .\powershell_script.ps1 vietnam
}
else {
    Write-Host("Uh-Oh! Sorry, that region does not have any script for it. `nCheck README for all available options.")
}