***** TABLES II AND BI ***************************************************

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)

* Pooled
reg hed_norm size_norm absgap_norm tfe*, cluster(id)
reg hed_norm mcapa_norm absgap_norm tfe*, cluster(id)
reg hed_norm nwi_norm absgap_norm tfe*, cluster(id)
reg hed_norm nwi_nosize_norm absgap_norm tfe*, cluster(id)
reg hed_norm ni_norm absgap_norm tfe*, cluster(id)
reg hed_norm mcap_norm absgap_norm tfe*, cluster(id)
reg hed_norm r_norm absgap_norm tfe*, cluster(id)
reg hed_norm div_norm absgap_norm tfe*, cluster(id)

reg grosshed_norm size_norm absgap_norm tfe*, cluster(id)
reg grosshed_norm mcapa_norm absgap_norm tfe*, cluster(id)
reg grosshed_norm nwi_norm absgap_norm tfe*, cluster(id)
reg grosshed_norm nwi_nosize_norm absgap_norm tfe*, cluster(id)
reg grosshed_norm ni_norm absgap_norm tfe*, cluster(id)
reg grosshed_norm mcap_norm absgap_norm tfe*, cluster(id)
reg grosshed_norm r_norm absgap_norm tfe*, cluster(id)
reg grosshed_norm div_norm absgap_norm tfe*, cluster(id)

reg fxhed_norm size_norm fxexp_norm tfe*, cluster(id)
reg fxhed_norm mcapa_norm fxexp_norm tfe*, cluster(id)
reg fxhed_norm nwi_norm fxexp_norm tfe*, cluster(id)
reg fxhed_norm nwi_nosize_norm fxexp_norm tfe*, cluster(id)
reg fxhed_norm ni_norm fxexp_norm tfe*, cluster(id)
reg fxhed_norm mcap_norm fxexp_norm tfe*, cluster(id)
reg fxhed_norm r_norm fxexp_norm tfe*, cluster(id)
reg fxhed_norm div_norm fxexp_norm tfe*, cluster(id)

