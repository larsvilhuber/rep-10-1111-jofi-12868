***** TABLE I ***************************************************

clear
set more off
use data_descriptive

* Net IR hedging
sum net_hedging_mv, d
egen nirh_98 = pctile(net_hedging_mv), p(98)

* Gross IR hedging
sum deriv_ir_hedging, d
egen girh_98 = pctile(deriv_ir_hedging), p(98)

* Gross FX hedging
sum deriv_fx_hedging, d
egen gfxh_98 = pctile(deriv_fx_hedging), p(98)

* Gross IR trading
sum deriv_ir_trading, d
egen girt_98 = pctile(deriv_ir_trading), p(98)

* Gross FX trading
sum deriv_fx_trading, d
egen gfxt_98 = pctile(deriv_fx_trading), p(98)

* Maturity gap
sum gap, d
egen gap_98 = pctile(gap), p(98)

* FX exposure
sum fx_income, d
egen fxi_98 = pctile(fx_income), p(98)



***** TABLE AII ***************************************************

clear
set more off
use data_descriptive
replace dividends_assets = dividends_quarterly / assets
replace mcap = log(mcap)

sum size, d
sum mcap, d 
sum mcap_a, d
sum net_income, d
sum dividends_assets, d
sum rating, d
sum net_worth_index, d
sum net_worth_index_nosize, d
sum regcap_rwa, d
sum tier1_rwa, d

* Foreign exchange exposure
sum fx_income, d

* Maturity gap
drop if gap < -1
sum gap, d
drop if missing(gap)

* Earning assets $<$~1~yr. (bhck3197)
sum bhck3197, d

* Interest-bearing deposits (bhck3296)
sum bhck3296, d

* Repricing long-term debt (bhck3298)
sum bhck3298, d

* Maturing long-term debt (bhck3409)
sum bhck3409, d

* Variable-rate pref.\ stock (bhck3408)
sum bhck3408, d

* Commercial paper (bhck2309)
sum bhck2309, d

* Fed funds and repo (bhdmb993 + bhckb995)
gen fed = bhdmb993 + bhckb995
sum fed, d

* Other borrowed money (bhck2332)
sum bhck2332, d

* Non int.-bearing assets (non_ib_assets)
sum non_ib_assets, d

* Non int.-bearing deposits (deposits_non_ib)
sum deposits_non_ib, d

* Total loans/ Assets (loans)
sum loans, d

* Real estate loans/ Asset (bhck1410)
sum bhck1410, d

* Real estate loans 2008Q4/ Assets (bhck1410)
keep if dateaxis==2008.75
sum bhck1410, d

******** Correlation between net worth measures


pwcorr size mcap mcap_a net_income dividends_assets rating net_worth_index net_worth_index_nosize regcap_rwa tier1_rwa


***** FIGURE 1 and B1 ***************************************************


* Net worth index with red bar
clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
egen median = median(net_worth_index), by(q)
egen upq = pctile(net_worth_index), p(75) by(q)
egen loq = pctile(net_worth_index), p(25) by(q)
egen upper = pctile(net_worth_index), p(95) by(q)
egen lower = pctile(net_worth_index), p(5) by(q)
egen mean = mean(net_worth_index), by(q)
label var q "Time"
local max=4
local min=-4.5
gen cmax=`max' if dateaxis>2008.75 & dateaxis<2010
gen cmin=`min' if dateaxis>2008.75 & dateaxis<2010
#delimit ;
twoway area cmax dateaxis, bcolor(cranberry) ||
area cmin dateaxis, bcolor(cranberry) ||
rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Net worth index")
xtitle("")
title("Net worth index")
;
#delimit cr

*Net worth index (excluding size)
clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
egen median = median(net_worth_index_nosize), by(q)
egen upq = pctile(net_worth_index_nosize), p(75) by(q)
egen loq = pctile(net_worth_index_nosize), p(25) by(q)
egen upper = pctile(net_worth_index_nosize), p(95) by(q)
egen lower = pctile(net_worth_index_nosize), p(5) by(q)
egen mean = mean(net_worth_index_nosize), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Net worth index (excl. size)")
xtitle("")
title("Net worth index (excl. size)")
;
#delimit cr 

