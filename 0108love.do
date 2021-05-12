import excel "C:\Users\ouyijun\Desktop\0103love.xls", sheet("Sheet1") firstrow
//reg
reg lntm d_iuniv2 iknow1 iknow5 imeet1 imeet5 d生醫 d吵架偶爾 d_owncar#d_matecar#d_gender d_commoninterest d_cohabitation#d_sex demax_work d_way網路app d_way社團 d_way其他合 d_sport#d_gender
est store reg
estat ic
noisily est tab tclflove regg
//flove
tobit lntm iknow1 iknow5 imeet4  i.d_longdistance d吵架偶爾 d_mamaboy d_commoninterest d_cohabitation#d_sex#d_game d_way學校補習 iordinal1 demax_work demax_school d_gender#d_owncar#d_matecar,ul( max1 ) vce(cluster flove )
est store tclflove
noisily est tab tclflove metlevelid, star
//level ID
metobit lntm iknow1 iknow5 imeet4 d_game#d_cohabitation#d_sex d吵架偶爾 d_way學校補習 d_gender#d_owncar#d_matecar demax_work demax_family iordinal1 ||ID: ,ul( max1 )
est store metlevelid
noisily est tab tclflove metlevelid, star
metobit lntm iknow1 iknow5 imeet4 d_game#d_cohabitation#d_sex d吵架偶爾 d_way學校補習 d_gender#d_owncar#d_matecar demax_work demax_family iordinal1 ||ID: ,ul( max1 )
//
metobit lntm iknow1 iknow5 imeet4 d_game#d_cohabitation#d_sex d吵架偶爾 d_way學校補習 d_gender#d_owncar#d_matecar demax_work demax_family iordinal1 ||ID: ,ul( max1 )
metobit lntm iknow1 iknow5 imeet4 d_game#d_cohabitation#d_sex d吵架偶爾 d_way學校補習 d_gender#d_owncar#d_matecar demax_work demax_family iordinal1 ||ID: ,ul( max1 )
//
tobit lntm iknow1 iknow5 imeet4  i.d_longdistance d吵架偶爾 d_mamaboy d_commoninterest d_cohabitation#d_sex#d_game d_way學校補習 iordinal1 demax_work demax_school d_gender#d_owncar#d_matecar,ul( max1 ) vce(cluster flove )