* Tobit
tobit hed_norm size_norm absgap_norm tfe*, ll(0) 
margins, dydx(size_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit hed_norm mcapa_norm absgap_norm tfe*, ll(0) 
margins, dydx(mcapa_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit hed_norm nwi_norm absgap_norm tfe*, ll(0)
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit hed_norm nwi_nosize_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit hed_norm ni_norm absgap_norm tfe*, ll(0) 
margins, dydx(ni_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit hed_norm mcap_norm absgap_norm tfe*, ll(0) 
margins, dydx(mcap_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit hed_norm r_norm absgap_norm tfe*, ll(0) 
margins, dydx(r_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit hed_norm div_norm absgap_norm tfe*, ll(0)
margins, dydx(div_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))


tobit grosshed_norm size_norm absgap_norm tfe*, ll(0) 
margins, dydx(size_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm mcapa_norm absgap_norm tfe*, ll(0) 
margins, dydx(mcapa_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm nwi_norm absgap_norm tfe*, ll(0)
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm nwi_nosize_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm ni_norm absgap_norm tfe*, ll(0) 
margins, dydx(ni_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm mcap_norm absgap_norm tfe*, ll(0) 
margins, dydx(mcap_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm r_norm absgap_norm tfe*, ll(0) 
margins, dydx(r_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm div_norm absgap_norm tfe*, ll(0)
margins, dydx(div_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))


tobit fxhed_norm size_norm absgap_norm tfe*, ll(0) 
margins, dydx(size_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm mcapa_norm absgap_norm tfe*, ll(0) 
margins, dydx(mcapa_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm nwi_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm nwi_nosize_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm ni_norm absgap_norm tfe*, ll(0) 
margins, dydx(ni_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm mcap_norm absgap_norm tfe*, ll(0) 
margins, dydx(mcap_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm r_norm absgap_norm tfe*, ll(0) 
margins, dydx(r_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm div_norm absgap_norm tfe*, ll(0) 
margins, dydx(div_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

* Within
xtset id_new datevar
xtreg hed_norm size_norm absgap_norm tfe*, i(id_new) fe
xtreg hed_norm mcapa_norm absgap_norm tfe*, i(id_new) fe
xtreg hed_norm nwi_norm absgap_norm tfe*, i(id_new) fe
xtreg hed_norm nwi_nosize_norm absgap_norm tfe*, i(id_new) fe
xtreg hed_norm ni_norm absgap_norm tfe*, i(id_new) fe
xtreg hed_norm mcap_norm absgap_norm tfe*, i(id_new) fe
xtreg hed_norm r_norm absgap_norm tfe*, i(id_new) fe
xtreg hed_norm div_norm absgap_norm tfe*, i(id_new) fe

xtreg grosshed_norm size_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm mcapa_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm nwi_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm nwi_nosize_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm ni_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm mcap_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm r_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm div_norm absgap_norm tfe*, i(id_new) fe

xtreg fxhed_norm size_norm fxexp_norm tfe*, i(id_new) fe
xtreg fxhed_norm mcapa_norm fxexp_norm tfe*, i(id_new) fe
xtreg fxhed_norm nwi_norm fxexp_norm tfe*, i(id_new) fe
xtreg fxhed_norm nwi_nosize_norm fxexp_norm tfe*, i(id_new) fe
xtreg fxhed_norm ni_norm fxexp_norm tfe*, i(id_new) fe
xtreg fxhed_norm mcap_norm fxexp_norm tfe*, i(id_new) fe
xtreg fxhed_norm r_norm fxexp_norm tfe*, i(id_new) fe
xtreg fxhed_norm div_norm fxexp_norm tfe*, i(id_new) fe


***** TABLES III / IV / V / VI / BIV / CII ***************************************************

clear
set more off

foreach dataset in data_dd data_ddpsm {
    **use data_dd, clear
    * For unmatched: use data_dd, clear / From propensity score matched: use data_ddpsm, clear
    use `dataset', clear
    xtset id datevar
    gen post_treatment = (dateaxis > 2009.75)
    gen post_treatment_treated = post_treatment * treatment
    tab dateaxis, gen(tfe)
    
    *** Renormalize the variables with the sample standard deviations
    * Net hedging from market value
    egen s_hed2 = sd(abs_net_hedging_mv)
    gen hed_norm2 = abs_net_hedging_mv / s_hed2
    * Gross hedging
    egen s_ghed2 = sd(deriv_ir_hedging)
    gen grosshed_norm2 = deriv_ir_hedging / s_ghed2
    * FX hedging
    egen s_deriv_fx_hedging2 = sd(deriv_fx_hedging)
    gen fxhed_norm2 = deriv_fx_hedging / s_deriv_fx_hedging2
    * Net worth index
    egen s_net_worth_index2 = sd(net_worth_index)
    gen nwi_norm2 = net_worth_index / s_net_worth_index2
    * Market cap / assets
    egen s_mcap_a2 = sd(mcap_a)
    gen mcapa_norm2 = mcap_a / s_mcap_a2
    * Size
    egen s_size2 = sd(size)
    gen size_norm2 = size / s_size2
    * Absgap
    egen s_absgap2 = sd(absgap)
    gen absgap_norm2 = absgap / s_absgap2
    * FX exposure
    egen s_fx_income2 = sd(fx_income)
    gen fxexp_norm2 = fx_income / s_fx_income2
    * Market cap
    egen s_logmcap2 = sd(logmcap)
    gen mcap_norm2 = logmcap / s_logmcap2
    * Net income
    egen s_net_income2 = sd(net_income)
    gen ni_norm2 = net_income / s_net_income2
    * Dividend
    gen div = dividends_quarterly/assets
    egen s_d2 = sd(div)
    gen div_norm2 = div / s_d2
    * Rating
    egen s_r2 = sd(worth_rating)
    gen r_norm2 = worth_rating / s_r2
    
    * Baseline hedging regressions
    xtreg hed_norm2 treatment post_treatment post_treatment_treated absgap_norm tfe*, fe
    xtreg  grosshed_norm2 treatment post_treatment post_treatment_treated absgap_norm tfe*, fe
    xtreg  fxhed_norm2 treatment post_treatment post_treatment_treated absgap_norm tfe*, fe
    
    * Baseline net worth regressions
    xtreg  nwi_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    xtreg  mcapa_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    xtreg  size_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    xtreg  ni_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    xtreg  div_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    xtreg  mcap_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    xtreg  r_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    
    * Exposures
    xtreg  absgap_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    xtreg  fxexp_norm2 treatment post_treatment post_treatment_treated tfe*, fe
    
    * Interacted with year dummies
    gen y2005 = (dateaxis >=2005 & dateaxis < 2006)
    gen y2006 = (dateaxis >=2006 & dateaxis < 2007)
    gen y2007 = (dateaxis >=2007 & dateaxis < 2008)
    gen y2009 = (dateaxis >=2009 & dateaxis < 2010)
    gen y2010 = (dateaxis >=2010 & dateaxis < 2011)
    gen y2011 = (dateaxis >=2011 & dateaxis < 2012)
    gen y2012 = (dateaxis >=2012 & dateaxis < 2013)
    gen y2013 = (dateaxis >=2013 & dateaxis < 2014)
    gen post_treatment_treated_2005 = treatment*y2005
    gen post_treatment_treated_2006 = treatment*y2006
    gen post_treatment_treated_2007 = treatment*y2007
    gen post_treatment_treated_2009 = treatment*y2009
    gen post_treatment_treated_2010 = treatment*y2010
    gen post_treatment_treated_2011 = treatment*y2011
    gen post_treatment_treated_2012 = treatment*y2012
    gen post_treatment_treated_2013 = treatment*y2013
    
    xtset id datevar
    xtreg hed_norm2 treatment post_treatment_treated_2* absgap_norm y20* tfe*, fe
    xtreg grosshed_norm2 treatment post_treatment_treated_2* absgap_norm y20* tfe*, fe
    xtreg fxhed_norm2 treatment post_treatment_treated_2* absgap_norm y20* tfe*, fe
    
    
    * With terciles of exposure
    gen post_treatment_treated_t2 = post_treatment_treated * qexp2
    gen post_treatment_treated_t3 = post_treatment_treated * qexp3
    
    xtreg hed_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 absgap_norm tfe*, fe
    xtreg  grosshed_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 absgap_norm tfe*, fe
    xtreg  fxhed_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 absgap_norm tfe*, fe
    
    xtreg nwi_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
    xtreg mcapa_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
    xtreg size_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
    xtreg ni_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
    xtreg div_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
    xtreg mcap_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
    xtreg r_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
    
    xtreg absgap_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
    xtreg fxexp_norm2 treatment post_treatment post_treatment_treated post_treatment_treated_t2 post_treatment_treated_t3 tfe*, fe
}
* With housing supply elasticity
clear
set more off
use data_dd, clear
xtset id datevar
gen post_treatment = (dateaxis > 2009.75)
gen post_treatment_treated = post_treatment * treatment
tab dateaxis, gen(tfe)

*** Renormalize the variables with the sample standard deviations
* Net hedging from market value
egen s_hed2 = sd(abs_net_hedging_mv)
gen hed_norm2 = abs_net_hedging_mv / s_hed2
* Gross hedging
egen s_ghed2 = sd(deriv_ir_hedging)
gen grosshed_norm2 = deriv_ir_hedging / s_ghed2
* FX hedging
egen s_deriv_fx_hedging2 = sd(deriv_fx_hedging)
gen fxhed_norm2 = deriv_fx_hedging / s_deriv_fx_hedging2
* Net worth index
egen s_net_worth_index2 = sd(net_worth_index)
gen nwi_norm2 = net_worth_index / s_net_worth_index2
* Market cap / assets
egen s_mcap_a2 = sd(mcap_a)
gen mcapa_norm2 = mcap_a / s_mcap_a2
* Size
egen s_size2 = sd(size)
gen size_norm2 = size / s_size2
* Absgap
egen s_absgap2 = sd(absgap)
gen absgap_norm2 = absgap / s_absgap2
* FX exposure
egen s_fx_income2 = sd(fx_income)
gen fxexp_norm2 = fx_income / s_fx_income2
* Market cap
egen s_logmcap2 = sd(logmcap)
gen mcap_norm2 = logmcap / s_logmcap2
* Net income
egen s_net_income2 = sd(net_income)
gen ni_norm2 = net_income / s_net_income2
* Dividend
gen div = dividends_quarterly/assets
egen s_d2 = sd(div)
gen div_norm2 = div / s_d2
* Rating
egen s_r2 = sd(worth_rating)
gen r_norm2 = worth_rating / s_r2

* Baseline hedging regressions
xtreg hed_norm2 treatment post_treatment post_treatment_treated absgap_norm tfe*, fe
xtreg  grosshed_norm2 treatment post_treatment post_treatment_treated absgap_norm tfe*, fe
xtreg  fxhed_norm2 treatment post_treatment post_treatment_treated absgap_norm tfe*, fe


***** TABLE VII and BV ***************************************************

clear
set more off
use data_iv, clear

* First stages
reg nwi_norm d_price  absgap_norm tfe*, cl(id)
xtreg nwi_norm d_price absgap_norm tfe*, fe cl(id)

reg nwi_nosize_norm d_price absgap_norm tfe*, cl(id)
xtreg nwi_nosize_norm d_price absgap_norm tfe*, fe cl(id)

reg size_norm d_price absgap_norm tfe*, cl(id)
xtreg size_norm d_price absgap_norm tfe*, fe cl(id)

reg mcapa_norm d_price absgap_norm tfe*, cl(id)
xtreg mcapa_norm d_price absgap_norm tfe*, fe cl(id)

reg ni_norm d_price absgap_norm tfe*, cl(id)
xtreg ni_norm d_price absgap_norm tfe*, fe cl(id)

reg div_norm d_price absgap_norm tfe*, cl(id)
xtreg div_norm d_price absgap_norm tfe*, fe cl(id)

reg mcap_norm d_price absgap_norm tfe*, cl(id)
xtreg mcap_norm d_price absgap_norm tfe*, fe cl(id)

reg r_norm d_price absgap_norm, cl(id)
xtreg r_norm d_price absgap_norm, fe cl(id)

* Second stages
reg hed_norm nwi_pred absgap_norm tfe*, cl(id)
reg grosshed_norm nwi_pred absgap_norm tfe*, cl(id)
reg fxhed_norm nwi_pred absgap_norm tfe*, cl(id)
xtreg hed_norm nwi_predxt absgap_norm tfe*, fe cl(id)
xtreg grosshed_norm nwi_predxt absgap_norm tfe*, fe cl(id)
xtreg fxhed_norm nwi_predxt absgap_norm tfe*, fe cl(id)

reg hed_norm nwinosize_pred absgap_norm tfe*, cl(id)
reg grosshed_norm nwinosize_pred absgap_norm tfe*, cl(id)
reg fxhed_norm nwinosize_pred absgap_norm tfe*, cl(id)
xtreg hed_norm nwinosize_predxt absgap_norm tfe*, fe cl(id)
xtreg grosshed_norm nwinosize_predxt absgap_norm tfe*, fe cl(id)
xtreg fxhed_norm nwinosize_predxt absgap_norm tfe*, fe cl(id)

reg hed_norm mcapa_pred absgap_norm tfe*, cl(id)
reg grosshed_norm mcapa_pred absgap_norm tfe*, cl(id)
reg fxhed_norm mcapa_pred absgap_norm tfe*, cl(id)
xtreg hed_norm mcapa_predxt absgap_norm tfe*, fe cl(id)
xtreg grosshed_norm mcapa_predxt absgap_norm tfe*, fe cl(id)
xtreg fxhed_norm mcapa_predxt absgap_norm tfe*, fe cl(id)

reg hed_norm ni_pred absgap_norm tfe*, cl(id)
reg grosshed_norm ni_pred absgap_norm tfe*, cl(id)
reg fxhed_norm ni_pred absgap_norm tfe*, cl(id)
xtreg hed_norm ni_predxt absgap_norm tfe*, fe cl(id)
xtreg grosshed_norm ni_predxt absgap_norm tfe*, fe cl(id)
xtreg fxhed_norm ni_predxt absgap_norm tfe*, fe cl(id)

reg hed_norm mcap_pred absgap_norm tfe*, cl(id)
reg grosshed_norm mcap_pred absgap_norm tfe*, cl(id)
reg fxhed_norm mcap_pred absgap_norm tfe*, cl(id)
xtreg hed_norm mcap_predxt absgap_norm tfe*, fe cl(id)
xtreg grosshed_norm mcap_predxt absgap_norm tfe*, fe cl(id)
xtreg fxhed_norm mcap_predxt absgap_norm tfe*, fe cl(id)

reg hed_norm r_pred absgap_norm tfe*, cl(id)
reg grosshed_norm r_pred absgap_norm tfe*, cl(id)
reg fxhed_norm r_pred absgap_norm tfe*, cl(id)
xtreg hed_norm r_predxt absgap_norm tfe*, fe cl(id)
xtreg grosshed_norm r_predxt absgap_norm tfe*, fe cl(id)
xtreg fxhed_norm r_predxt absgap_norm tfe*, fe cl(id)

***** TABLE VIII ***************************************************

* Interest rate hedging and IR exposure
clear
set more off
use data_cs_within, clear
sort id dateaxis
by id: gen end_date_build = dateaxis if _n==_N
by id: egen end_date = max(end_date_build)
gen early_drop = 1 if end_date < 2013.75
replace early_drop = 0 if missing(early_drop)
by id: gen last_mcap_build = mcap_a if _n==_N
by id: egen last_mcap = max(last_mcap_build)
gen default = 0
replace default = 1 if early_drop == 1 & last_mcap < 0.06

sort id
by id: egen nz = sum(deriv_ir_hedging)
drop if nz==0

sort id dateaxis
gen d_t = 1 if default==1 & dateaxis == end_date
replace d_t = 0 if missing(d_t)

gen d_t1 = 1 if default==1 & dateaxis == (end_date - 0.25)
replace d_t1 = 0 if missing(d_t1)

gen d_t2 = 1 if default==1 & dateaxis == (end_date - 0.5)
replace d_t2 = 0 if missing(d_t2)

gen d_t3 = 1 if default==1 & dateaxis == (end_date - 0.75)
replace d_t3 = 0 if missing(d_t3)

gen d_t4 = 1 if default==1 & dateaxis == (end_date - 1)
replace d_t4 = 0 if missing(d_t4)

gen d_t5 = 1 if default==1 & dateaxis == (end_date - 1.25)
replace d_t5 = 0 if missing(d_t5)

gen d_t6 = 1 if default==1 & dateaxis == (end_date - 1.5)
replace d_t6 = 0 if missing(d_t6)

gen d_t7 = 1 if default==1 & dateaxis == (end_date - 1.75)
replace d_t7 = 0 if missing(d_t7)

gen d_t8 = 1 if default==1 & dateaxis == (end_date - 2)
replace d_t8 = 0 if missing(d_t8)
tab dateaxis, gen(tfe)
xtset id datevar
xtreg hed_norm d_t* tfe*, fe
xtreg grosshed_norm d_t* tfe*, fe
xtreg absgap_norm d_t* tfe*, fe

* Interest rate trading

clear
set more off
use data_cs_within, clear
sort id dateaxis
by id: gen end_date_build = dateaxis if _n==_N
by id: egen end_date = max(end_date_build)
gen early_drop = 1 if end_date < 2013.75
replace early_drop = 0 if missing(early_drop)
by id: gen last_mcap_build = mcap_a if _n==_N
by id: egen last_mcap = max(last_mcap_build)
gen default = 0
replace default = 1 if early_drop == 1 & last_mcap < 0.06

sort id
by id: egen nz = sum(deriv_ir_trading)
drop if nz==0

sort id dateaxis
gen d_t = 1 if default==1 & dateaxis == end_date
replace d_t = 0 if missing(d_t)

gen d_t1 = 1 if default==1 & dateaxis == (end_date - 0.25)
replace d_t1 = 0 if missing(d_t1)

gen d_t2 = 1 if default==1 & dateaxis == (end_date - 0.5)
replace d_t2 = 0 if missing(d_t2)

gen d_t3 = 1 if default==1 & dateaxis == (end_date - 0.75)
replace d_t3 = 0 if missing(d_t3)

gen d_t4 = 1 if default==1 & dateaxis == (end_date - 1)
replace d_t4 = 0 if missing(d_t4)

gen d_t5 = 1 if default==1 & dateaxis == (end_date - 1.25)
replace d_t5 = 0 if missing(d_t5)

gen d_t6 = 1 if default==1 & dateaxis == (end_date - 1.5)
replace d_t6 = 0 if missing(d_t6)

gen d_t7 = 1 if default==1 & dateaxis == (end_date - 1.75)
replace d_t7 = 0 if missing(d_t7)

gen d_t8 = 1 if default==1 & dateaxis == (end_date - 2)
replace d_t8 = 0 if missing(d_t8)

tab dateaxis, gen(tfe)
xtset id datevar
xtreg grosstrad_norm d_t* tfe*, fe

* FX hedging and FX exposure

clear
set more off
use data_cs_within, clear
sort id dateaxis
by id: gen end_date_build = dateaxis if _n==_N
by id: egen end_date = max(end_date_build)
gen early_drop = 1 if end_date < 2013.75
replace early_drop = 0 if missing(early_drop)
by id: gen last_mcap_build = mcap_a if _n==_N
by id: egen last_mcap = max(last_mcap_build)
gen default = 0
replace default = 1 if early_drop == 1 & last_mcap < 0.06

sort id
by id: egen nz = sum(deriv_fx_hedging)
drop if nz==0

sort id dateaxis
gen d_t = 1 if default==1 & dateaxis == end_date
replace d_t = 0 if missing(d_t)

gen d_t1 = 1 if default==1 & dateaxis == (end_date - 0.25)
replace d_t1 = 0 if missing(d_t1)

gen d_t2 = 1 if default==1 & dateaxis == (end_date - 0.5)
replace d_t2 = 0 if missing(d_t2)

gen d_t3 = 1 if default==1 & dateaxis == (end_date - 0.75)
replace d_t3 = 0 if missing(d_t3)

gen d_t4 = 1 if default==1 & dateaxis == (end_date - 1)
replace d_t4 = 0 if missing(d_t4)

gen d_t5 = 1 if default==1 & dateaxis == (end_date - 1.25)
replace d_t5 = 0 if missing(d_t5)

gen d_t6 = 1 if default==1 & dateaxis == (end_date - 1.5)
replace d_t6 = 0 if missing(d_t6)

gen d_t7 = 1 if default==1 & dateaxis == (end_date - 1.75)
replace d_t7 = 0 if missing(d_t7)

gen d_t8 = 1 if default==1 & dateaxis == (end_date - 2)
replace d_t8 = 0 if missing(d_t8)

tab dateaxis, gen(tfe)
xtset id datevar
xtreg fxhed_norm d_t* tfe*, fe
xtreg fxexp_norm d_t* tfe*, fe

* FX trading

clear
set more off
use data_cs_within, clear
sort id dateaxis
by id: gen end_date_build = dateaxis if _n==_N
by id: egen end_date = max(end_date_build)
gen early_drop = 1 if end_date < 2013.75
replace early_drop = 0 if missing(early_drop)
by id: gen last_mcap_build = mcap_a if _n==_N
by id: egen last_mcap = max(last_mcap_build)
gen default = 0
replace default = 1 if early_drop == 1 & last_mcap < 0.06

sort id
by id: egen nz = sum(deriv_fx_trading)
drop if nz==0

sort id dateaxis
gen d_t = 1 if default==1 & dateaxis == end_date
replace d_t = 0 if missing(d_t)

gen d_t1 = 1 if default==1 & dateaxis == (end_date - 0.25)
replace d_t1 = 0 if missing(d_t1)

gen d_t2 = 1 if default==1 & dateaxis == (end_date - 0.5)
replace d_t2 = 0 if missing(d_t2)

gen d_t3 = 1 if default==1 & dateaxis == (end_date - 0.75)
replace d_t3 = 0 if missing(d_t3)

gen d_t4 = 1 if default==1 & dateaxis == (end_date - 1)
replace d_t4 = 0 if missing(d_t4)

gen d_t5 = 1 if default==1 & dateaxis == (end_date - 1.25)
replace d_t5 = 0 if missing(d_t5)

gen d_t6 = 1 if default==1 & dateaxis == (end_date - 1.5)
replace d_t6 = 0 if missing(d_t6)

gen d_t7 = 1 if default==1 & dateaxis == (end_date - 1.75)
replace d_t7 = 0 if missing(d_t7)

gen d_t8 = 1 if default==1 & dateaxis == (end_date - 2)
replace d_t8 = 0 if missing(d_t8)

tab dateaxis, gen(tfe)
xtset id datevar
xtreg grosstradfx_norm d_t* tfe*, fe


***** TABLE IX ***************************************************

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)

******* IR trading

* Pooled 
reg grosstrad_norm size_norm tfe*, cluster(id)
reg grosstrad_norm mcapa_norm tfe*, cluster(id)
reg grosstrad_norm nwi_norm tfe*, cluster(id)
reg grosstrad_norm nwi_nosize_norm tfe*, cluster(id)

* Tobit
tobit grosstrad_norm size_norm tfe*, ll(0) cluster(id)
margins, dydx(size_norm) predict(ystar(0,10000))

tobit grosstrad_norm mcapa_norm tfe*, ll(0) cluster(id)
margins, dydx(mcapa_norm) predict(ystar(0,10000))

tobit grosstrad_norm nwi_norm tfe*, ll(0) cluster(id)
margins, dydx(nwi_norm) predict(ystar(0,10000))

tobit grosstrad_norm nwi_nosize_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))

* BHC FE
xtset id_new datevar
xtreg grosstrad_norm size_norm tfe*, i(id_new) fe
xtreg grosstrad_norm mcapa_norm tfe*, i(id_new) fe
xtreg grosstrad_norm nwi_norm tfe*, i(id_new) fe
xtreg grosstrad_norm nwi_nosize_norm tfe*, i(id_new) fe

******* FX trading

* Pooled 
reg grosstradfx_norm size_norm tfe*, cluster(id)
reg grosstradfx_norm mcapa_norm tfe*, cluster(id)
reg grosstradfx_norm nwi_norm tfe*, cluster(id)
reg grosstradfx_norm nwi_nosize_norm tfe*, cluster(id)

* Tobit
tobit grosstradfx_norm size_norm tfe*, ll(0) cluster(id)
margins, dydx(size_norm) predict(ystar(0,10000))

tobit grosstradfx_norm mcapa_norm tfe*, ll(0) cluster(id)
margins, dydx(mcapa_norm) predict(ystar(0,10000))

tobit grosstradfx_norm nwi_norm tfe*, ll(0) cluster(id)
margins, dydx(nwi_norm) predict(ystar(0,10000))

tobit grosstradfx_norm nwi_nosize_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))

* BHC FE
xtset id_new datevar
xtreg grosstradfx_norm size_norm tfe*, i(id_new) fe
xtreg grosstradfx_norm mcapa_norm tfe*, i(id_new) fe
xtreg grosstradfx_norm nwi_norm tfe*, i(id_new) fe
xtreg grosstradfx_norm nwi_nosize_norm tfe*, i(id_new) fe


***** FIGURE 2 ***************************************************

* Gross IR hedging
clear
set more off
use data_dd, clear
sort treatment dateaxis
by treatment dateaxis: egen  mean_hedging=mean(deriv_ir_hedging)
gen mean_hedging1 = mean_hedging if treatment==1
gen mean_hedging0 = mean_hedging if treatment==0
label var mean_hedging0 "Non-treated"
label var mean_hedging1 "Treated"
#delimit ;
twoway (line mean_hedging0 dateaxis, lpattern(dash)) (line mean_hedging1 dateaxis), graphregion(color(white))
xline(2009, lwidth(1) lcolor(gs10))
ytitle("Hedging")
xtitle("")
;
#delimit cr

* Gross FX hedging
clear
set more off
use data_ddfx, clear
sort treatment dateaxis
by treatment dateaxis: egen  mean_hedgingfx=mean(deriv_fx_hedging)
gen mean_hedgingfx1 = mean_hedgingfx if treatment==1
gen mean_hedgingfx0 = mean_hedgingfx if treatment==0
label var mean_hedgingfx0 "Non-treated"
label var mean_hedgingfx1 "Treated"
#delimit ;
twoway (line mean_hedgingfx0 dateaxis, lpattern(dash)) (line mean_hedgingfx1 dateaxis), graphregion(color(white))
xline(2009, lwidth(1) lcolor(gs10))
ytitle("Hedging")
xtitle("")
;
#delimit cr

***** TABLE BII ***************************************************

* Excluding bottom tercile of size
clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)
bysort dateaxis: egen q1 = pctile(size), p(33)
drop if size < q1

* Pooled
reg hed_norm nwi_norm absgap_norm tfe*, cluster(id)
reg grosshed_norm nwi_norm absgap_norm tfe*, cluster(id)
reg fxhed_norm nwi_norm fxexp_norm tfe*, cluster(id)

* Tobit
tobit hed_norm nwi_norm absgap_norm tfe*, ll(0)
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm nwi_norm absgap_norm tfe*, ll(0)
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm nwi_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

* Within
xtset id_new datevar
xtreg hed_norm nwi_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm nwi_norm absgap_norm tfe*, i(id_new) fe
xtreg fxhed_norm nwi_norm absgap_norm tfe*, i(id_new) fe

* Control for size tercile dummies
clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)
bysort dateaxis: egen q1 = pctile(size), p(33)
bysort dateaxis: egen q2 = pctile(size), p(66)
gen midsize = (size > q1 & size < q2 & size ~=.)
gen largesize = (size > q2 & size ~=.)

* Pooled
reg hed_norm nwi_nosize_nor midsize largesize absgap_norm tfe*, cluster(id)
reg grosshed_norm nwi_nosize_nor midsize largesize absgap_norm tfe*, cluster(id)
reg fxhed_norm nwi_nosize_norm midsize largesize fxexp_norm tfe*, cluster(id)

* Tobit
tobit hed_norm nwi_nosize_nor midsize largesize absgap_norm tfe*, ll(0)
margins, dydx(nwi_nosize_nor) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit grosshed_norm nwi_nosize_nor midsize largesize absgap_norm tfe*, ll(0)
margins, dydx(nwi_nosize_nor) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

tobit fxhed_norm nwi_nosize_norm midsize largesize absgap_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

* Within
xtset id_new datevar
xtreg hed_norm nwi_nosize_nor midsize largesize absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm nwi_nosize_nor midsize largesize absgap_norm tfe*, i(id_new) fe
xtreg fxhed_norm nwi_nosize_norm midsize largesize absgap_norm tfe*, i(id_new) fe

***** TABLE BIII ***************************************************
 
clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)

* Net hedging - Pooled
reg hed_norm size_norm deposits_norm absnarrowgap_norm tfe*, cluster(id)
reg hed_norm mcapa_norm deposits_norm absnarrowgap_norm tfe*, cluster(id)
reg hed_norm nwi_norm deposits_norm absnarrowgap_norm tfe*, cluster(id)
reg hed_norm nwi_nosize_norm deposits_norm absnarrowgap_norm tfe*, cluster(id)

* Gross hedging - Pooled
reg grosshed_norm size_norm deposits_norm absnarrowgap_norm tfe*, cluster(id)
reg grosshed_norm mcapa_norm deposits_norm absnarrowgap_norm tfe*, cluster(id)
reg grosshed_norm nwi_norm deposits_norm absnarrowgap_norm tfe*, cluster(id)
reg grosshed_norm nwi_nosize_norm deposits_norm absnarrowgap_norm tfe*, cluster(id)

* Net hedging - Tobit
tobit hed_norm size_norm deposits_norm absnarrowgap_norm tfe*, ll(0) 
margins, dydx(size_norm) predict(ystar(0,10000))
margins, dydx(deposits_norm) predict(ystar(0,10000))

tobit hed_norm mcapa_norm deposits_norm absnarrowgap_norm tfe*, ll(0)
margins, dydx(mcapa_norm) predict(ystar(0,10000))
margins, dydx(deposits_norm) predict(ystar(0,10000))

tobit hed_norm nwi_norm deposits_norm absnarrowgap_norm tfe*, ll(0) 
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(deposits_norm) predict(ystar(0,10000))

tobit hed_norm nwi_nosize_norm deposits_norm absnarrowgap_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(deposits_norm) predict(ystar(0,10000))

* Gross hedging - Tobit
tobit grosshed_norm size_norm deposits_norm absnarrowgap_norm tfe*, ll(0) 
margins, dydx(size_norm) predict(ystar(0,10000))
margins, dydx(deposits_norm) predict(ystar(0,10000))

tobit grosshed_norm mcapa_norm deposits_norm absnarrowgap_norm tfe*, ll(0) 
margins, dydx(mcapa_norm) predict(ystar(0,10000))
margins, dydx(deposits_norm) predict(ystar(0,10000))

tobit grosshed_norm nwi_norm deposits_norm absnarrowgap_norm tfe*, ll(0) 
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(deposits_norm) predict(ystar(0,10000))

tobit grosshed_norm nwi_nosize_norm deposits_norm absnarrowgap_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(deposits_norm) predict(ystar(0,10000))


* Net hedging - BHC FE
xtset id_new datevar
xtreg hed_norm size_norm deposits_norm absnarrowgap_norm tfe*, i(id_new) fe
xtreg hed_norm mcapa_norm deposits_norm absnarrowgap_norm tfe*, i(id_new) fe
xtreg hed_norm nwi_norm deposits_norm absnarrowgap_norm tfe*, i(id_new) fe
xtreg hed_norm nwi_nosize_norm deposits_norm absnarrowgap_norm tfe*, i(id_new) fe

* Gross hedging - BHC FE
xtreg grosshed_norm size_norm deposits_norm absnarrowgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm mcapa_norm deposits_norm absnarrowgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm nwi_norm deposits_norm absnarrowgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm nwi_nosize_norm deposits_norm absnarrowgap_norm tfe*, i(id_new) fe

***** TABLE AIII ***************************************************

clear
set more off
use data_dd, clear

sum net_hedging_mv, d
sum deriv_ir_hedging, d
sum deriv_fx_hedging, d

sum gap, d
sum fx_income, d

sum net_worth_index, d
sum mcap_assets, d
sum size, d 
sum net_worth_index_nosize, d
sum net_income, d 
gen div = dividends_quarterly/assets
sum div, d 
sum logmcap, d 
sum rating, d

***** TABLE BVI ***************************************************

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)

egen p33 = pctile(nwi_norm), p(33)
drop if nwi_norm < p33

reg hed_norm nwi_norm absgap_norm tfe*, cluster(id)
tobit hed_norm nwi_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

reg grosshed_norm nwi_norm absgap_norm tfe*, cluster(id)
tobit grosshed_norm nwi_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

reg fxhed_norm nwi_norm fxexp_norm tfe*, cluster(id)
tobit fxhed_norm nwi_norm fxexp_norm tfe*, ll(0)
margins, dydx(nwi_norm) predict(ystar(0,10000))
margins, dydx(fxexp_norm) predict(ystar(0,10000))

* NWI excl size - Pooled and Tobit 

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)

egen p33 = pctile(nwi_nosize_norm), p(33)
drop if nwi_nosize_norm < p33

reg hed_norm nwi_nosize_norm absgap_norm tfe*, cluster(id)
tobit hed_norm nwi_nosize_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

reg grosshed_norm nwi_nosize_norm absgap_norm tfe*, cluster(id)
tobit grosshed_norm nwi_nosize_norm absgap_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

reg fxhed_norm nwi_nosize_norm fxexp_norm tfe*, cluster(id)
tobit fxhed_norm nwi_nosize_norm fxexp_norm tfe*, ll(0) 
margins, dydx(nwi_nosize_norm) predict(ystar(0,10000))
margins, dydx(fxexp_norm) predict(ystar(0,10000))

* Market cap / Assets - Pooled and Tobit 

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)

egen p33 = pctile(mcapa_norm), p(33)
drop if mcapa_norm < p33

reg hed_norm mcapa_norm absgap_norm tfe*, cluster(id)
tobit hed_norm mcapa_norm absgap_norm tfe*, ll(0) 
margins, dydx(mcapa_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

reg grosshed_norm mcapa_norm absgap_norm tfe*, cluster(id)
tobit grosshed_norm mcapa_norm absgap_norm tfe*, ll(0) 
margins, dydx(mcapa_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

reg fxhed_norm mcapa_norm fxexp_norm tfe*, cluster(id)
tobit fxhed_norm mcapa_norm fxexp_norm tfe*, ll(0) 
margins, dydx(mcapa_norm) predict(ystar(0,10000))
margins, dydx(fxexp_norm) predict(ystar(0,10000))


* Size - Pooled and Tobit 

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)

egen p33 = pctile(size_norm), p(33)
drop if size_norm < p33

reg hed_norm size_norm absgap_norm tfe*, cluster(id)
tobit hed_norm size_norm absgap_norm tfe*, ll(0) 
margins, dydx(size_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

reg grosshed_norm size_norm absgap_norm tfe*, cluster(id)
tobit grosshed_norm size_norm absgap_norm tfe*, ll(0)
margins, dydx(size_norm) predict(ystar(0,10000))
margins, dydx(absgap_norm) predict(ystar(0,10000))

reg fxhed_norm size_norm fxexp_norm tfe*, cluster(id)
tobit fxhed_norm size_norm fxexp_norm tfe*, ll(0)
margins, dydx(size_norm) predict(ystar(0,10000))
margins, dydx(fxexp_norm) predict(ystar(0,10000))

* NWI - Within

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)
bysort id_new: egen p33 = pctile(nwi_norm), p(33)
drop if nwi_norm < p33
xtset id_new datevar
xtreg hed_norm nwi_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm nwi_norm absgap_norm tfe*, i(id_new) fe
xtreg fxhed_norm nwi_norm fxexp_norm tfe*, i(id_new) fe

* NWI (excl size) - Within

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)
bysort id_new: egen p33 = pctile(nwi_nosize_norm), p(33)
drop if nwi_nosize_norm < p33
xtset id_new datevar
xtreg hed_norm nwi_nosize_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm nwi_nosize_norm absgap_norm tfe*, i(id_new) fe
xtreg fxhed_norm nwi_nosize_norm fxexp_norm tfe*, i(id_new) fe

* Market cap / Assets - Within

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)
bysort id_new: egen p33 = pctile(mcapa_norm), p(33)
drop if mcapa_norm < p33
xtset id_new datevar
xtreg hed_norm mcapa_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm mcapa_norm absgap_norm tfe*, i(id_new) fe
xtreg fxhed_norm mcapa_norm fxexp_norm tfe*, i(id_new) fe

* Size - Within

clear
set more off
use data_cs_within, clear
tab dateaxis, gen(tfe)
bysort id_new: egen p33 = pctile(size_norm), p(33)
drop if size_norm < p33
xtset id_new datevar
xtreg hed_norm size_norm absgap_norm tfe*, i(id_new) fe
xtreg grosshed_norm size_norm absgap_norm tfe*, i(id_new) fe
xtreg fxhed_norm size_norm fxexp_norm tfe*, i(id_new) fe

***** TABLE BVII ***************************************************


clear
set more off
use data_regulatory
tab dateaxis, gen(tfe)
replace mcap = log(mcap)
xtset id_new datevar

* Davidson - McKinnon test 


reg hed_norm nwi_norm, cl(id_new)
nnest regcap_norm
reg hed_norm nwi_norm, cl(id_new)
nnest tier1_norm
reg grosshed_norm nwi_norm, cl(id_new)
nnest regcap_norm
reg grosshed_norm nwi_norm, cl(id_new)
nnest tier1_norm
reg fxhed_norm nwi_norm, cl(id_new)
nnest regcap_norm
reg fxhed_norm nwi_norm, cl(id_new)
nnest tier1_norm

reg hed_norm nwi_nosize_norm, cl(id_new)
nnest regcap_norm
reg hed_norm nwi_nosize_norm, cl(id_new)
nnest tier1_norm
reg grosshed_norm nwi_nosize_norm, cl(id_new)
nnest regcap_norm
reg grosshed_norm nwi_nosize_norm, cl(id_new)
nnest tier1_norm
reg fxhed_norm nwi_nosize_norm, cl(id_new)
nnest regcap_norm
reg fxhed_norm nwi_nosize_norm, cl(id_new)
nnest tier1_norm

reg hed_norm mcapa_norm, cl(id_new)
nnest regcap_norm
reg hed_norm mcapa_norm, cl(id_new)
nnest tier1_norm
reg grosshed_norm mcapa_norm, cl(id_new)
nnest regcap_norm
reg grosshed_norm mcapa_norm, cl(id_new)
nnest tier1_norm
reg fxhed_norm mcapa_norm, cl(id_new)
nnest regcap_norm
reg fxhed_norm mcapa_norm, cl(id_new)
nnest tier1_norm

reg hed_norm size_norm, cl(id_new)
nnest regcap_norm
reg hed_norm size_norm, cl(id_new)
nnest tier1_norm
reg grosshed_norm size_norm, cl(id_new)
nnest regcap_norm
reg grosshed_norm size_norm, cl(id_new)
nnest tier1_norm
reg fxhed_norm size_norm, cl(id_new)
nnest regcap_norm
reg fxhed_norm size_norm, cl(id_new)
nnest tier1_norm


 