* Market value of equity over assets
clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
egen median = median(mcap_a), by(q)
egen upq = pctile(mcap_a), p(75) by(q)
egen loq = pctile(mcap_a), p(25) by(q)
egen upper = pctile(mcap_a), p(95) by(q)
egen lower = pctile(mcap_a), p(5) by(q)
egen mean = mean(mcap_a), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Market capitalization / Assets")
xtitle("")
title("Market capitalization / Assets")
;
#delimit cr

* Size
clear
set more off
use data_decomposition
sort dateaxis
drop q
gen q=dateaxis
egen median = median(size), by(q)
egen upq = pctile(size), p(75) by(q)
egen loq = pctile(size), p(25) by(q)
egen upper = pctile(size), p(95) by(q)
egen lower = pctile(size), p(5) by(q)
egen mean = mean(size), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Size")
xtitle("")
title("Size")
;
#delimit cr

*Mcap
clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
replace mcap = log(mcap)
egen median = median(mcap), by(q)
egen upq = pctile(mcap), p(75) by(q)
egen loq = pctile(mcap), p(25) by(q)
egen upper = pctile(mcap), p(95) by(q)
egen lower = pctile(mcap), p(5) by(q)
egen mean = mean(mcap), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Market capitalization")
xtitle("")
title("Market capitalization")
;
#delimit cr

* Net income
clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
egen median = median(net_income), by(q)
egen upq = pctile(net_income), p(75) by(q)
egen loq = pctile(net_income), p(25) by(q)
egen upper = pctile(net_income), p(95) by(q)
egen lower = pctile(net_income), p(5) by(q)
egen mean = mean(net_income), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Net income / Assets")
xtitle("")
title("Net income / Assets")
;
#delimit cr

* Dividends (gross)
clear
set more off
use data_decomposition
gen d = dividends_quarterly/assets
sort dateaxis
gen q=dateaxis
egen median = median(d), by(q)
egen upq = pctile(d), p(75) by(q)
egen loq = pctile(d), p(25) by(q)
egen upper = pctile(d), p(95) by(q)
egen lower = pctile(d), p(5) by(q)
egen mean = mean(d), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Dividends / Assets")
xtitle("")
title("Dividends / Assets")
;
#delimit cr

*Ratings
clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
egen median = median(rating), by(q)
egen upq = pctile(rating), p(75) by(q)
egen loq = pctile(rating), p(25) by(q)
egen upper = pctile(rating), p(95) by(q)
egen lower = pctile(rating), p(5) by(q)
egen mean = mean(rating), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Credit rating")
xtitle("")
title("Credit rating")
;
#delimit cr

* Tier 1 capital
clear
set more off
use data_decomposition
drop if dateaxis < 1996
sort dateaxis
gen q=dateaxis
egen median = median(tier1_rwa), by(q)
egen upq = pctile(tier1_rwa), p(75) by(q)
egen loq = pctile(tier1_rwa), p(25) by(q)
egen upper = pctile(tier1_rwa), p(95) by(q)
egen lower = pctile(tier1_rwa), p(5) by(q)
egen mean = mean(tier1_rwa), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Tier 1 capital / RWA")
xtitle("")
title("Tier 1 capital / RWA")
;
#delimit cr

* Total regulatory capital / Risk-weighted assets
clear
set more off
use data_decomposition
drop if dateaxis < 1996
sort dateaxis
gen q=dateaxis
egen median = median(regcap_rwa), by(q)
egen upq = pctile(regcap_rwa), p(75) by(q)
egen loq = pctile(regcap_rwa), p(25) by(q)
egen upper = pctile(regcap_rwa), p(95) by(q)
egen lower = pctile(regcap_rwa), p(5) by(q)
egen mean = mean(regcap_rwa), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
xtitle("")
ytitle("Total regulatory capital / RWA")
title("Total regulatory capital / RWA")
;
#delimit cr


***** FIGURE B2 ***************************************************


* Net income

clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
egen median = median(net_income), by(q)
egen upq = pctile(net_income), p(75) by(q)
egen loq = pctile(net_income), p(25) by(q)
egen upper = pctile(net_income), p(95) by(q)
egen lower = pctile(net_income), p(5) by(q)
egen mean = mean(net_income), by(q)
label var q "Time"
local max=0.02
local min=-0.06
gen cmax=`max' if dateaxis>2008.75 & dateaxis<2010
gen cmin=`min' if dateaxis>2008.75 & dateaxis<2010
#delimit ;
twoway area cmax dateaxis, bcolor(cranberry) ||
area cmin dateaxis, bcolor(cranberry) ||
rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Net income / Total assets")
xtitle("")
;
#delimit cr



* Net interest income

clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
egen median = median(net_interest_income), by(q)
egen upq = pctile(net_interest_income), p(75) by(q)
egen loq = pctile(net_interest_income), p(25) by(q)
egen upper = pctile(net_interest_income), p(95) by(q)
egen lower = pctile(net_interest_income), p(5) by(q)
egen mean = mean(net_interest_income), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Net interest income / Total assets")
xtitle("")
;
#delimit cr


* Provisions

clear
set more off
use data_decomposition
sort dateaxis
gen q=dateaxis
egen median = median(provisions), by(q)
egen upq = pctile(provisions), p(75) by(q)
egen loq = pctile(provisions), p(25) by(q)
egen upper = pctile(provisions), p(95) by(q)
egen lower = pctile(provisions), p(5) by(q)
egen mean = mean(provisions), by(q)
label var q "Time"
#delimit ;
twoway rbar med upq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rbar med loq q, pstyle(p1) blcolor(gs15) bfcolor(gs8) barw(0.35) ||
rspike upq upper q, pstyle(p1) ||
rspike loq lower q, pstyle(p1) ||
rcap upper upper q, pstyle(p1) msize(*2) ||
rcap lower lower q, pstyle(p1) msize(*2) ||
rcap med med q, pstyle(p1) msize(*1.6) lcolor(gs3) lwidth(0.5) ||
scatter mean q, ms(Dh) msize(*1) mcolor(black) mlwidth(medthin) graphregion(color(white))
legend(off)
ytitle("Provisions / Total assets")
xtitle("")
;
#delimit cr


*** Chart of non-accrual loans by loan type


clear
set more off
use data_decomposition
collapse (mean) re=nonaccrual_real_estate b=nonaccrual_banks a=nonaccrual_agriculture c=nonaccrual_commercial h=nonaccrual_households f=nonaccrual_foreign_gov o=nonaccrual_other le=nonaccrual_leases se=nonaccrual_securities, by(dateaxis)
label var re "Real estate"
label var b "Banks"
replace b = 0 if missing(b)
label var a "Agriculture"
replace a = 0 if missing(a)
label var c "Commercial"
label var h "Households"
replace h = 0 if missing(h)
label var f "Foreign gov."
replace f = 0 if missing(f)
label var o "Other"
replace o = 0 if missing(o)
label var le "Leases"
replace le = 0 if missing(le)
label var se "Securities"
replace se = 0 if missing(se)
replace o = o + b + a +h +f+le+se
twoway (line re dateaxis) (line c dateaxis) (line o dateaxis) , graphregion(color(white)) ytitle("Non-accrual loans / Total assets")

***** TABLE CI ***************************************************

* Same code as Table I

***** FIGURE C1 ***************************************************

clear
set more off
use data_ir_histogram
keep if user_swaps_only==1
drop if deriv_ir_hedging==0
drop if swaps_net_exp < -0.2 | swaps_net_exp > 0.15

egen gap_25 = pctile(gap), p(25)
egen gap_75 = pctile(gap), p(75)
gen p_gap = swaps_net_exp if gap >gap_75
label var p_gap "Maturity gap +"
gen n_gap = swaps_net_exp if gap <gap_25
label var n_gap "Maturity gap -"

#delimit ;
twoway (histogram n_gap, color(green) bin(50)) (histogram p_gap, fcolor(none) bin(50) ), graphregion(color(white))
ytitle("Density")
title("Net swap hedging")
legend(label(1 "Maturity gap < 25th pc.") label(2 "Maturity gap > 75th pc."))
;
#delimit cr






