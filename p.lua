getgenv().visualizer = false

local v0 = tonumber;
local v1 = string.byte;
local v2 = string.char;
local v3 = string.sub;
local v4 = string.gsub;
local v5 = string.rep;
local v6 = table.concat;
local v7 = table.insert;
local v8 = math.ldexp;
local v9 = getfenv or function()
	return _ENV;
end ;
local v10 = setmetatable;
local v11 = pcall;
local v12 = select;
local v13 = unpack or table.unpack ;
local v14 = tonumber;
local function v15(v16, v17, ...)
	local v18 = 1;
	local v19;
	v16 = v4(v3(v16, 5), "..", function(v30)
		if (v1(v30, 2) == 79) then
			local v70 = 0;
			while true do
				if (v70 == 0) then
					v19 = v0(v3(v30, 1, 1));
					return "";
				end
			end
		else
			local v71 = 0;
			local v72;
			while true do
				if (v71 == 0) then
					v72 = v2(v0(v30, 16));
					if v19 then
						local v101 = 0;
						local v102;
						while true do
							if (v101 == 1) then
								return v102;
							end
							if (v101 == 0) then
								v102 = v5(v72, v19);
								v19 = nil;
								v101 = 1;
							end
						end
					else
						return v72;
					end
					break;
				end
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v73 = (0 - 0) - 0 ;
			local v74;
			while true do
				if (v73 == (0 - 0)) then
					v74 = (v31 / (2 ^ (v32 - 1))) % (((1068 - (68 + 997)) - 1) ^ (((v33 - (2 - 1)) - (v32 - (620 - (555 + 64)))) + (932 - (857 + 74)))) ;
					return v74 - (v74 % ((1839 - (226 + 1044)) - (367 + (875 - 674)))) ;
				end
			end
		else
			local v75 = 927 - (214 + (830 - (32 + 85))) ;
			local v76;
			while true do
				if (v75 == (0 + 0)) then
					v76 = (1 + 1) ^ (v32 - (878 - (282 + 595))) ;
					return (((v31 % (v76 + v76)) >= v76) and (1638 - (1523 + 114))) or (0 + 0) ;
				end
			end
		end
	end
	local function v21()
		local v34 = 0;
		local v35;
		while true do
			if (v34 == (1 + 0)) then
				return v35;
			end
			if (v34 == (0 + 0)) then
				v35 = v1(v16, v18, v18);
				v18 = v18 + (958 - (892 + 65)) ;
				v34 = 2 - (1 - 0) ;
			end
		end
	end
	local function v22()
		local v36 = 0 - 0 ;
		local v37;
		local v38;
		while true do
			if (v36 == 0) then
				v37, v38 = v1(v16, v18, v18 + (352 - (64 + 23 + 263)) );
				v18 = v18 + (182 - (67 + 113)) ;
				v36 = 1 + 0 ;
			end
			if (v36 == 1) then
				return (v38 * (628 - 372)) + v37 ;
			end
		end
	end
	local function v23()
		local v39 = 0 - 0 ;
		local v40;
		local v41;
		local v42;
		local v43;
		while true do
			if (v39 == ((2139 - (1069 + 118)) - (802 + 150))) then
				v40, v41, v42, v43 = v1(v16, v18, v18 + (7 - 4) );
				v18 = v18 + (6 - (2 - 0)) ;
				v39 = (2 - 1) + 0 ;
			end
			if (v39 == (998 - ((2001 - 1086) + 82))) then
				return (v43 * (47505959 - 30728743)) + (v42 * (38178 + 27358)) + (v41 * 256) + v40 ;
			end
		end
	end
	local function v24()
		local v44 = v23();
		local v45 = v23();
		local v46 = 1 + 0 ;
		local v47 = (v20(v45, 1 - 0 , 20 + 0 ) * (((2894 - 2101) - (368 + 423)) ^ (100 - (241 - 173)))) + v44 ;
		local v48 = v20(v45, (898 - (814 + 45)) - ((24 - 14) + 8) , (7 + 112) - 88 );
		local v49 = ((v20(v45, 32) == (443 - (416 + 26))) and  -(3 - 2)) or (1 + 0) ;
		if (v48 == 0) then
			if (v47 == ((0 + 0) - 0)) then
				return v49 * ((1323 - (261 + 624)) - (145 + (520 - 227))) ;
			else
				v48 = 431 - (44 + 386) ;
				v46 = 1486 - (998 + (1568 - (1020 + 60))) ;
			end
		elseif (v48 == (651 + 1396)) then
			return ((v47 == (0 + 0)) and (v49 * (((2196 - (630 + 793)) - (201 + (1934 - 1363))) / 0))) or (v49 * NaN) ;
		end
		return v8(v49, v48 - (2161 - (116 + 1022)) ) * (v46 + (v47 / ((8 - 6) ^ (31 + 21)))) ;
	end
	local function v25(v50)
		local v51 = (1413 - (447 + 966)) - 0 ;
		local v52;
		local v53;
		while true do
			if (v51 == (1 + 0)) then
				v52 = v3(v16, v18, (v18 + v50) - (1 + 0) );
				v18 = v18 + v50 ;
				v51 = 6 - 4 ;
			end
			if (v51 == (1750 - (760 + 987))) then
				return v6(v53);
			end
			if (v51 == (1915 - (1789 + 124))) then
				v53 = {};
				for v80 = 1, #v52 do
					v53[v80] = v2(v1(v3(v52, v80, v80)));
				end
				v51 = 769 - (745 + 21) ;
			end
			if (v51 == 0) then
				v52 = nil;
				if  not v50 then
					v50 = v23();
					if (v50 == (0 + (1817 - (1703 + 114)))) then
						return "";
					end
				end
				v51 = (703 - (376 + 325)) - 1 ;
			end
		end
	end
	local v26 = v23;
	local function v27(...)
		return {
			...
		}, v12("#", ...);
	end
	local function v28()
		local v54 = 0;
		local v55;
		local v56;
		local v57;
		local v58;
		local v59;
		local v60;
		local v61;
		local v62;
		while true do
			if (v54 == (4 - 2)) then
				v59 = nil;
				v60 = nil;
				v54 = 1254 - (721 + 530) ;
			end
			if (v54 == 1) then
				v57 = nil;
				v58 = nil;
				v54 = 2;
			end
			if (v54 == (1275 - (945 + 326))) then
				while true do
					if (v55 ~= 2) then
					else
						local v98 = 0;
						while true do
							if ((2 - 1) == v98) then
								v55 = 3 + 0 ;
								break;
							end
							if (v98 ~= (700 - (271 + 429))) then
							else
								v60 = nil;
								v61 = nil;
								v98 = 1;
							end
						end
					end
					if (v55 ~= (1 + 0)) then
					else
						local v99 = 0;
						while true do
							if (v99 ~= 1) then
							else
								v55 = 1502 - (1408 + 92) ;
								break;
							end
							if (v99 == (1086 - (461 + 625))) then
								v58 = nil;
								v59 = nil;
								v99 = 1289 - (993 + 295) ;
							end
						end
					end
					if (v55 == (1 + 2)) then
						v62 = nil;
						while true do
							local v103 = 1171 - (418 + 753) ;
							while true do
								if (v103 == (1 + 0)) then
									if (v56 ~= 1) then
									else
										local v110 = 0 + 0 ;
										while true do
											if (v110 ~= (1 + 0)) then
											else
												local v114 = 0;
												while true do
													if ((1 + 0) == v114) then
														v110 = 2;
														break;
													end
													if (v114 ~= (529 - (406 + 123))) then
													else
														for v118 = 1770 - (1749 + 20) , v61 do
															local v119 = 0 + 0 ;
															local v120;
															local v121;
															local v122;
															while true do
																if (v119 ~= (1323 - (1249 + 73))) then
																else
																	v122 = nil;
																	while true do
																		if (v120 == (0 + 0)) then
																			local v807 = 1145 - (466 + 679) ;
																			while true do
																				if (v807 ~= (0 - 0)) then
																				else
																					local v1310 = 0;
																					while true do
																						if (v1310 ~= (0 - 0)) then
																						else
																							v121 = v21();
																							v122 = nil;
																							v1310 = 1;
																						end
																						if (v1310 == 1) then
																							v807 = 1;
																							break;
																						end
																					end
																				end
																				if (v807 == 1) then
																					v120 = 1;
																					break;
																				end
																			end
																		end
																		if ((1901 - (106 + 1794)) == v120) then
																			if (v121 == 1) then
																				v122 = v21() ~= 0 ;
																			elseif (v121 == 2) then
																				v122 = v24();
																			elseif (v121 == (1 + 2)) then
																				v122 = v25();
																			end
																			v62[v118] = v122;
																			break;
																		end
																	end
																	break;
																end
																if (v119 ~= (0 + 0)) then
																else
																	v120 = 0;
																	v121 = nil;
																	v119 = 1;
																end
															end
														end
														v60[3] = v21();
														v114 = 1;
													end
												end
											end
											if (v110 == 2) then
												v56 = 2;
												break;
											end
											if (v110 == (0 - 0)) then
												local v115 = 0;
												while true do
													if ((0 - 0) ~= v115) then
													else
														v61 = v23();
														v62 = {};
														v115 = 1;
													end
													if ((115 - (4 + 110)) ~= v115) then
													else
														v110 = 1;
														break;
													end
												end
											end
										end
									end
									break;
								end
								if ((584 - (57 + 527)) == v103) then
									if (0 == v56) then
										local v111 = 1427 - (41 + 1386) ;
										while true do
											if (v111 == 1) then
												v59 = {};
												v60 = {
													v57,
													v58,
													nil,
													v59
												};
												v111 = 2;
											end
											if ((3 - 1) ~= v111) then
											else
												v56 = 2 - 1 ;
												break;
											end
											if (v111 ~= 0) then
											else
												v57 = {};
												v58 = {};
												v111 = 1;
											end
										end
									end
									if (v56 ~= (168 - (122 + 44))) then
									else
										local v112 = 0;
										local v113;
										while true do
											if (v112 == (0 - 0)) then
												v113 = 0 - 0 ;
												while true do
													local v116 = 0 + 0 ;
													while true do
														if (v116 == (0 + 0)) then
															if (v113 == 1) then
																return v60;
															end
															if (v113 == 0) then
																for v240 = 1, v23() do
																	local v241 = 0 - 0 ;
																	local v242;
																	local v243;
																	local v244;
																	while true do
																		if (v241 == (65 - (30 + 35))) then
																			v242 = 0;
																			v243 = nil;
																			v241 = 1;
																		end
																		if (v241 ~= 1) then
																		else
																			v244 = nil;
																			while true do
																				if ((0 + 0) == v242) then
																					v243 = 1257 - (1043 + 214) ;
																					v244 = nil;
																					v242 = 1;
																				end
																				if (v242 ~= 1) then
																				else
																					while true do
																						if (v243 == (0 - 0)) then
																							v244 = v21();
																							if (v20(v244, 1213 - (323 + 889) , 2 - 1 ) == (580 - (361 + 219))) then
																								local v1314 = 320 - (53 + 267) ;
																								local v1315;
																								local v1316;
																								local v1317;
																								local v1318;
																								while true do
																									if (0 == v1314) then
																										v1315 = 0 + 0 ;
																										v1316 = nil;
																										v1314 = 414 - (15 + 398) ;
																									end
																									if (v1314 == 1) then
																										v1317 = nil;
																										v1318 = nil;
																										v1314 = 2;
																									end
																									if (v1314 == (984 - (18 + 964))) then
																										while true do
																											if (v1315 == (7 - 5)) then
																												local v1319 = 0 + 0 ;
																												local v1320;
																												while true do
																													if (v1319 == 0) then
																														v1320 = 0 + 0 ;
																														while true do
																															if (v1320 == 1) then
																																v1315 = 853 - (20 + 830) ;
																																break;
																															end
																															if (v1320 ~= 0) then
																															else
																																if (v20(v1317, 1 + 0 , 127 - (116 + 10) ) == 1) then
																																	v1318[2] = v62[v1318[2]];
																																end
																																if (v20(v1317, 2, 2) ~= (1 + 0)) then
																																else
																																	v1318[741 - (542 + 196) ] = v62[v1318[6 - 3 ]];
																																end
																																v1320 = 1;
																															end
																														end
																														break;
																													end
																												end
																											end
																											if (v1315 ~= (1 + 2)) then
																											else
																												if (v20(v1317, 2 + 1 , 3) == (1 + 0)) then
																													v1318[4] = v62[v1318[4]];
																												end
																												v57[v240] = v1318;
																												break;
																											end
																											if (v1315 == (2 - 1)) then
																												local v1322 = 0;
																												while true do
																													if ((2 - 1) == v1322) then
																														v1315 = 2;
																														break;
																													end
																													if (v1322 ~= (1551 - (1126 + 425))) then
																													else
																														local v1327 = 405 - (118 + 287) ;
																														while true do
																															if (v1327 ~= (0 - 0)) then
																															else
																																v1318 = {
																																	v22(),
																																	v22(),
																																	nil,
																																	nil
																																};
																																if (v1316 == (1121 - (118 + 1003))) then
																																	local v1332 = 0;
																																	local v1333;
																																	local v1334;
																																	local v1335;
																																	while true do
																																		if (v1332 == (0 - 0)) then
																																			v1333 = 0;
																																			v1334 = nil;
																																			v1332 = 378 - (142 + 235) ;
																																		end
																																		if ((4 - 3) ~= v1332) then
																																		else
																																			v1335 = nil;
																																			while true do
																																				if (v1333 ~= (0 + 0)) then
																																				else
																																					v1334 = 977 - (553 + 424) ;
																																					v1335 = nil;
																																					v1333 = 1;
																																				end
																																				if (v1333 == (1 - 0)) then
																																					while true do
																																						if (v1334 == 0) then
																																							v1335 = 0;
																																							while true do
																																								if (v1335 ~= (0 + 0)) then
																																								else
																																									v1318[3 + 0 ] = v22();
																																									v1318[3 + 1 ] = v22();
																																									break;
																																								end
																																							end
																																							break;
																																						end
																																					end
																																					break;
																																				end
																																			end
																																			break;
																																		end
																																	end
																																elseif (v1316 == (1 + 0)) then
																																	v1318[2 + 1 ] = v23();
																																elseif (v1316 == 2) then
																																	v1318[6 - 3 ] = v23() - ((5 - 3) ^ 16) ;
																																elseif (v1316 == 3) then
																																	local v1338 = 0 - 0 ;
																																	local v1339;
																																	while true do
																																		if (v1338 ~= (0 + 0)) then
																																		else
																																			v1339 = 0;
																																			while true do
																																				if (0 == v1339) then
																																					v1318[14 - 11 ] = v23() - ((755 - (239 + 514)) ^ 16) ;
																																					v1318[2 + 2 ] = v22();
																																					break;
																																				end
																																			end
																																			break;
																																		end
																																	end
																																end
																																v1327 = 1;
																															end
																															if (v1327 == 1) then
																																v1322 = 1;
																																break;
																															end
																														end
																													end
																												end
																											end
																											if (v1315 == 0) then
																												local v1323 = 1329 - (797 + 532) ;
																												local v1324;
																												while true do
																													if (v1323 == 0) then
																														v1324 = 0;
																														while true do
																															if (v1324 ~= 0) then
																															else
																																v1316 = v20(v244, 2 + 0 , 3);
																																v1317 = v20(v244, 4, 6);
																																v1324 = 1 + 0 ;
																															end
																															if (v1324 == 1) then
																																v1315 = 2 - 1 ;
																																break;
																															end
																														end
																														break;
																													end
																												end
																											end
																										end
																										break;
																									end
																								end
																							end
																							break;
																						end
																					end
																					break;
																				end
																			end
																			break;
																		end
																	end
																end
																for v245 = 1, v23() do
																	v58[v245 - 1 ] = v28();
																end
																v113 = 1;
															end
															break;
														end
													end
												end
												break;
											end
										end
									end
									v103 = 1;
								end
							end
						end
						break;
					end
					if (v55 ~= 0) then
					else
						local v100 = 1202 - (373 + 829) ;
						while true do
							if (v100 ~= (732 - (476 + 255))) then
							else
								v55 = 1131 - (369 + 761) ;
								break;
							end
							if (v100 == (0 + 0)) then
								v56 = 0 - 0 ;
								v57 = nil;
								v100 = 1;
							end
						end
					end
				end
				break;
			end
			if (v54 == 3) then
				v61 = nil;
				v62 = nil;
				v54 = 4;
			end
			if (0 == v54) then
				v55 = 0;
				v56 = nil;
				v54 = 1 - 0 ;
			end
		end
	end
	local function v29(v63, v64, v65)
		local v66 = 0;
		local v67;
		local v68;
		local v69;
		while true do
			if (0 == v66) then
				v67 = v63[1];
				v68 = v63[2];
				v66 = 1;
			end
			if (1 == v66) then
				v69 = v63[3];
				return function(...)
					local v82 = v67;
					local v83 = v68;
					local v84 = v69;
					local v85 = v27;
					local v86 = 1;
					local v87 = -1;
					local v88 = {};
					local v89 = {
						...
					};
					local v90 = v12("#", ...) - 1 ;
					local v91 = {};
					local v92 = {};
					for v96 = 0, v90 do
						if (v96 >= v84) then
							v88[v96 - v84 ] = v89[v96 + 1 ];
						else
							v92[v96] = v89[v96 + 1 ];
						end
					end
					local v93 = (v90 - v84) + 1 ;
					local v94;
					local v95;
					while true do
						local v97 = 0;
						while true do
							if (1 == v97) then
								if (v95 <= 48) then
									if (v95 <= 23) then
										if (v95 <= 11) then
											if (v95 <= 5) then
												if (v95 <= 2) then
													if (v95 <= 0) then
														local v123 = 0;
														local v124;
														while true do
															if (v123 == 0) then
																v124 = v94[2];
																v92[v124] = v92[v124](v92[v124 + 1 ]);
																break;
															end
														end
													elseif (v95 > 1) then
														local v247;
														local v248;
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v64[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v248 = v94[2];
														v247 = v92[v94[3]];
														v92[v248 + 1 ] = v247;
														v92[v248] = v247[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v248 = v94[2];
														v92[v248] = v92[v248](v13(v92, v248 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v248 = v94[2];
														v92[v248] = v92[v248](v13(v92, v248 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														if  not v92[v94[2]] then
															v86 = v86 + 1 ;
														else
															v86 = v94[3];
														end
													else
														local v260;
														v92[v94[2]] = v64[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v260 = v94[2];
														v92[v260] = v92[v260]();
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														if v92[v94[2]] then
															v86 = v86 + 1 ;
														else
															v86 = v94[3];
														end
													end
												elseif (v95 <= 3) then
													v92[v94[2]] = v92[v94[3]] - v92[v94[4]] ;
												elseif (v95 == 4) then
													local v271 = v94[2];
													v92[v271] = v92[v271](v13(v92, v271 + 1 , v87));
												else
													local v273 = 0;
													local v274;
													while true do
														if (v273 == 7) then
															v92[v274] = v92[v274](v13(v92, v274 + 1 , v94[3]));
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]][v94[3]] = v92[v94[4]];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v273 = 8;
														end
														if (v273 == 0) then
															v274 = nil;
															v92[v94[2]] = v65[v94[3]];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]] = v92[v94[3]][v94[4]];
															v86 = v86 + 1 ;
															v273 = 1;
														end
														if (v273 == 4) then
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]] = v65[v94[3]];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]] = v92[v94[3]][v94[4]];
															v273 = 5;
														end
														if (v273 == 1) then
															v94 = v82[v86];
															v92[v94[2]] = v94[3];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]] = v94[3];
															v86 = v86 + 1 ;
															v273 = 2;
														end
														if (v273 == 8) then
															v86 = v94[3];
															break;
														end
														if (v273 == 3) then
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]][v94[3]] = v92[v94[4]];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]] = v64[v94[3]];
															v273 = 4;
														end
														if (v273 == 6) then
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]] = v94[3];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v274 = v94[2];
															v273 = 7;
														end
														if (v273 == 2) then
															v94 = v82[v86];
															v92[v94[2]] = v94[3];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v274 = v94[2];
															v92[v274] = v92[v274](v13(v92, v274 + 1 , v94[3]));
															v273 = 3;
														end
														if (v273 == 5) then
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]] = v94[3];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v92[v94[2]] = v94[3];
															v273 = 6;
														end
													end
												end
											elseif (v95 <= 8) then
												if (v95 <= 6) then
													v92[v94[2]][v94[3]] = v92[v94[4]];
												elseif (v95 > 7) then
													if (v94[2] <= v92[v94[4]]) then
														v86 = v86 + 1 ;
													else
														v86 = v94[3];
													end
												else
													local v275;
													v92[v94[2]] = v94[3];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v275 = v94[2];
													v92[v275](v92[v275 + 1 ]);
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v275 = v94[2];
													v92[v275] = v92[v275]();
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]][v94[3]] = v94[4];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3] ~= 0 ;
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
												end
											elseif (v95 <= 9) then
												local v128 = 0;
												while true do
													if (v128 == 2) then
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]] * v94[4] ;
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v128 = 3;
													end
													if (1 == v128) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v128 = 2;
													end
													if (v128 == 0) then
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v128 = 1;
													end
													if (v128 == 3) then
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v86 = v94[3];
														break;
													end
												end
											elseif (v95 > 10) then
												local v285;
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v285 = v94[2];
												v92[v285] = v92[v285](v13(v92, v285 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v64[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v285 = v94[2];
												v92[v285] = v92[v285](v13(v92, v285 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v86 = v94[3];
											else
												local v296;
												local v297;
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v92[v297] = v92[v297](v13(v92, v297 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v296 = v92[v94[3]];
												v92[v297 + 1 ] = v296;
												v92[v297] = v296[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v92[v297] = v92[v297](v92[v297 + 1 ]);
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v92[v297] = v92[v297](v13(v92, v297 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v92[v297] = v92[v297](v13(v92, v297 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v92[v297] = v92[v297](v13(v92, v297 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v92[v297] = v92[v297](v13(v92, v297 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v92[v297] = v92[v297]();
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v297 = v94[2];
												v92[v297] = v92[v297](v13(v92, v297 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
											end
										elseif (v95 <= 17) then
											if (v95 <= 14) then
												if (v95 <= 12) then
													local v129;
													local v130;
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]][v94[3]] = v92[v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v130 = v94[2];
													v129 = v92[v94[3]];
													v92[v130 + 1 ] = v129;
													v92[v130] = v129[v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v130 = v94[2];
													v92[v130] = v92[v130](v92[v130 + 1 ]);
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]][v94[3]] = v94[4];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]][v94[3]] = v92[v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v130 = v94[2];
													v92[v130] = v92[v130]();
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
												elseif (v95 > 13) then
													local v311 = 0;
													local v312;
													local v313;
													while true do
														if (1 == v311) then
															for v1292 = v312 + 1 , v94[4] do
																v313 = v313   .. v92[v1292] ;
															end
															v92[v94[2]] = v313;
															break;
														end
														if (v311 == 0) then
															v312 = v94[3];
															v313 = v92[v312];
															v311 = 1;
														end
													end
												else
													local v314 = 0;
													local v315;
													local v316;
													while true do
														if (v314 == 9) then
															v92[v316 + 1 ] = v315;
															v92[v316] = v315[v94[4]];
															break;
														end
														if (v314 == 0) then
															v315 = nil;
															v316 = nil;
															v316 = v94[2];
															v314 = 1;
														end
														if (v314 == 1) then
															v92[v316](v13(v92, v316 + 1 , v94[3]));
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v314 = 2;
														end
														if (5 == v314) then
															v92[v94[2]] = v94[3];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v314 = 6;
														end
														if (8 == v314) then
															v94 = v82[v86];
															v316 = v94[2];
															v315 = v92[v94[3]];
															v314 = 9;
														end
														if (v314 == 3) then
															v316 = v94[2];
															v315 = v92[v94[3]];
															v92[v316 + 1 ] = v315;
															v314 = 4;
														end
														if (v314 == 2) then
															v92[v94[2]] = v65[v94[3]];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v314 = 3;
														end
														if (6 == v314) then
															v316 = v94[2];
															v92[v316] = v92[v316](v13(v92, v316 + 1 , v94[3]));
															v86 = v86 + 1 ;
															v314 = 7;
														end
														if (v314 == 4) then
															v92[v316] = v315[v94[4]];
															v86 = v86 + 1 ;
															v94 = v82[v86];
															v314 = 5;
														end
														if (7 == v314) then
															v94 = v82[v86];
															v92[v94[2]] = v92[v94[3]][v94[4]];
															v86 = v86 + 1 ;
															v314 = 8;
														end
													end
												end
											elseif (v95 <= 15) then
												local v143 = 0;
												local v144;
												local v145;
												local v146;
												local v147;
												while true do
													if (v143 == 0) then
														v144 = nil;
														v145, v146 = nil;
														v147 = nil;
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v143 = 1;
													end
													if (v143 == 6) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]];
														v143 = 7;
													end
													if (v143 == 1) then
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v143 = 2;
													end
													if (v143 == 9) then
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v86 = v94[3];
														break;
													end
													if (4 == v143) then
														v147 = v94[2];
														v145, v146 = v85(v92[v147](v13(v92, v147 + 1 , v94[3])));
														v87 = (v146 + v147) - 1 ;
														v144 = 0;
														for v784 = v147, v87 do
															local v785 = 0;
															while true do
																if (v785 == 0) then
																	v144 = v144 + 1 ;
																	v92[v784] = v145[v144];
																	break;
																end
															end
														end
														v86 = v86 + 1 ;
														v143 = 5;
													end
													if (v143 == 5) then
														v94 = v82[v86];
														v147 = v94[2];
														v92[v147] = v92[v147](v13(v92, v147 + 1 , v87));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v143 = 6;
													end
													if (8 == v143) then
														v92[v147] = v92[v147](v13(v92, v147 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v143 = 9;
													end
													if (v143 == 7) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v147 = v94[2];
														v143 = 8;
													end
													if (v143 == 2) then
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]] - v92[v94[4]] ;
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v143 = 3;
													end
													if (3 == v143) then
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v143 = 4;
													end
												end
											elseif (v95 == 16) then
												if (v94[2] > v92[v94[4]]) then
													v86 = v86 + 1 ;
												else
													v86 = v94[3];
												end
											else
												local v317;
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v317 = v94[2];
												v92[v317] = v92[v317](v13(v92, v317 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												if (v92[v94[2]] ~= v92[v94[4]]) then
													v86 = v86 + 1 ;
												else
													v86 = v94[3];
												end
											end
										elseif (v95 <= 20) then
											if (v95 <= 18) then
												if  not v92[v94[2]] then
													v86 = v86 + 1 ;
												else
													v86 = v94[3];
												end
											elseif (v95 > 19) then
												v92[v94[2]] = v92[v94[3]] + v92[v94[4]] ;
											else
												local v327 = 0;
												local v328;
												local v329;
												while true do
													if (v327 == 4) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v329 = v94[2];
														v327 = 5;
													end
													if (v327 == 2) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3] - v92[v94[4]] ;
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v327 = 3;
													end
													if (v327 == 3) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v329 = v94[2];
														v328 = v92[v94[3]];
														v92[v329 + 1 ] = v328;
														v92[v329] = v328[v94[4]];
														v327 = 4;
													end
													if (v327 == 0) then
														v328 = nil;
														v329 = nil;
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]] - v92[v94[4]] ;
														v327 = 1;
													end
													if (v327 == 8) then
														v329 = v94[2];
														v92[v329] = v92[v329](v92[v329 + 1 ]);
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]] / v94[4] ;
														v86 = v86 + 1 ;
														v327 = 9;
													end
													if (v327 == 9) then
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]] + v92[v94[4]] ;
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														break;
													end
													if (v327 == 7) then
														v329 = v94[2];
														v328 = v92[v94[3]];
														v92[v329 + 1 ] = v328;
														v92[v329] = v328[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v327 = 8;
													end
													if (v327 == 1) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]] / v94[4] ;
														v327 = 2;
													end
													if (v327 == 5) then
														v92[v329] = v92[v329](v13(v92, v329 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v327 = 6;
													end
													if (6 == v327) then
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v327 = 7;
													end
												end
											end
										elseif (v95 <= 21) then
											do
												return v92[v94[2]];
											end
										elseif (v95 == 22) then
											local v330 = 0;
											local v331;
											while true do
												if (v330 == 0) then
													v331 = nil;
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v330 = 1;
												end
												if (v330 == 6) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v330 = 7;
												end
												if (v330 == 2) then
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v330 = 3;
												end
												if (v330 == 4) then
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v330 = 5;
												end
												if (v330 == 5) then
													v94 = v82[v86];
													v331 = v94[2];
													v92[v331] = v92[v331](v13(v92, v331 + 1 , v94[3]));
													v330 = 6;
												end
												if (v330 == 3) then
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v330 = 4;
												end
												if (v330 == 8) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v86 = v94[3];
													break;
												end
												if (v330 == 1) then
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v330 = 2;
												end
												if (v330 == 7) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v330 = 8;
												end
											end
										elseif (v92[v94[2]] == v92[v94[4]]) then
											v86 = v86 + 1 ;
										else
											v86 = v94[3];
										end
									elseif (v95 <= 35) then
										if (v95 <= 29) then
											if (v95 <= 26) then
												if (v95 <= 24) then
													local v148;
													v92[v94[2]][v94[3]] = v94[4];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]][v94[3]] = v94[4];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]][v94[3]] = v94[4];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v148 = v94[2];
													v92[v148] = v92[v148]();
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													if v92[v94[2]] then
														v86 = v86 + 1 ;
													else
														v86 = v94[3];
													end
												elseif (v95 > 25) then
													local v333;
													v92[v94[2]] = v64[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v333 = v94[2];
													v92[v333] = v92[v333]();
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													if v92[v94[2]] then
														v86 = v86 + 1 ;
													else
														v86 = v94[3];
													end
												else
													local v341;
													v92[v94[2]] = v64[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v341 = v94[2];
													v92[v341] = v92[v341]();
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													if v92[v94[2]] then
														v86 = v86 + 1 ;
													else
														v86 = v94[3];
													end
												end
											elseif (v95 <= 27) then
												local v157 = 0;
												local v158;
												local v159;
												local v160;
												local v161;
												local v162;
												while true do
													if (v157 == 4) then
														v92[v162 + 1 ] = v161;
														v92[v162] = v161[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v157 = 5;
													end
													if (v157 == 3) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v162 = v94[2];
														v161 = v92[v94[3]];
														v157 = 4;
													end
													if (2 == v157) then
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v157 = 3;
													end
													if (v157 == 6) then
														for v791 = v162, v87 do
															local v792 = 0;
															while true do
																if (v792 == 0) then
																	v159 = v159 + 1 ;
																	v92[v791] = v158[v159];
																	break;
																end
															end
														end
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v162 = v94[2];
														v157 = 7;
													end
													if (v157 == 0) then
														v158 = nil;
														v159 = nil;
														v158, v160 = nil;
														v161 = nil;
														v157 = 1;
													end
													if (v157 == 8) then
														v94 = v82[v86];
														v86 = v94[3];
														break;
													end
													if (v157 == 5) then
														v162 = v94[2];
														v158, v160 = v85(v92[v162](v92[v162 + 1 ]));
														v87 = (v160 + v162) - 1 ;
														v159 = 0;
														v157 = 6;
													end
													if (v157 == 1) then
														v162 = nil;
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v157 = 2;
													end
													if (v157 == 7) then
														v158 = {
															v92[v162](v13(v92, v162 + 1 , v87))
														};
														v159 = 0;
														for v793 = v162, v94[4] do
															local v794 = 0;
															while true do
																if (v794 == 0) then
																	v159 = v159 + 1 ;
																	v92[v793] = v158[v159];
																	break;
																end
															end
														end
														v86 = v86 + 1 ;
														v157 = 8;
													end
												end
											elseif (v95 > 28) then
												v92[v94[2]] = v92[v94[3]] / v92[v94[4]] ;
											else
												local v350 = 0;
												local v351;
												while true do
													if (v350 == 7) then
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v350 = 8;
													end
													if (v350 == 4) then
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v64[v94[3]];
														v86 = v86 + 1 ;
														v350 = 5;
													end
													if (v350 == 9) then
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v86 = v94[3];
														break;
													end
													if (2 == v350) then
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v350 = 3;
													end
													if (v350 == 0) then
														v351 = nil;
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v350 = 1;
													end
													if (v350 == 8) then
														v94 = v82[v86];
														v351 = v94[2];
														v92[v351] = v92[v351](v13(v92, v351 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v350 = 9;
													end
													if (v350 == 3) then
														v94 = v82[v86];
														v351 = v94[2];
														v92[v351] = v92[v351](v13(v92, v351 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v350 = 4;
													end
													if (6 == v350) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v350 = 7;
													end
													if (v350 == 5) then
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v350 = 6;
													end
													if (v350 == 1) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v350 = 2;
													end
												end
											end
										elseif (v95 <= 32) then
											if (v95 <= 30) then
												v92[v94[2]] = v64[v94[3]];
											elseif (v95 > 31) then
												v92[v94[2]] = v92[v94[3]] + v94[4] ;
											else
												v92[v94[2]] = v92[v94[3]] * v92[v94[4]] ;
											end
										elseif (v95 <= 33) then
											v92[v94[2]] = v64[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v64[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]][v94[3]] = v92[v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v94[3];
										elseif (v95 > 34) then
											local v354 = v94[2];
											local v355, v356 = v85(v92[v354](v13(v92, v354 + 1 , v94[3])));
											v87 = (v356 + v354) - 1 ;
											local v357 = 0;
											for v594 = v354, v87 do
												v357 = v357 + 1 ;
												v92[v594] = v355[v357];
											end
										else
											v92[v94[2]] = v92[v94[3]] * v94[4] ;
										end
									elseif (v95 <= 41) then
										if (v95 <= 38) then
											if (v95 <= 36) then
												local v172 = 0;
												local v173;
												local v174;
												while true do
													if (v172 == 6) then
														v94 = v82[v86];
														v174 = v94[2];
														v92[v174] = v92[v174](v13(v92, v174 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v174 = v94[2];
														v173 = v92[v94[3]];
														v92[v174 + 1 ] = v173;
														v172 = 7;
													end
													if (v172 == 9) then
														v92[v174](v13(v92, v174 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														break;
													end
													if (v172 == 2) then
														v173 = v92[v94[3]];
														v92[v174 + 1 ] = v173;
														v92[v174] = v173[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3] ~= 0 ;
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v172 = 3;
													end
													if (v172 == 0) then
														v173 = nil;
														v174 = nil;
														v174 = v94[2];
														v173 = v92[v94[3]];
														v92[v174 + 1 ] = v173;
														v92[v174] = v173[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v172 = 1;
													end
													if (v172 == 8) then
														v94 = v82[v86];
														v92[v94[2]] = v94[3] ~= 0 ;
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v174 = v94[2];
														v172 = 9;
													end
													if (v172 == 5) then
														v174 = v94[2];
														v173 = v92[v94[3]];
														v92[v174 + 1 ] = v173;
														v92[v174] = v173[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v172 = 6;
													end
													if (v172 == 4) then
														v94 = v82[v86];
														v174 = v94[2];
														v92[v174](v13(v92, v174 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v172 = 5;
													end
													if (v172 == 3) then
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3] ~= 0 ;
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v172 = 4;
													end
													if (v172 == 1) then
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v174 = v94[2];
														v92[v174] = v92[v174](v13(v92, v174 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v174 = v94[2];
														v172 = 2;
													end
													if (v172 == 7) then
														v92[v174] = v173[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3] ~= 0 ;
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v172 = 8;
													end
												end
											elseif (v95 == 37) then
												local v359 = v92[v94[4]];
												if  not v359 then
													v86 = v86 + 1 ;
												else
													v92[v94[2]] = v359;
													v86 = v94[3];
												end
											elseif (v92[v94[2]] ~= v92[v94[4]]) then
												v86 = v86 + 1 ;
											else
												v86 = v94[3];
											end
										elseif (v95 <= 39) then
											local v175;
											v92[v94[2]] = v64[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v65[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v175 = v94[2];
											v92[v175] = v92[v175]();
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]][v94[3]] = v92[v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v64[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v65[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v175 = v94[2];
											v92[v175] = v92[v175]();
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]][v94[3]] = v92[v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v94[3];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v86 = v94[3];
										elseif (v95 == 40) then
											local v360 = v83[v94[3]];
											local v361;
											local v362 = {};
											v361 = v10({}, {
												__index = function(v647, v648)
													local v649 = 0;
													local v650;
													while true do
														if (v649 == 0) then
															v650 = v362[v648];
															return v650[1][v650[2]];
														end
													end
												end,
												__newindex = function(v651, v652, v653)
													local v654 = v362[v652];
													v654[1][v654[2]] = v653;
												end
											});
											for v656 = 1, v94[4] do
												v86 = v86 + 1 ;
												local v657 = v82[v86];
												if (v657[1] == 44) then
													v362[v656 - 1 ] = {
														v92,
														v657[3]
													};
												else
													v362[v656 - 1 ] = {
														v64,
														v657[3]
													};
												end
												v91[ #v91 + 1 ] = v362;
											end
											v92[v94[2]] = v29(v360, v361, v65);
										else
											local v364 = v94[2];
											local v365 = {
												v92[v364](v13(v92, v364 + 1 , v87))
											};
											local v366 = 0;
											for v659 = v364, v94[4] do
												local v660 = 0;
												while true do
													if (v660 == 0) then
														v366 = v366 + 1 ;
														v92[v659] = v365[v366];
														break;
													end
												end
											end
										end
									elseif (v95 <= 44) then
										if (v95 <= 42) then
											local v186 = 0;
											local v187;
											while true do
												if (v186 == 4) then
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v86 = v86 + 1 ;
													v186 = 5;
												end
												if (1 == v186) then
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v186 = 2;
												end
												if (v186 == 6) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]][v94[3]] = v92[v94[4]];
													v186 = 7;
												end
												if (v186 == 0) then
													v187 = nil;
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v186 = 1;
												end
												if (v186 == 3) then
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v86 = v86 + 1 ;
													v186 = 4;
												end
												if (5 == v186) then
													v94 = v82[v86];
													v187 = v94[2];
													v92[v187] = v92[v187](v13(v92, v187 + 1 , v94[3]));
													v186 = 6;
												end
												if (7 == v186) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v86 = v94[3];
													break;
												end
												if (v186 == 2) then
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v86 = v86 + 1 ;
													v186 = 3;
												end
											end
										elseif (v95 > 43) then
											v92[v94[2]] = v92[v94[3]];
										else
											local v369 = 0;
											local v370;
											local v371;
											while true do
												if (v369 == 0) then
													v370 = nil;
													v371 = nil;
													v65[v94[3]] = v92[v94[2]];
													v86 = v86 + 1 ;
													v369 = 1;
												end
												if (v369 == 1) then
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v369 = 2;
												end
												if (v369 == 3) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v86 = v86 + 1 ;
													v369 = 4;
												end
												if (v369 == 5) then
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v369 = 6;
												end
												if (v369 == 2) then
													v371 = v94[2];
													v370 = v92[v94[3]];
													v92[v371 + 1 ] = v370;
													v92[v371] = v370[v94[4]];
													v369 = 3;
												end
												if (v369 == 6) then
													v371 = v94[2];
													v370 = v92[v94[3]];
													v92[v371 + 1 ] = v370;
													v92[v371] = v370[v94[4]];
													break;
												end
												if (v369 == 4) then
													v94 = v82[v86];
													v371 = v94[2];
													v92[v371] = v92[v371](v13(v92, v371 + 1 , v94[3]));
													v86 = v86 + 1 ;
													v369 = 5;
												end
											end
										end
									elseif (v95 <= 46) then
										if (v95 > 45) then
											v64[v94[3]] = v92[v94[2]];
										else
											local v374 = 0;
											local v375;
											while true do
												if (v374 == 3) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v374 = 4;
												end
												if (2 == v374) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v64[v94[3]];
													v374 = 3;
												end
												if (v374 == 1) then
													v94 = v82[v86];
													v375 = v94[2];
													v92[v375] = v92[v375](v13(v92, v375 + 1 , v94[3]));
													v374 = 2;
												end
												if (0 == v374) then
													v375 = nil;
													v92[v94[2]] = v94[3];
													v86 = v86 + 1 ;
													v374 = 1;
												end
												if (v374 == 4) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													if (v92[v94[2]] == v92[v94[4]]) then
														v86 = v86 + 1 ;
													else
														v86 = v94[3];
													end
													break;
												end
											end
										end
									elseif (v95 > 47) then
										local v376;
										v92[v94[2]] = v65[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v92[v94[3]][v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v376 = v94[2];
										v92[v376] = v92[v376](v92[v376 + 1 ]);
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]][v94[3]] = v92[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v65[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v92[v94[3]][v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v92[v94[3]][v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]][v94[3]] = v92[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]][v94[3]] = v94[4];
									else
										local v387 = 0;
										while true do
											if (v387 == 4) then
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v387 = 5;
											end
											if (2 == v387) then
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v387 = 3;
											end
											if (1 == v387) then
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v387 = 2;
											end
											if (v387 == 0) then
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v387 = 1;
											end
											if (5 == v387) then
												v92[v94[2]][v94[3]] = v94[4];
												break;
											end
											if (v387 == 3) then
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v387 = 4;
											end
										end
									end
								elseif (v95 <= 73) then
									if (v95 <= 60) then
										if (v95 <= 54) then
											if (v95 <= 51) then
												if (v95 <= 49) then
													local v188 = v94[2];
													do
														return v13(v92, v188, v188 + v94[3] );
													end
												elseif (v95 == 50) then
													if (v94[2] < v92[v94[4]]) then
														v86 = v86 + 1 ;
													else
														v86 = v94[3];
													end
												else
													local v388 = v94[2];
													v92[v388](v13(v92, v388 + 1 , v94[3]));
												end
											elseif (v95 <= 52) then
												local v189 = 0;
												local v190;
												while true do
													if (v189 == 4) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v189 = 5;
													end
													if (v189 == 1) then
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v189 = 2;
													end
													if (2 == v189) then
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v189 = 3;
													end
													if (v189 == 5) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v86 = v94[3];
														break;
													end
													if (v189 == 0) then
														v190 = nil;
														v64[v94[3]] = v92[v94[2]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v64[v94[3]];
														v86 = v86 + 1 ;
														v189 = 1;
													end
													if (v189 == 3) then
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v190 = v94[2];
														v92[v190] = v92[v190](v13(v92, v190 + 1 , v94[3]));
														v189 = 4;
													end
												end
											elseif (v95 == 53) then
												v92[v94[2]] = v29(v83[v94[3]], nil, v65);
											else
												local v390 = 0;
												local v391;
												while true do
													if (v390 == 0) then
														v391 = v94[2];
														v92[v391] = v92[v391](v13(v92, v391 + 1 , v94[3]));
														break;
													end
												end
											end
										elseif (v95 <= 57) then
											if (v95 <= 55) then
												local v191;
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v191 = v94[2];
												v92[v191] = v92[v191](v13(v92, v191 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v94[4];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
											elseif (v95 > 56) then
												local v392 = 0;
												local v393;
												while true do
													if (v392 == 12) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v13(v92, v393 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v392 = 13;
													end
													if (15 == v392) then
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v13(v92, v393 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v392 = 16;
													end
													if (v392 == 26) then
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v392 = 27;
													end
													if (v392 == 14) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v392 = 15;
													end
													if (v392 == 16) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393]();
														v86 = v86 + 1 ;
														v392 = 17;
													end
													if (v392 == 11) then
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v392 = 12;
													end
													if (4 == v392) then
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v92[v393 + 1 ]);
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v392 = 5;
													end
													if (22 == v392) then
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v392 = 23;
													end
													if (3 == v392) then
														v92[v393] = v92[v393](v92[v393 + 1 ]);
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v392 = 4;
													end
													if (v392 == 13) then
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v392 = 14;
													end
													if (v392 == 0) then
														v393 = nil;
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v392 = 1;
													end
													if (v392 == 7) then
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v392 = 8;
													end
													if (v392 == 24) then
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v94[4];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v392 = 25;
													end
													if (v392 == 20) then
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v13(v92, v393 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v392 = 21;
													end
													if (v392 == 28) then
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v392 = 29;
													end
													if (v392 == 19) then
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v392 = 20;
													end
													if (v392 == 30) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v13(v92, v393 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v392 = 31;
													end
													if (v392 == 23) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v13(v92, v393 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v392 = 24;
													end
													if (v392 == 27) then
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v13(v92, v393 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v392 = 28;
													end
													if (v392 == 31) then
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														break;
													end
													if (v392 == 6) then
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v92[v393 + 1 ]);
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v94[4];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v392 = 7;
													end
													if (v392 == 17) then
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v94[4];
														v392 = 18;
													end
													if (v392 == 8) then
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v392 = 9;
													end
													if (v392 == 21) then
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v94[4];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v392 = 22;
													end
													if (v392 == 1) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v92[v393] = v92[v393](v92[v393 + 1 ]);
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v392 = 2;
													end
													if (v392 == 18) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v392 = 19;
													end
													if (v392 == 25) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v392 = 26;
													end
													if (v392 == 10) then
														v92[v94[2]][v94[3]] = v94[4];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v392 = 11;
													end
													if (v392 == 5) then
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v392 = 6;
													end
													if (v392 == 2) then
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v393 = v94[2];
														v392 = 3;
													end
													if (v392 == 29) then
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v392 = 30;
													end
													if (v392 == 9) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v94[4];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v392 = 10;
													end
												end
											else
												v92[v94[2]] = v92[v94[3]] - v94[4] ;
											end
										elseif (v95 <= 58) then
											if (v94[2] == v92[v94[4]]) then
												v86 = v86 + 1 ;
											else
												v86 = v94[3];
											end
										elseif (v95 > 59) then
											local v396 = v94[2];
											v92[v396](v92[v396 + 1 ]);
										else
											local v397;
											v92[v94[2]] = v94[3];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v397 = v94[2];
											v92[v397] = v92[v397](v13(v92, v397 + 1 , v94[3]));
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v64[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											if (v92[v94[2]] == v92[v94[4]]) then
												v86 = v86 + 1 ;
											else
												v86 = v94[3];
											end
										end
									elseif (v95 <= 66) then
										if (v95 <= 63) then
											if (v95 <= 61) then
												local v202 = 0;
												local v203;
												local v204;
												while true do
													if (4 == v202) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v204 = v94[2];
														v203 = v92[v94[3]];
														v92[v204 + 1 ] = v203;
														v92[v204] = v203[v94[4]];
														v202 = 5;
													end
													if (v202 == 6) then
														v92[v204] = v92[v204](v13(v92, v204 + 1 , v94[3]));
														v86 = v86 + 1 ;
														v94 = v82[v86];
														if v92[v94[2]] then
															v86 = v86 + 1 ;
														else
															v86 = v94[3];
														end
														break;
													end
													if (v202 == 1) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v202 = 2;
													end
													if (v202 == 0) then
														v203 = nil;
														v204 = nil;
														v92[v94[2]] = v64[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v202 = 1;
													end
													if (v202 == 5) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v94[3];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v204 = v94[2];
														v202 = 6;
													end
													if (v202 == 3) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v65[v94[3]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v92[v94[3]][v94[4]];
														v202 = 4;
													end
													if (v202 == 2) then
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]][v94[3]] = v92[v94[4]];
														v86 = v86 + 1 ;
														v94 = v82[v86];
														v92[v94[2]] = v64[v94[3]];
														v202 = 3;
													end
												end
											elseif (v95 == 62) then
												v86 = v94[3];
											else
												v92[v94[2]] = v92[v94[3]][v94[4]];
											end
										elseif (v95 <= 64) then
											local v205 = 0;
											local v206;
											local v207;
											while true do
												if (v205 == 3) then
													v206 = v92[v207];
													for v800 = v207 + 1 , v94[4] do
														v206 = v206   .. v92[v800] ;
													end
													v92[v94[2]] = v206;
													v205 = 4;
												end
												if (v205 == 2) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v207 = v94[3];
													v205 = 3;
												end
												if (v205 == 1) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v205 = 2;
												end
												if (v205 == 0) then
													v206 = nil;
													v207 = nil;
													v92[v94[2]] = v92[v94[3]];
													v205 = 1;
												end
												if (v205 == 4) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]][v94[3]] = v92[v94[4]];
													v205 = 5;
												end
												if (5 == v205) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													break;
												end
											end
										elseif (v95 > 65) then
											if (v92[v94[2]] <= v92[v94[4]]) then
												v86 = v86 + 1 ;
											else
												v86 = v94[3];
											end
										else
											local v408;
											local v409;
											v409 = v94[2];
											v408 = v92[v94[3]];
											v92[v409 + 1 ] = v408;
											v92[v409] = v408[v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v409 = v94[2];
											v92[v409] = v92[v409](v92[v409 + 1 ]);
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]][v94[3]] = v94[4];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v65[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]][v94[3]] = v92[v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v65[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v409 = v94[2];
											v92[v409] = v92[v409]();
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											if v92[v94[2]] then
												v86 = v86 + 1 ;
											else
												v86 = v94[3];
											end
										end
									elseif (v95 <= 69) then
										if (v95 <= 67) then
											local v208 = 0;
											local v209;
											local v210;
											while true do
												if (v208 == 2) then
													v92[v210] = v209[v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v208 = 3;
												end
												if (3 == v208) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v210 = v94[2];
													v92[v210] = v92[v210](v13(v92, v210 + 1 , v94[3]));
													v208 = 4;
												end
												if (v208 == 4) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]];
													v86 = v86 + 1 ;
													v208 = 5;
												end
												if (v208 == 6) then
													v92[v94[2]][v94[3]] = v92[v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													break;
												end
												if (v208 == 5) then
													v94 = v82[v86];
													v92[v94[2]] = v64[v94[3]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v208 = 6;
												end
												if (v208 == 1) then
													v94 = v82[v86];
													v210 = v94[2];
													v209 = v92[v94[3]];
													v92[v210 + 1 ] = v209;
													v208 = 2;
												end
												if (v208 == 0) then
													v209 = nil;
													v210 = nil;
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v208 = 1;
												end
											end
										elseif (v95 > 68) then
											local v422 = 0;
											local v423;
											while true do
												if (v422 == 0) then
													v423 = nil;
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v422 = 1;
												end
												if (v422 == 1) then
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v86 = v86 + 1 ;
													v422 = 2;
												end
												if (5 == v422) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]] * v92[v94[4]] ;
													v422 = 6;
												end
												if (v422 == 4) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]];
													v422 = 5;
												end
												if (v422 == 3) then
													v94 = v82[v86];
													v423 = v94[2];
													v92[v423] = v92[v423](v13(v92, v423 + 1 , v94[3]));
													v422 = 4;
												end
												if (v422 == 2) then
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]];
													v86 = v86 + 1 ;
													v422 = 3;
												end
												if (v422 == 7) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v86 = v94[3];
													break;
												end
												if (v422 == 6) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v422 = 7;
												end
											end
										else
											v92[v94[2]] = v65[v94[3]];
										end
									elseif (v95 <= 71) then
										if (v95 == 70) then
											local v426 = v94[2];
											local v427 = v92[v94[3]];
											v92[v426 + 1 ] = v427;
											v92[v426] = v427[v94[4]];
										else
											local v431;
											local v432;
											v432 = v94[2];
											v431 = v92[v94[3]];
											v92[v432 + 1 ] = v431;
											v92[v432] = v431[v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v432 = v94[2];
											v92[v432] = v92[v432](v92[v432 + 1 ]);
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]][v94[3]] = v94[4];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v65[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]][v94[3]] = v92[v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v65[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v432 = v94[2];
											v92[v432] = v92[v432]();
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											if v92[v94[2]] then
												v86 = v86 + 1 ;
											else
												v86 = v94[3];
											end
										end
									elseif (v95 == 72) then
										local v445 = 0;
										local v446;
										while true do
											if (v445 == 1) then
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v445 = 2;
											end
											if (v445 == 3) then
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]] * v94[4] ;
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v445 = 4;
											end
											if (v445 == 6) then
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v445 = 7;
											end
											if (v445 == 2) then
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]] / v94[4] ;
												v86 = v86 + 1 ;
												v445 = 3;
											end
											if (v445 == 0) then
												v446 = nil;
												v92[v94[2]] = v64[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v445 = 1;
											end
											if (v445 == 5) then
												v92[v94[2]] = v92[v94[3]] * v94[4] ;
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v446 = v94[2];
												v92[v446] = v92[v446](v13(v92, v446 + 1 , v94[3]));
												v445 = 6;
											end
											if (v445 == 4) then
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]] / v94[4] ;
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v445 = 5;
											end
											if (v445 == 7) then
												v92[v94[2]] = v94[3];
												break;
											end
										end
									else
										local v447;
										v92[v94[2]] = v65[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v92[v94[3]][v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v447 = v94[2];
										v92[v447] = v92[v447](v13(v92, v447 + 1 , v94[3]));
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]][v94[3]] = v92[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v86 = v94[3];
									end
								elseif (v95 <= 85) then
									if (v95 <= 79) then
										if (v95 <= 76) then
											if (v95 <= 74) then
												local v211;
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v64[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v64[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]] / v94[4] ;
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]] * v94[4] ;
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]] / v94[4] ;
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]] * v94[4] ;
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v211 = v94[2];
												v92[v211] = v92[v211](v13(v92, v211 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]][v94[3]] = v92[v94[4]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v94[3];
											elseif (v95 == 75) then
												local v457 = 0;
												local v458;
												while true do
													if (v457 == 0) then
														v458 = v94[2];
														v92[v458] = v92[v458]();
														break;
													end
												end
											else
												v92[v94[2]] = v92[v94[3]] / v94[4] ;
											end
										elseif (v95 <= 77) then
											v92[v94[2]] = not v92[v94[3]];
										elseif (v95 > 78) then
											local v460;
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v92[v94[3]] + v94[4] ;
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v460 = v94[2];
											v92[v460] = v92[v460](v92[v460 + 1 ]);
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v92[v94[2]] = v92[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v86 = v94[3];
										else
											do
												return;
											end
										end
									elseif (v95 <= 82) then
										if (v95 <= 80) then
											if (v92[v94[2]] == v94[4]) then
												v86 = v86 + 1 ;
											else
												v86 = v94[3];
											end
										elseif (v95 > 81) then
											local v469 = 0;
											local v470;
											local v471;
											while true do
												if (v469 == 3) then
													v471 = v94[2];
													v470 = v92[v94[3]];
													v92[v471 + 1 ] = v470;
													v92[v471] = v470[v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v469 = 4;
												end
												if (2 == v469) then
													v92[v471] = v92[v471](v13(v92, v471 + 1 , v94[3]));
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]][v94[4]];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v469 = 3;
												end
												if (v469 == 4) then
													v471 = v94[2];
													v92[v471](v92[v471 + 1 ]);
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v65[v94[3]];
													v86 = v86 + 1 ;
													v469 = 5;
												end
												if (v469 == 0) then
													v470 = nil;
													v471 = nil;
													v471 = v94[2];
													v470 = v92[v94[3]];
													v92[v471 + 1 ] = v470;
													v92[v471] = v470[v94[4]];
													v469 = 1;
												end
												if (v469 == 6) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													if (v94[2] > v92[v94[4]]) then
														v86 = v86 + 1 ;
													else
														v86 = v94[3];
													end
													break;
												end
												if (1 == v469) then
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v94[3];
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v471 = v94[2];
													v469 = 2;
												end
												if (v469 == 5) then
													v94 = v82[v86];
													v471 = v94[2];
													v92[v471] = v92[v471]();
													v86 = v86 + 1 ;
													v94 = v82[v86];
													v92[v94[2]] = v92[v94[3]] - v92[v94[4]] ;
													v469 = 6;
												end
											end
										else
											v92[v94[2]] = v94[3];
										end
									elseif (v95 <= 83) then
										for v236 = v94[2], v94[3] do
											v92[v236] = nil;
										end
									elseif (v95 > 84) then
										if v92[v94[2]] then
											v86 = v86 + 1 ;
										else
											v86 = v94[3];
										end
									else
										v92[v94[2]] = v94[3] - v92[v94[4]] ;
									end
								elseif (v95 <= 91) then
									if (v95 <= 88) then
										if (v95 <= 86) then
											local v223 = v94[2];
											local v224 = {};
											for v238 = 1, #v91 do
												local v239 = v91[v238];
												for v475 = 0, #v239 do
													local v476 = 0;
													local v477;
													local v478;
													local v479;
													while true do
														if (v476 == 1) then
															v479 = v477[2];
															if ((v478 == v92) and (v479 >= v223)) then
																local v1306 = 0;
																while true do
																	if (v1306 == 0) then
																		v224[v479] = v478[v479];
																		v477[1] = v224;
																		break;
																	end
																end
															end
															break;
														end
														if (v476 == 0) then
															v477 = v239[v475];
															v478 = v477[1];
															v476 = 1;
														end
													end
												end
											end
										elseif (v95 == 87) then
											v92[v94[2]] = v94[3] ~= 0 ;
										else
											v92[v94[2]][v94[3]] = v94[4];
										end
									elseif (v95 <= 89) then
										local v225;
										local v226;
										v226 = v94[2];
										v225 = v92[v94[3]];
										v92[v226 + 1 ] = v225;
										v92[v226] = v225[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v226 = v94[2];
										v92[v226] = v92[v226](v13(v92, v226 + 1 , v94[3]));
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v226 = v94[2];
										v225 = v92[v94[3]];
										v92[v226 + 1 ] = v225;
										v92[v226] = v225[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3] ~= 0 ;
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3] ~= 0 ;
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v65[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v226 = v94[2];
										v92[v226](v13(v92, v226 + 1 , v94[3]));
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v65[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v226 = v94[2];
										v225 = v92[v94[3]];
										v92[v226 + 1 ] = v225;
										v92[v226] = v225[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v226 = v94[2];
										v92[v226] = v92[v226](v13(v92, v226 + 1 , v94[3]));
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v226 = v94[2];
										v225 = v92[v94[3]];
										v92[v226 + 1 ] = v225;
										v92[v226] = v225[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3] ~= 0 ;
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3] ~= 0 ;
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v65[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v226 = v94[2];
										v92[v226](v13(v92, v226 + 1 , v94[3]));
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
									elseif (v95 == 90) then
										local v483 = v94[2];
										local v484 = v94[4];
										local v485 = v483 + 2 ;
										local v486 = {
											v92[v483](v92[v483 + 1 ], v92[v485])
										};
										for v773 = 1, v484 do
											v92[v485 + v773 ] = v486[v773];
										end
										local v487 = v486[1];
										if v487 then
											v92[v485] = v487;
											v86 = v94[3];
										else
											v86 = v86 + 1 ;
										end
									else
										local v488;
										local v489, v490;
										local v491;
										v92[v94[2]] = v92[v94[3]][v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v64[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v92[v94[3]][v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v92[v94[3]][v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]][v94[3]] = v92[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v64[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v65[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v65[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v92[v94[3]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v491 = v94[2];
										v489, v490 = v85(v92[v491](v13(v92, v491 + 1 , v94[3])));
										v87 = (v490 + v491) - 1 ;
										v488 = 0;
										for v776 = v491, v87 do
											local v777 = 0;
											while true do
												if (v777 == 0) then
													v488 = v488 + 1 ;
													v92[v776] = v489[v488];
													break;
												end
											end
										end
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v491 = v94[2];
										v92[v491] = v92[v491](v13(v92, v491 + 1 , v87));
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]][v94[3]] = v92[v94[4]];
										v86 = v86 + 1 ;
										v94 = v82[v86];
										v92[v94[2]] = v94[3];
									end
								elseif (v95 <= 94) then
									if (v95 <= 92) then
										if (v92[v94[2]] < v94[4]) then
											v86 = v86 + 1 ;
										else
											v86 = v94[3];
										end
									elseif (v95 == 93) then
										local v504 = 0;
										local v505;
										while true do
											if (v504 == 3) then
												v86 = v86 + 1 ;
												v94 = v82[v86];
												if (v92[v94[2]] ~= v92[v94[4]]) then
													v86 = v86 + 1 ;
												else
													v86 = v94[3];
												end
												break;
											end
											if (v504 == 1) then
												v505 = v94[2];
												v92[v505] = v92[v505](v13(v92, v505 + 1 , v94[3]));
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v504 = 2;
											end
											if (v504 == 0) then
												v505 = nil;
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v504 = 1;
											end
											if (v504 == 2) then
												v92[v94[2]] = v64[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v92[v94[3]][v94[4]];
												v504 = 3;
											end
										end
									else
										local v506 = v94[2];
										local v507, v508 = v85(v92[v506](v92[v506 + 1 ]));
										v87 = (v508 + v506) - 1 ;
										local v509 = 0;
										for v778 = v506, v87 do
											v509 = v509 + 1 ;
											v92[v778] = v507[v509];
										end
									end
								elseif (v95 <= 96) then
									if (v95 == 95) then
										v65[v94[3]] = v92[v94[2]];
									else
										local v512 = 0;
										local v513;
										while true do
											if (1 == v512) then
												v92[v94[2]] = v94[3];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v513 = v94[2];
												v512 = 2;
											end
											if (0 == v512) then
												v513 = nil;
												v92[v94[2]] = v65[v94[3]];
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v512 = 1;
											end
											if (v512 == 3) then
												v86 = v86 + 1 ;
												v94 = v82[v86];
												if v92[v94[2]] then
													v86 = v86 + 1 ;
												else
													v86 = v94[3];
												end
												break;
											end
											if (v512 == 2) then
												v92[v513](v92[v513 + 1 ]);
												v86 = v86 + 1 ;
												v94 = v82[v86];
												v92[v94[2]] = v65[v94[3]];
												v512 = 3;
											end
										end
									end
								elseif (v95 > 97) then
									local v514;
									v92[v94[2]] = v65[v94[3]];
									v86 = v86 + 1 ;
									v94 = v82[v86];
									v92[v94[2]] = v92[v94[3]][v94[4]];
									v86 = v86 + 1 ;
									v94 = v82[v86];
									v92[v94[2]] = v94[3];
									v86 = v86 + 1 ;
									v94 = v82[v86];
									v92[v94[2]] = v94[3];
									v86 = v86 + 1 ;
									v94 = v82[v86];
									v92[v94[2]] = v94[3];
									v86 = v86 + 1 ;
									v94 = v82[v86];
									v514 = v94[2];
									v92[v514] = v92[v514](v13(v92, v514 + 1 , v94[3]));
									v86 = v86 + 1 ;
									v94 = v82[v86];
									v92[v94[2]][v94[3]] = v92[v94[4]];
								else
									local v524 = 0;
									while true do
										if (1 == v524) then
											v92[v94[2]] = v65[v94[3]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v524 = 2;
										end
										if (v524 == 4) then
											if (v92[v94[2]] == v92[v94[4]]) then
												v86 = v86 + 1 ;
											else
												v86 = v94[3];
											end
											break;
										end
										if (0 == v524) then
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v524 = 1;
										end
										if (v524 == 2) then
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v524 = 3;
										end
										if (v524 == 3) then
											v92[v94[2]] = v92[v94[3]][v94[4]];
											v86 = v86 + 1 ;
											v94 = v82[v86];
											v524 = 4;
										end
									end
								end
								v86 = v86 + 1 ;
								break;
							end
							if (v97 == 0) then
								v94 = v82[v86];
								v95 = v94[1];
								v97 = 1;
							end
						end
					end
				end;
			end
		end
	end
	return v29(v28(), {}, v17)(...);
end
v15("LOL!5D3O0003093O00736574667073636170025O00C082402O033O0065786503053O007072696E74030B3O00657865206973207365787903073O0067657467656E762O0103043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203083O00496E7374616E63652O033O006E657703043O005061727403043O004E616D65030A3O0056697375616C697A657203083O00416E63686F72656403043O0053697A6503073O00566563746F7233026O002440029A5O99D93F03053O00436F6C6F7203063O00436F6C6F7233026O00F03F028O00030A3O0043616E436F2O6C6964650100030A3O0043617374536861646F7703083O0043616E5175657279030C3O005472616E73706172656E6379030A3O0076697375616C697A6572026O00E83F030B3O005370656369616C4D65736803063O00506172656E7403083O004D6573685479706503043O00456E756D03083O0046696C654D65736803063O004D657368496403163O00726278612O73657469643A2O2F34372O31323430373503053O005363616C6502F4FDD478E926B13F021B2FDD240681A53F03093O00776F726B737061636503053O00436C6F6E6503143O0056697375616C697A6572466F2O6C6F7742612O6C03103O0056697375616C697A65724E6F556E697402CD5OCCEC3F031A3O0056697375616C697A6572466F2O6C6F7742612O6C4E6F556E6974030C3O0042692O6C626F61726447756903093O00546578744C6162656C03053O0052616E676503073O00436F7265477569030E3O005A496E6465784265686176696F7203073O005369626C696E6703063O00416374697665030E3O004C69676874496E666C75656E636503053O005544696D32026O000840030B3O0053747564734F2O66736574026O00144003073O00456E61626C656403043O005465787403103O004261636B67726F756E64436F6C6F723303073O0066726F6D524742025O00E06F4003163O004261636B67726F756E645472616E73706172656E6379030C3O00426F72646572436F6C6F7233030F3O00426F7264657253697A65506978656C029A5O99E13F03083O00506F736974696F6E02CD5OCCDC3F03043O00466F6E74030A3O00467265646F6B614F6E652O033O00312O30030A3O0054657874436F6C6F7233030A3O00546578745363616C656403083O005465787453697A65026O002C4003163O00546578745374726F6B655472616E73706172656E6379030B3O00546578745772612O70656403093O00546578744D756C746903103O00546578745472616E73706172656E6379026O00E03F03023O00317803083O0044697374616E6365027O004003073O0047657442612O6C03053O00526F756E64030A3O004765745365727669636503103O0055736572496E70757453657276696365030A3O00496E707574426567616E03073O00436F2O6E656374030A3O0052756E53657276696365030D3O0052656E6465725374652O7065640057012O0012603O00013O00122O000100028O0002000100124O00033O00064O000700013O00043E3O000700012O004E3O00013O0012443O00043O001207000100058O0002000100124O00068O0001000200304O000300076O00013O00122O000100083O00202O00010001000900202O00010001000A00122O0002000B3O00203F00020002000C0012510003000D6O0002000200020030580002000E000F003058000200100007001262000300123O00202O00030003000C00122O000400133O00122O000500143O00122O000600136O00030006000200102O000200110003001262000300163O00202O00030003000C00122O000400173O00122O000500183O00122O000600186O00030006000200102O00020015000300301800020019001A00302O0002001B001A00302O0002001C001A00122O000300066O00030001000200202O00030003001E00062O0003003000013O00043E3O003000010012510003001F3O000612000300310001000100043E3O00310001001251000300173O0010060002001D00030012300003000B3O00202O00030003000C00122O000400206O00030002000200102O00030021000200122O000400233O00202O00040004002200202O00040004002400102O00030022000400302O000300250026001262000400123O00202O00040004000C00122O000500283O00122O000600293O00122O000700286O00040007000200102O00030027000400120C0004002A3O00102O00020021000400202O00040002002B4O00040002000200302O0004000E002C00122O0005002A3O00102O00040021000500122O000500066O00050001000200202O00050005001E0006550005005200013O00043E3O00520001001251000500183O000612000500530001000100043E3O00530001001251000500173O0010060004001D000500204100050002002B4O00050002000200302O0005000E002D00122O0006002A3O00102O00050021000600122O000600066O00060001000200202O00060006001E00062O0006006100013O00043E3O006100010012510006002E3O000612000600620001000100043E3O00620001001251000600173O0010060005001D0006001262000600163O00202O00060006000C00122O000700173O00122O000800183O00122O000900176O00060009000200102O00050015000600204100060005002B4O00060002000200302O0006000E002F00122O0007002A3O00102O00060021000700122O000700066O00070001000200202O00070007001E00062O0007007700013O00043E3O007700010012510007002E3O000612000700780001000100043E3O00780001001251000700173O0010060006001D00070012390007000B3O00202O00070007000C00122O000800306O00070002000200122O0008000B3O00202O00080008000C00122O000900316O00080002000200122O0009000B3O00202O00090009000C00122O000A00306O00090002000200122O000A000B3O00202O000A000A000C00122O000B00316O000A0002000200302O0007000E003200122O000B00083O00202O000B000B003300102O00070021000B00122O000B00233O00202O000B000B003400202O000B000B003500102O00070034000B00302O00070036000700302O00070037001700122O000B00383O00202O000B000B000C00122O000C00393O00122O000D00183O00122O000E00393O00122O000F00186O000B000F000200102O00070011000B00122O000B00123O00202O000B000B000C00122O000C00183O00122O000D003B3O00122O000E00186O000B000E000200102O0007003A000B00122O000B00066O000B0001000200202O000B000B001E00102O0007003C000B00302O0008000E003D00102O00080021000700122O000B00163O00202O000B000B003F00122O000C00403O00122O000D00403O00122O000E00406O000B000E000200102O0008003E000B00302O00080041001700122O000B00163O00202O000B000B003F00122O000C00183O00122O000D00183O00122O000E00186O000B000E000200102O00080042000B00302O00080043001800122O000B00383O00202O000B000B000C00122O000C00173O00122O000D00183O00122O000E00443O00122O000F00186O000B000F000200102O00080011000B00122O000B00383O00202O000B000B000C00122O000C00183O00122O000D00183O00122O000E00463O00122O000F00186O000B000F000200102O00080045000B00122O000B00233O00203F000B000B004700200A000B000B004800102O00080047000B00302O0008003D004900122O000B00163O00202O000B000B003F00122O000C00403O00122O000D00403O00122O000E00406O000B000E000200102O0008004A000B00302O0008004B000700302O0008004C004D00302O0008004E001800302O0008004F000700202O000B0008002B4O000B0002000200302O000B000E005000102O000B0021000700302O000B0051005200302O000B004E005200122O000C00383O00202O000C000C000C00122O000D00173O00122O000E00183O00122O000F00463O00122O001000186O000C0010000200102O000B0011000C00122O000C00383O00202O000C000C000C00122O000D00183O00122O000E00183O00122O000F00183O00122O001000186O000C0010000200102O000B0045000C00302O000B003D005300302O0009000E005400122O000C00083O00202O000C000C003300102O00090021000C00122O000C00233O00202O000C000C003400202O000C000C003500102O00090034000C00302O00090036000700302O00090037001700122O000C00383O00202O000C000C000C00122O000D00553O00122O000E00183O00122O000F00553O00122O001000186O000C0010000200102O00090011000C00122O000C00123O00202O000C000C000C00122O000D00183O00122O000E003B3O00122O000F00186O000C000F000200102O0009003A000C00122O000C00066O000C0001000200202O000C000C001E00102O0009003C000C00302O000A000E003D00102O000A0021000900122O000C00163O00202O000C000C003F00122O000D00403O00122O000E00403O00122O000F00406O000C000F000200102O000A003E000C00302O000A0041001700122O000C00163O00202O000C000C003F00122O000D00183O00122O000E00183O001237000F00186O000C000F000200102O000A0042000C00302O000A0043001800122O000C00383O00202O000C000C000C00122O000D00173O00122O000E00183O00122O000F00173O00122O001000184O0036000C0010000200102F000A0011000C00122O000C00233O00202O000C000C004700202O000C000C004800102O000A0047000C00302O000A003D0049001262000C00163O00202O000C000C003F00122O000D00403O00122O000E00403O00122O000F00406O000C000F000200102O000A004A000C003058000A004B0007003058000A004C004D003058000A004E0018003058000A004F0007000235000C5O00125F000C00563O000235000C00013O00122B000C00573O00122O000C00083O00202O000C000C005800122O000E00596O000C000E000200202O000C000C005A00202O000C000C005B000235000E00024O000D000C000E000100122O000C00083O00202O000C000C005800122O000E005C6O000C000E000200202O000C000C005D00202O000C000C005B000628000E00030001000B2O002C3O00024O002C3O00014O002C3O00044O002C3O00054O002C3O00064O002C3O00084O002C3O000B4O002C3O000A4O002C8O002C3O00074O002C3O00094O0033000C000E00012O00568O004E3O00013O00043O00093O00028O0003053O00706169727303093O00776F726B737061636503053O0042612O6C73030B3O004765744368696C6472656E03083O0056656C6F6369747903073O00566563746F72332O033O006E6577026O00F03F001E3O0012513O00014O0053000100013O0026503O00190001000100043E3O001900012O0053000100013O00121B000200023O00122O000300033O00202O00030003000400202O0003000300054O000300046O00023O000400044O0016000100203F000700060006001211000800073O00202O00080008000800122O000900013O00122O000A00013O00122O000B00016O0008000B000200062O000700160001000800043E3O001600012O002C000100063O00065A0002000C0001000200043E3O000C00010012513O00093O0026503O00020001000900043E3O000200012O0015000100023O00043E3O000200012O004E3O00017O00083O00028O00026O00F03F03043O006D61746803053O00666C2O6F72026O00E03F03043O006365696C2O033O00706F77026O002440022A3O001251000200013O002650000200160001000200043E3O00160001001251000300013O002650000300040001000100043E3O00040001000E080001000E00013O00043E3O000E0001001244000400033O00204F00040004000400202O00053O00054O0004000200026O00043O00044O00130001001244000400033O00203F00040004000600203800053O00054O0004000200022O002C3O00044O001D00043O00012O0015000400023O00043E3O00040001002650000200010001000100043E3O00010001001251000300013O0026500003001D0001000200043E3O001D0001001251000200023O00043E3O00010001002650000300190001000100043E3O00190001001244000400033O00204500040004000700122O000500086O000600016O0004000600024O000100049O00000100122O000300023O00044O0019000100043E3O000100012O004E3O00017O00043O0003073O004B6579436F646503043O00456E756D03013O005803043O007370616D020C3O00206100023O000100122O000300023O00202O00030003000100202O00030003000300062O0002000B0001000300043E3O000B00010006120001000B0001000100043E3O000B0001001244000200044O004D000200023O00125F000200044O004E3O00017O00433O00028O00027O004003063O00434672616D6503093O0043686172616374657203103O0048756D616E6F6964522O6F745061727403093O00776F726B737061636503053O0042612O6C7303153O0046696E6446697273744368696C644F66436C612O7303043O005061727403063O006C2O6F6B417403083O00506F736974696F6E026O000840030C3O005472616E73706172656E637903073O0067657467656E76030A3O0076697375616C697A6572026O00E83F026O00F03F02CD5OCCEC3F03073O0047657442612O6C026O00104003043O004D65736803053O005363616C6503043O005465787403083O00746F737472696E6703053O00526F756E6403073O00566563746F72332O033O006E6577026O00224002F4FDD478E926B13F021B2FDD240681A53F026O0014402O033O00312E3003013O007803093O006D61676E697475646503043O00556E697403093O004D61676E6974756465029A5O99F13F03043O0067616D65030A3O004765745365727669636503053O00537461747303073O004E6574776F726B030F3O0053657276657253746174734974656D03093O00446174612050696E6703083O0047657456616C756503083O0056656C6F63697479030A3O004C2O6F6B566563746F72030A3O0054657874436F6C6F723303063O00436F6C6F723303043O007370616D030E3O0046696E6446697273744368696C6403093O00486967686C69676874030C3O00476574412O7472696275746503063O0074617267657403043O004E616D6503133O005669727475616C496E7075744D616E61676572030C3O0053656E644B65794576656E7403013O004603043O007469636B030A3O0052756E53657276696365030D3O0052656E6465725374652O70656403043O005761697403053O00436F6C6F72026O00E03F026O00694003073O0041646F726E2O65026O33D33F03073O00456E61626C6564006D022O0012513O00014O0053000100013O0026503O00290001000200043E3O002900012O001E00026O003D000300013O00202O00030003000400202O00030003000500202O00030003000300102O0002000300034O000200023O00122O000300063O00202O00030003000700202O00030003000800122O000500096O00030005000200062O0003002100013O00043E3O00210001001244000300033O00200200030003000A4O000400013O00202O00040004000400202O00040004000500202O00040004000B00122O000500063O00202O00050005000700202O00050005000800122O000700096O00050007000200202O00050005000B4O00030005000200062O000300230001000100043E3O002300012O001E00035O00203F0003000300030010060002000300032O0021000200036O00035O00202O00030003000300102O00020003000300124O000C3O0026503O004D0001000100043E3O004D00012O001E00025O0012440003000E4O004B00030001000200203F00030003000F0006550003003400013O00043E3O00340001001251000300103O000612000300350001000100043E3O00350001001251000300113O0010060002000D00032O001A000200023O00122O0003000E6O00030001000200202O00030003000F00062O0003003F00013O00043E3O003F0001001251000300013O000612000300400001000100043E3O00400001001251000300113O0010060002000D00032O001A000200033O00122O0003000E6O00030001000200202O00030003000F00062O0003004A00013O00043E3O004A0001001251000300123O0006120003004B0001000100043E3O004B0001001251000300113O0010060002000D00030012513O00113O0026503O00530201000C00043E3O005302012O001E000200044O0001000300023O00202O00030003000300102O00020003000300122O000200136O0002000100024O000100023O00062O0001006C02013O00043E3O006C0201001251000200014O0053000300033O0026500002005A0001000100043E3O005A00012O001E000400013O00203F0003000400040006550003006C02013O00043E3O006C0201001251000400014O00530005000D3O002650000400660001000200043E3O006600012O00530009000A3O0012510004000C3O0026500004006B0001000100043E3O006B0001001251000500014O0053000600063O001251000400113O0026500004006F0001000C00043E3O006F00012O0053000B000C3O001251000400143O000E3A001100730001000400043E3O007300012O0053000700083O001251000400023O002650000400620001001400043E3O006200012O0053000D000D3O002650000500A30001000C00043E3O00A30001001251000E00013O000E3A0011008A0001000E00043E3O008A00012O001E000F00043O00205B000F000F00154O001000033O00202O00100010001500202O00100010001600102O000F001600104O000F00053O00122O001000183O00122O001100196O0012000C3O00122O001300116O001100136O00103O000200102O000F0017001000122O000E00023O000E3A0001009E0001000E00043E3O009E00012O001E000F00023O00204A000F000F00154O00105O00202O00100010001500202O00100010001600102O000F001600104O000F00033O00202O000F000F001500122O0010001A3O00202O00100010001B00202O0011000B001C00202O00110011001D00122O0012001E3O00202O0013000B001C00202O00130013001D4O00100013000200102O000F0016001000122O000E00113O002650000E00790001000200043E3O00790001001251000500143O00043E3O00A3000100043E3O00790001002650000500CE0001001400043E3O00CE0001001251000E00013O002650000E00AA0001000200043E3O00AA00010012510005001F3O00043E3O00CE0001002650000E00BA0001001100043E3O00BA0001002650000D00B00001001100043E3O00B00001001251000D00203O00043E3O00B40001001244000F00184O002C0010000D6O000F000200022O002C000D000F4O001E000F00064O00400010000D3O00122O001100216O00100010001100102O000F0017001000122O000E00023O002650000E00A60001000100043E3O00A600012O001E000F00073O00120F001000183O00122O001100193O00202O00120001000B00202O00130006000B4O00120012001300202O00120012002200122O001300116O001100136O00103O000200102O000F0017001000122O000F00196O0010000A3O00122O001100026O000F001100024O000D000F3O00122O000E00113O00044O00A60001002650000500F50001001100043E3O00F50001001251000E00013O002650000E00D50001000200043E3O00D50001001251000500023O00043E3O00F50001002650000E00E90001001100043E3O00E9000100203F000F000800230020130010000900234O000F000F001000202O000F000F002400202O000F000F001400102O000A0025000F00122O000F00263O00202O000F000F002700122O001100286O000F0011000200202O000F000F002900202O000F000F002A00202O000F000F002B00202O000F000F002C4O000F0002000200202O000F000F001C4O000B000F000700122O000E00023O002650000E00D10001000100043E3O00D1000100203F000F0001002D0020160008000F002300122O000F00033O00202O000F000F001B00202O00100001000B00202O00110006000B4O000F0011000200202O0009000F002E00122O000E00113O00044O00D10001002650000500D22O01001F00043E3O00D22O0100203F000E0001000B00203F000F0006000B2O0003000E000E000F00203F000E000E0022000642000E00062O01000C00043E3O00062O012O001E000E00073O00122A000F00303O00202O000F000F001B00122O001000113O00122O001100013O00122O001200016O000F0012000200102O000E002F000F00044O000E2O012O001E000E00073O001262000F00303O00202O000F000F001B00122O001000113O00122O001100113O00122O001200116O000F0012000200102O000E002F000F001244000E00313O000612000E00942O01000100043E3O00942O012O001E000E00083O000655000E006C02013O00043E3O006C02010006550006006C02013O00043E3O006C0201002046000E00030032001251001000334O0036000E00100002000612000E00222O01000100043E3O00222O01002046000E0001003400123B001000356O000E001000024O000F00013O00202O000F000F003600062O000E006C0201000F00043E3O006C020100203F000E0001000B00203F000F0006000B2O0003000E000E000F00203F000E000E0022000642000E006C0201000C00043E3O006C0201001251000E00013O002650000E00342O01000C00043E3O00342O012O001E000F00053O00122A001000303O00202O00100010001B00122O001100113O00122O001200113O00122O001300116O00100013000200102O000F002F001000044O006C0201000E3A001100492O01000E00043E3O00492O01001251000F00013O002650000F003B2O01001100043E3O003B2O01001251000E00023O00043E3O00492O01002650000F00372O01000100043E3O00372O012O005700106O0034001000086O001000053O00122O001100303O00202O00110011001B00122O001200113O00122O001300113O00122O001400016O00110014000200102O0010002F001100122O000F00113O00044O00372O01002650000E00602O01000100043E3O00602O01001244000F00263O002024000F000F002700122O001100376O000F0011000200202O000F000F00384O001100013O00122O001200396O00135O00122O001400266O000F0014000100122O000F00263O00202O000F000F002700122O001100376O000F0011000200202O000F000F00384O00115O00122O001200396O00135O00122O001400266O000F0014000100122O000E00113O002650000E00292O01000200043E3O00292O01002046000F00030032001251001100334O0036000F00110002000612000F006E2O01000100043E3O006E2O01002046000F0001003400123B001100356O000F001100024O001000013O00202O00100010003600062O000F008F2O01001000043E3O008F2O01001251000F00014O0053001000103O002650000F00702O01000100043E3O00702O010012440011003A4O004B0011000100022O002C001000113O001244001100263O00205200110011002700122O0013003B6O00110013000200202O00110011003C00202O00110011003D4O00110002000100122O0011003A6O0011000100024O001100110010000E2O0011008F2O01001100043E3O008F2O01002046001100030032001251001300334O0036001100130002000612001100752O01000100043E3O00752O0100204600110001003400125D001300356O0011001300024O001200013O00202O00120012003600062O001100752O01001200043E3O00752O0100043E3O008F2O0100043E3O00702O012O0057000F00014O002E000F00083O001251000E000C3O00043E3O00292O0100043E3O006C0201001244000E00313O000655000E006C02013O00043E3O006C0201001251000E00014O0053000F000F3O002650000E00992O01000100043E3O00992O01001251000F00013O002650000F00AF2O01001100043E3O00AF2O012O001E00105O001205001100303O00202O00110011001B00122O001200113O00122O0013003F3O00122O001400016O00110014000200102O0010003E00114O001000023O00122O001100303O00202O00110011001B00122O001200113O00122O0013003F3O00122O001400016O00110014000200102O0010003E001100044O006C0201000E3A0001009C2O01000F00043E3O009C2O01001251001000013O002650001000C92O01000100043E3O00C92O01001244001100263O00202400110011002700122O001300376O00110013000200202O0011001100384O001300013O00122O001400396O00155O00122O001600266O00110016000100122O001100263O00202O00110011002700122O001300376O00110013000200202O0011001100384O00135O00122O001400396O00155O00122O001600266O00110016000100122O001000113O002650001000B22O01001100043E3O00B22O01001251000F00113O00043E3O009C2O0100043E3O00B22O0100043E3O009C2O0100043E3O006C020100043E3O00992O0100043E3O006C0201000E3A000200320201000500043E3O00320201001251000E00013O002650000E00D92O01000200043E3O00D92O010012510005000C3O00043E3O00320201002650000E00E82O01001100043E3O00E82O012O001F000C000A000B2O0048000F5O00202O000F000F001500122O0010001A3O00202O00100010001B00202O0011000C001C00202O00110011001D00122O0012001E3O00202O0013000C001C00202O00130013001D4O00100013000200102O000F0016001000122O000E00023O002650000E00D52O01000100043E3O00D52O01000E32004000EF2O01000B00043E3O00EF2O01001251000F00403O000625000B00EF2O01000F00043E3O00EF2O01000E08004000100201000B00043E3O00100201001244000F00313O000612000F00100201000100043E3O00100201001251000F00014O0053001000103O002650000F00F62O01000100043E3O00F62O01001251001000013O002650001000F92O01000100043E3O00F92O012O001E00115O001205001200303O00202O00120012001B00122O001300013O00122O001400113O00122O001500016O00120015000200102O0011003E00124O001100023O00122O001200303O00202O00120012001B00122O001300013O00122O001400113O00122O001500016O00120015000200102O0011003E001200044O0030020100043E3O00F92O0100043E3O0030020100043E3O00F62O0100043E3O0030020100265C000B00300201004000043E3O00300201001244000F00313O000612000F00300201000100043E3O00300201001251000F00014O0053001000103O002650000F00170201000100043E3O00170201001251001000013O0026500010001A0201000100043E3O001A02012O001E00115O001205001200303O00202O00120012001B00122O001300113O00122O001400013O00122O001500016O00120015000200102O0011003E00124O001100023O00122O001200303O00202O00120012001B00122O001300113O00122O001400013O00122O001500016O00120015000200102O0011003E001200044O0030020100043E3O001A020100043E3O0030020100043E3O00170201001251000E00113O00043E3O00D52O01002650000500760001000100043E3O00760001001251000E00013O002650000E00390201000200043E3O00390201001251000500113O00043E3O00760001002650000E00440201000100043E3O004402012O001E000F00013O002043000F000F000400202O000F000F003200122O001100056O000F001100024O0006000F6O000F00093O00102O000F0041000600122O000E00113O002650000E00350201001100043E3O003502012O001E000F000A3O001009000F0041000100202O000F0001002D00202O000F000F002200202O0007000F004200122O000E00023O00044O0035020100043E3O0076000100043E3O006C020100043E3O0062000100043E3O006C020100043E3O005A000100043E3O006C02010026503O00020001001100043E3O000200012O001E000200043O0012440003000E4O004B00030001000200203F00030003000F0006550003005E02013O00043E3O005E0201001251000300123O0006120003005F0201000100043E3O005F0201001251000300113O0010060002000D00032O0027000200093O00122O0003000E6O00030001000200202O00030003000F00102O0002004300034O0002000A3O00122O0003000E6O00030001000200202O00030003000F00102O00020043000300124O00023O00044O000200012O004E3O00017O00", v9(), ...);

setfpscap(240)
print("p")
