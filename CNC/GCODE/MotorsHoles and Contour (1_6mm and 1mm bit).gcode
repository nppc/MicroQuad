;Project QuadMicroCNC - Copy
;Created by Estlcam version 10 build 10,037
;Machining time about 00:11:45 hours

G90
M03 S24000
G1 X55 Y25 F4000
G1 Z0 ; premove
M84 Z
M00; wait to confirm everything is aligned
M17
;G92 X Y Z
G0 Z1.0000 F500


;No. 1: Drill 10
G0 X55.0383 Y25.0806 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120 S24000
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 2: Hole 22
G0 X57.0590 Y27.1822 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G1 X57.1008 Y27.1563
G1 X57.1343 Y27.1202
G1 X57.1570 Y27.0765
G1 X57.1673 Y27.0284
G1 X57.1645 Y26.9793
G1 X57.1488 Y26.9327
G1 X57.1214 Y26.8918
G1 X57.0841 Y26.8598
G1 X57.0396 Y26.8387
G1 X56.9911 Y26.8302
G1 X56.9421 Y26.8348
G1 X56.8961 Y26.8522
G1 X56.8383 Y26.9100
G1 X56.8121 Y26.9887
G1 Y27.0701
G1 X56.8317 Y27.1008
G1 X56.8561 Y27.1279
G1 X56.8846 Y27.1506
G1 X56.9164 Y27.1684
G1 X56.9507 Y27.1806
G1 X56.9866 Y27.1871
G1 X57.0230 Y27.1877
G1 X57.0590 Y27.1822
G1 Z-3.0000
G1 X57.1008 Y27.1563
G1 X57.1343 Y27.1202
G1 X57.1570 Y27.0765
G1 X57.1673 Y27.0284
G1 X57.1645 Y26.9793
G1 X57.1488 Y26.9327
G1 X57.1214 Y26.8918
G1 X57.0841 Y26.8598
G1 X57.0396 Y26.8387
G1 X56.9911 Y26.8302
G1 X56.9421 Y26.8348
G1 X56.8961 Y26.8522
G1 X56.8383 Y26.9100
G1 X56.8121 Y26.9887
G1 Y27.0701
G1 X56.8317 Y27.1008
G1 X56.8561 Y27.1279
G1 X56.8846 Y27.1506
G1 X56.9164 Y27.1684
G1 X56.9507 Y27.1806
G1 X56.9866 Y27.1871
G1 X57.0230 Y27.1877
G1 X57.0590 Y27.1822
G0 Z1.0000 F500


;No. 3: Drill 12
G0 X56.2661 Y29.6532 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 4: Drill 11
G0 X59.6532 Y26.3085 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 5: Drill 9
G0 X102.3305 Y26.3085 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 6: Hole 21
G0 X104.8400 Y27.1058 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G1 X104.8636 Y27.1323
G1 X104.8914 Y27.1543
G1 X104.9226 Y27.1712
G1 X104.9563 Y27.1825
G1 X104.9914 Y27.1878
G1 X105.0268 Y27.1870
G1 X105.0616 Y27.1802
G1 X105.0947 Y27.1674
G1 X105.1346 Y27.1278
G1 X105.1606 Y27.0779
G1 X105.1703 Y27.0225
G1 X105.1627 Y26.9668
G1 X105.1386 Y26.9159
G1 X105.1003 Y26.8748
G1 X105.0513 Y26.8472
G1 X104.9962 Y26.8357
G1 X104.9403 Y26.8415
G1 X104.8887 Y26.8639
G1 X104.8464 Y26.9009
G1 X104.8172 Y26.9489
G1 X104.8012 Y26.9892
G1 X104.8055 Y27.0283
G1 X104.8400 Y27.1058
G1 Z-3.0000
G1 X104.8636 Y27.1323
G1 X104.8914 Y27.1543
G1 X104.9226 Y27.1712
G1 X104.9563 Y27.1825
G1 X104.9914 Y27.1878
G1 X105.0268 Y27.1870
G1 X105.0616 Y27.1802
G1 X105.0947 Y27.1674
G1 X105.1346 Y27.1278
G1 X105.1606 Y27.0779
G1 X105.1703 Y27.0225
G1 X105.1627 Y26.9668
G1 X105.1386 Y26.9159
G1 X105.1003 Y26.8748
G1 X105.0513 Y26.8472
G1 X104.9962 Y26.8357
G1 X104.9403 Y26.8415
G1 X104.8887 Y26.8639
G1 X104.8464 Y26.9009
G1 X104.8172 Y26.9489
G1 X104.8012 Y26.9892
G1 X104.8055 Y27.0283
G1 X104.8400 Y27.1058
G0 Z1.0000 F500


;No. 7: Drill 7
G0 X105.7176 Y29.6532 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 8: Drill 8
G0 X106.9455 Y25.0806 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 9: Drill 5
G0 X105.7176 Y72.3729 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 10: Hole 20
G0 X104.8218 Y74.9505 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G1 X104.8012 Y75.0012
G1 X104.8055 Y75.0403
G1 X104.8216 Y75.0792
G1 X104.8447 Y75.1144
G1 X104.8739 Y75.1447
G1 X104.9082 Y75.1692
G1 X104.9464 Y75.1868
G1 X104.9873 Y75.1970
G1 X105.0293 Y75.1995
G1 X105.0710 Y75.1942
G1 X105.1130 Y75.1531
G1 X105.1418 Y75.1019
G1 X105.1552 Y75.0447
G1 X105.1521 Y74.9861
G1 X105.1328 Y74.9306
G1 X105.0987 Y74.8827
G1 X105.0527 Y74.8463
G1 X104.9983 Y74.8241
G1 X104.9081 Y74.8642
G1 X104.8218 Y74.9505
G1 Z-3.0000
G1 X104.8012 Y75.0012
G1 X104.8055 Y75.0403
G1 X104.8216 Y75.0792
G1 X104.8447 Y75.1144
G1 X104.8739 Y75.1447
G1 X104.9082 Y75.1692
G1 X104.9464 Y75.1868
G1 X104.9873 Y75.1970
G1 X105.0293 Y75.1995
G1 X105.0710 Y75.1942
G1 X105.1130 Y75.1531
G1 X105.1418 Y75.1019
G1 X105.1552 Y75.0447
G1 X105.1521 Y74.9861
G1 X105.1328 Y74.9306
G1 X105.0987 Y74.8827
G1 X105.0527 Y74.8463
G1 X104.9983 Y74.8241
G1 X104.9081 Y74.8642
G1 X104.8218 Y74.9505
G0 Z1.0000 F500


;No. 11: Drill 6
G0 X102.3305 Y75.7176 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 12: Drill 4
G0 X106.9455 Y76.9455 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 13: Drill 2
G0 X59.6532 Y75.7176 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 14: Hole 19
G0 X56.9863 Y74.8241 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G1 X56.9537 Y74.8311
G1 X56.9226 Y74.8433
G1 X56.8940 Y74.8606
G1 X56.8687 Y74.8823
G1 X56.8473 Y74.9079
G1 X56.8305 Y74.9368
G1 X56.8186 Y74.9680
G1 X56.8121 Y75.0007
G1 Y75.0821
G1 X56.8280 Y75.1178
G1 X56.8963 Y75.1691
G1 X56.9379 Y75.1926
G1 X56.9844 Y75.2039
G1 X57.0321 Y75.2022
G1 X57.0776 Y75.1877
G1 X57.1175 Y75.1613
G1 X57.1487 Y75.1251
G1 X57.1689 Y75.0817
G1 X57.1766 Y75.0346
G1 X57.1712 Y74.9871
G1 X57.1531 Y74.9428
G1 X57.1237 Y74.9051
G1 X57.0852 Y74.8768
G1 X57.0014 Y74.8303
G1 X56.9863 Y74.8241
G1 Z-3.0000
G1 X56.9537 Y74.8311
G1 X56.9226 Y74.8433
G1 X56.8940 Y74.8606
G1 X56.8687 Y74.8823
G1 X56.8473 Y74.9079
G1 X56.8305 Y74.9368
G1 X56.8186 Y74.9680
G1 X56.8121 Y75.0007
G1 Y75.0821
G1 X56.8280 Y75.1178
G1 X56.8963 Y75.1691
G1 X56.9379 Y75.1926
G1 X56.9844 Y75.2039
G1 X57.0321 Y75.2022
G1 X57.0776 Y75.1877
G1 X57.1175 Y75.1613
G1 X57.1487 Y75.1251
G1 X57.1689 Y75.0817
G1 X57.1766 Y75.0346
G1 X57.1712 Y74.9871
G1 X57.1531 Y74.9428
G1 X57.1237 Y74.9051
G1 X57.0852 Y74.8768
G1 X57.0014 Y74.8303
G1 X56.9863 Y74.8241
G0 Z1.0000 F500


;No. 15: Drill 3
G0 X56.2661 Y72.3729 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 16: Drill 1
G0 X55.0383 Y76.9455 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-2.0000 F120
G0 Z0.5000 F500
G0 Z-1.5000
G1 Z-3.0000 F120
G0 Z1.0000 F500


;No. 17: Part 3
M05

G1 Z5
G1 X10 Y10 F4000
G1 Z0
M84 Z ; disable steppers
M00 ; wait for tool change
;Change tool: Cut
M03
M17
G1 Z2
G1 X55 Y25 F4000
G1 Z0
M84 Z ; disable steppers
M00 ; wait for confirming
M17
G1 Z2 ; lift tool a bit before next move

;No. 1: Drill 6
G0 X79.3371 Y43.5747 F3000
G0 Z0.5000 F500
G1 Z-3.0000 F120 S24000
G0 Z1.0000 F500


;No. 2: Drill 7
G0 X82.6004 Y43.5765 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-3.0000 F120
G0 Z1.0000 F500


G0 X57.7049 Y32.6882 Z1.0000 F3000
G0 Z0.5000 F500
G1 Z-1.0000 F120
G1 X57.3759 Y32.3954
G1 X56.8472 Y32.1133
G1 X55.3828 Y31.7472
G1 X54.9976 Y31.5916
G1 X54.6262 Y31.4057
G1 X54.2709 Y31.1907
G1 X53.9339 Y30.9479
G1 X53.6174 Y30.6790
G1 X53.3235 Y30.3855
G1 X53.0540 Y30.0695
G1 X52.8107 Y29.7329
G1 X52.5951 Y29.3779
G1 X52.4086 Y29.0067
G1 X52.2524 Y28.6219
G1 X52.1276 Y28.2258
G1 X52.0035 Y27.3988
G1 X51.9986 Y27.3490
G1 X51.9980 Y26.4355
G1 X52.0406 Y26.1834
G1 X52.0941 Y25.9334
G1 X52.1583 Y25.6859
G1 X52.2331 Y25.4415
G1 X52.3184 Y25.2005
G1 X52.4139 Y24.9633
G1 X52.5197 Y24.7306
G1 X52.6353 Y24.5026
G1 X53.1564 Y23.8068
G1 X53.4088 Y23.5225
G1 X53.6821 Y23.2581
G1 X53.9746 Y23.0153
G1 X54.2849 Y22.7955
G1 X54.6109 Y22.6000
G1 X54.9509 Y22.4299
G1 X55.3029 Y22.2861
G1 X55.6648 Y22.1695
G1 X56.5341 Y22.0453
G1 X56.8969 Y22.0239
G1 X57.2604 Y22.0292
G1 X57.6224 Y22.0612
G1 X57.9811 Y22.1197
G1 X58.3346 Y22.2045
G1 X58.6808 Y22.3149
G1 X59.0180 Y22.4505
G1 X59.3443 Y22.6106
G1 X59.6580 Y22.7941
G1 X59.9574 Y23.0003
G1 X60.2408 Y23.2278
G1 X60.5067 Y23.4756
G1 X60.7536 Y23.7423
G1 X60.9803 Y24.0264
G1 X61.1856 Y24.3263
G1 X61.3682 Y24.6406
G1 X61.5488 Y25.0214
G1 X61.7009 Y25.4145
G1 X61.8238 Y25.8178
G1 X61.9168 Y26.2289
G1 X62.1059 Y26.8719
G1 X62.4046 Y27.3953
G1 X62.6625 Y27.7638
G1 X76.3202 Y41.3792
G1 X76.4989 Y41.5272
G1 X76.6906 Y41.6578
G1 X76.8938 Y41.7699
G1 X77.1065 Y41.8625
G1 X77.3270 Y41.9347
G1 X77.5532 Y41.9860
G1 X77.7833 Y42.0159
G1 X78.0151 Y42.0242
G1 X78.4128
G1 X78.4306 Y42.0182
G1 X78.4190 Y42.0221
G1 Y42.0101
G1 X78.2434 Y41.9825
G1 X78.0754 Y41.9239
G1 X77.9206 Y41.8364
G1 X77.7838 Y41.7227
G1 X77.6695 Y41.5864
G1 X77.5814 Y41.4319
G1 X77.5221 Y41.2642
G1 X77.4938 Y41.0886
G1 X77.4874 Y41.0391
G1 X77.4860 Y40.9891
G1 X77.5014 Y40.8573
G1 X77.5326 Y40.7283
G1 X77.5792 Y40.6040
G1 X77.6404 Y40.4863
G1 X77.7153 Y40.3767
G1 X77.8029 Y40.2770
G1 X77.9019 Y40.1886
G1 X78.0108 Y40.1128
G1 X78.1312 Y40.0632
G1 X78.2561 Y40.0263
G1 X78.3841 Y40.0025
G1 X78.5139 Y39.9919
G1 X83.4899
G1 X83.6586 Y40.0112
G1 X83.8215 Y40.0594
G1 X83.9735 Y40.1351
G1 X84.1101 Y40.2361
G1 X84.2224 Y40.3376
G1 X84.3180 Y40.4550
G1 X84.3947 Y40.5857
G1 X84.4505 Y40.7264
G1 X84.4844 Y40.8740
G1 X84.4953 Y41.0250
G1 X84.4832 Y41.1760
G1 X84.4483 Y41.3233
G1 X84.3913 Y41.4636
G1 X84.3137 Y41.5936
G1 X84.2172 Y41.7103
G1 X84.1040 Y41.8110
G1 X83.9769 Y41.8932
G1 X83.8388 Y41.9552
G1 X83.6928 Y41.9954
G1 X83.5424 Y42.0130
G1 X83.5503 Y42.0214
G1 X83.6910 Y42.0355
G1 X83.8324 Y42.0352
G1 X83.9731 Y42.0205
G1 X84.1115 Y41.9915
G1 X84.3446 Y41.9683
G1 X84.5746 Y41.9243
G1 X84.7998 Y41.8597
G1 X85.0182 Y41.7751
G1 X85.2281 Y41.6711
G1 X85.4278 Y41.5488
G1 X85.6156 Y41.4089
G1 X85.7902 Y41.2527
G1 X99.3213 Y27.7638
G1 X99.5792 Y27.3953
G1 X99.8767 Y26.8746
G1 X100.0664 Y26.2310
G1 X100.2314 Y25.4060
G1 X100.2436 Y25.3575
G1 X100.4354 Y24.9249
G1 X100.6600 Y24.5085
G1 X100.9162 Y24.1107
G1 X101.2023 Y23.7338
G1 X101.4310 Y23.4907
G1 X101.6750 Y23.2628
G1 X101.9332 Y23.0512
G1 X102.2046 Y22.8568
G1 X102.4879 Y22.6803
G1 X102.7821 Y22.5225
G1 X103.0859 Y22.3840
G1 X103.3979 Y22.2655
G1 X103.7170 Y22.1675
G1 X104.0418 Y22.0902
G1 X104.3709 Y22.0342
G1 X104.7029 Y21.9995
G1 X105.5721 Y22.0409
G1 X105.8114 Y22.0828
G1 X106.0488 Y22.1345
G1 X106.2839 Y22.1959
G1 X106.5163 Y22.2669
G1 X106.8695 Y22.3932
G1 X107.2123 Y22.5454
G1 X107.5428 Y22.7228
G1 X107.8592 Y22.9244
G1 X108.1596 Y23.1490
G1 X108.4424 Y23.3953
G1 X108.7060 Y23.6621
G1 X108.9491 Y23.9479
G1 X109.4043 Y24.6929
G1 X109.5755 Y25.0329
G1 X109.7192 Y25.3853
G1 X109.8345 Y25.7481
G1 X109.9206 Y26.1188
G1 X109.9771 Y26.4952
G1 X110.0036 Y26.8749
G1 X109.9999 Y27.2555
G1 X109.9660 Y27.6346
G1 X109.7591 Y28.4620
G1 X109.6286 Y28.8471
G1 X109.4665 Y29.2200
G1 X109.2742 Y29.5783
G1 X109.0529 Y29.9195
G1 X108.8041 Y30.2411
G1 X108.5296 Y30.5411
G1 X108.2312 Y30.8173
G1 X107.9109 Y31.0679
G1 X107.5710 Y31.2911
G1 X107.2138 Y31.4854
G1 X106.8418 Y31.6495
G1 X106.4574 Y31.7823
G1 X105.1365 Y32.1133
G1 X104.6087 Y32.3948
G1 X104.2865 Y32.6810
G1 X90.7300 Y46.1948
G1 X90.5794 Y46.3648
G1 X90.4441 Y46.5473
G1 X90.3252 Y46.7408
G1 X90.2234 Y46.9438
G1 X90.1397 Y47.1550
G1 X90.0745 Y47.3726
G1 X90.0285 Y47.5950
G1 X90.0019 Y47.8206
G1 Y54.0002
G1 X90.0214 Y54.2496
G1 X90.0620 Y54.4964
G1 X90.1236 Y54.7389
G1 X90.2057 Y54.9751
G1 X90.3076 Y55.2036
G1 X90.4287 Y55.4224
G1 X90.5681 Y55.6301
G1 X90.7247 Y55.8252
G1 X104.2865 Y69.3451
G1 X104.6078 Y69.6307
G1 X105.1365 Y69.9128
G1 X106.6010 Y70.2789
G1 X106.9091 Y70.4010
G1 X107.2088 Y70.5425
G1 X107.4989 Y70.7029
G1 X107.7782 Y70.8813
G1 X108.0455 Y71.0772
G1 X108.2999 Y71.2897
G1 X108.5401 Y71.5181
G1 X108.7653 Y71.7612
G1 X108.9746 Y72.0182
G1 X109.1671 Y72.2880
G1 X109.3420 Y72.5696
G1 X109.4986 Y72.8617
G1 X109.7883 Y73.6896
G1 X109.8586 Y73.9240
G1 X109.9144 Y74.1624
G1 X109.9555 Y74.4037
G1 X109.9819 Y74.6471
G1 X109.9933 Y74.8916
G1 X109.9897 Y75.1364
G1 X109.9712 Y75.3805
G1 X109.9378 Y75.6230
G1 X109.7652 Y76.5309
G1 X109.6508 Y76.8416
G1 X109.5168 Y77.1443
G1 X109.3638 Y77.4379
G1 X109.1923 Y77.7210
G1 X109.0031 Y77.9927
G1 X108.7969 Y78.2517
G1 X108.5746 Y78.4970
G1 X108.3371 Y78.7277
G1 X108.0854 Y78.9427
G1 X107.8204 Y79.1412
G1 X107.5434 Y79.3223
G1 X107.2553 Y79.4854
G1 X106.3909 Y79.7883
G1 X105.9952 Y79.8913
G1 X105.5924 Y79.9615
G1 X105.1853 Y79.9985
G1 X104.7764 Y80.0020
G1 X104.3687 Y79.9720
G1 X103.9647 Y79.9088
G1 X103.5674 Y79.8127
G1 X103.1792 Y79.6844
G1 X102.8028 Y79.5248
G1 X102.4407 Y79.3348
G1 X102.0954 Y79.1159
G1 X101.7692 Y78.8694
G1 X101.4442 Y78.5434
G1 X101.1417 Y78.1963
G1 X100.8631 Y77.8298
G1 X100.6096 Y77.4455
G1 X100.5018 Y77.2500
G1 X100.4049 Y77.0490
G1 X100.3192 Y76.8429
G1 X100.2450 Y76.6324
G1 X100.1825 Y76.4181
G1 X100.1319 Y76.2007
G1 X100.0933 Y75.9809
G1 X100.0669 Y75.7592
G1 X100.0195 Y75.5536
G1 X99.9585 Y75.3516
G1 X99.8840 Y75.1541
G1 X99.7965 Y74.9621
G1 X99.6962 Y74.7764
G1 X99.5838 Y74.5978
G1 X99.4596 Y74.4272
G1 X99.3242 Y74.2653
G1 X85.6238 Y60.6071
G1 X85.4469 Y60.4680
G1 X85.2581 Y60.3454
G1 X85.0591 Y60.2403
G1 X84.8514 Y60.1535
G1 X84.6368 Y60.0858
G1 X84.4169 Y60.0378
G1 X84.1935 Y60.0097
G1 X83.9686 Y60.0019
G1 X83.5699
G1 X83.5503 Y60.0047
G1 X83.5424 Y60.0131
G1 X83.6080 Y60.0318
G1 X83.7996 Y60.0701
G1 X83.9701 Y60.1422
G1 X84.1243 Y60.2446
G1 X84.2568 Y60.3739
G1 X84.3631 Y60.5256
G1 X84.4393 Y60.6943
G1 X84.4829 Y60.8742
G1 X84.4923 Y61.0591
G1 X84.4672 Y61.2425
G1 X84.4086 Y61.4181
G1 X84.3184 Y61.5798
G1 X84.1997 Y61.7219
G1 X84.0567 Y61.8395
G1 X83.9214 Y61.9134
G1 X83.7759 Y61.9642
G1 X83.6240 Y61.9906
G1 X83.4699 Y61.9919
G1 X78.4939
G1 X78.3635 Y61.9891
G1 X78.2341 Y61.9730
G1 X78.1071 Y61.9437
G1 X77.9837 Y61.9015
G1 X77.8776 Y61.8201
G1 X77.7819 Y61.7268
G1 X77.6978 Y61.6229
G1 X77.6265 Y61.5098
G1 X77.5691 Y61.3891
G1 X77.5262 Y61.2625
G1 X77.4986 Y61.1317
G1 X77.4866 Y60.9986
G1 X77.4918 Y60.9489
G1 X77.5186 Y60.7715
G1 X77.5768 Y60.6018
G1 X77.6646 Y60.4453
G1 X77.7790 Y60.3071
G1 X77.9165 Y60.1918
G1 X78.0724 Y60.1031
G1 X78.2418 Y60.0438
G1 X78.4190 Y60.0160
G1 Y60.0040
G1 X78.4306 Y60.0079
G1 X78.1261 Y59.9927
G1 X77.8218 Y60.0105
G1 X77.5211 Y60.0612
G1 X77.2278 Y60.1441
G1 X76.9451 Y60.2583
G1 X76.6764 Y60.4024
G1 X76.4249 Y60.5748
G1 X76.1936 Y60.7734
G1 X62.6595 Y74.2653
G1 X62.5230 Y74.4287
G1 X62.3978 Y74.6010
G1 X62.2844 Y74.7813
G1 X62.1835 Y74.9688
G1 X62.0953 Y75.1627
G1 X62.0204 Y75.3621
G1 X61.9591 Y75.5660
G1 X61.9116 Y75.7736
G1 X61.8176 Y76.2146
G1 X61.6908 Y76.6473
G1 X61.5319 Y77.0693
G1 X61.3419 Y77.4782
G1 X61.1267 Y77.8317
G1 X60.8823 Y78.1656
G1 X60.6104 Y78.4775
G1 X60.3129 Y78.7651
G1 X59.9920 Y79.0264
G1 X59.6501 Y79.2594
G1 X59.2895 Y79.4625
G1 X58.9130 Y79.6341
G1 X58.5233 Y79.7731
G1 X58.1231 Y79.8785
G1 X57.7154 Y79.9494
G1 X57.3032 Y79.9853
G1 X56.4355 Y79.9858
G1 X56.3856 Y79.9833
G1 X55.9212 Y79.8885
G1 X55.4654 Y79.7585
G1 X55.0209 Y79.5941
G1 X54.5902 Y79.3962
G1 X54.2399 Y79.1787
G1 X53.9080 Y78.9339
G1 X53.5968 Y78.6634
G1 X53.3081 Y78.3689
G1 X53.0439 Y78.0523
G1 X52.8058 Y77.7156
G1 X52.5953 Y77.3610
G1 X52.4139 Y76.9907
G1 X52.2625 Y76.6071
G1 X52.1423 Y76.2126
G1 X52.0539 Y75.8098
G1 X51.9980 Y75.4013
G1 Y74.5321
G1 X52.0437 Y74.1579
G1 X52.1193 Y73.7886
G1 X52.2245 Y73.4265
G1 X52.3584 Y73.0741
G1 X52.5203 Y72.7336
G1 X52.7091 Y72.4073
G1 X52.9235 Y72.0972
G1 X53.1622 Y71.8054
G1 X53.7413 Y71.1849
G1 X54.0167 Y70.9769
G1 X54.3049 Y70.7870
G1 X54.6047 Y70.6160
G1 X54.9148 Y70.4646
G1 X55.2340 Y70.3335
G1 X55.5610 Y70.2231
G1 X55.8944 Y70.1339
G1 X56.2329 Y70.0664
G1 X56.4406 Y70.0367
G1 X56.6448 Y69.9884
G1 X56.8437 Y69.9217
G1 X57.0358 Y69.8372
G1 X57.2194 Y69.7357
G1 X57.3931 Y69.6180
G1 X57.5554 Y69.4850
G1 X57.7049 Y69.3378
G1 X71.3661 Y55.6767
G1 X71.5041 Y55.4958
G1 X71.6262 Y55.3037
G1 X71.7314 Y55.1018
G1 X71.8190 Y54.8917
G1 X71.8882 Y54.6749
G1 X71.9387 Y54.4530
G1 X71.9699 Y54.2275
G1 X71.9818 Y54.0002
G1 Y47.8206
G1 X71.9612 Y47.5928
G1 X71.9180 Y47.3682
G1 X71.8526 Y47.1490
G1 X71.7658 Y46.9373
G1 X71.6584 Y46.7354
G1 X71.5314 Y46.5452
G1 X71.3861 Y46.3685
G1 X71.2239 Y46.2072
G1 X57.7049 Y32.6882
G1 Z-2.0000
G1 X57.3759 Y32.3954 F220
G1 X56.8472 Y32.1133
G1 X55.3828 Y31.7472
G1 X54.9976 Y31.5916
G1 X54.6262 Y31.4057
G1 X54.2709 Y31.1907
G1 X53.9339 Y30.9479
G1 X53.6174 Y30.6790
G1 X53.3235 Y30.3855
G1 X53.0540 Y30.0695
G1 X52.8107 Y29.7329
G1 X52.5951 Y29.3779
G1 X52.4086 Y29.0067
G1 X52.2524 Y28.6219
G1 X52.1276 Y28.2258
G1 X52.0035 Y27.3988
G1 X51.9986 Y27.3490
G1 X51.9980 Y26.4355
G1 X52.0406 Y26.1834
G1 X52.0941 Y25.9334
G1 X52.1583 Y25.6859
G1 X52.2331 Y25.4415
G1 X52.3184 Y25.2005
G1 X52.4139 Y24.9633
G1 X52.5197 Y24.7306
G1 X52.6353 Y24.5026
G1 X53.1564 Y23.8068
G1 X53.4088 Y23.5225
G1 X53.6821 Y23.2581
G1 X53.9746 Y23.0153
G1 X54.2849 Y22.7955
G1 X54.6109 Y22.6000
G1 X54.9509 Y22.4299
G1 X55.3029 Y22.2861
G1 X55.6648 Y22.1695
G1 X56.5341 Y22.0453
G1 X56.8969 Y22.0239
G1 X57.2604 Y22.0292
G1 X57.6224 Y22.0612
G1 X57.9811 Y22.1197
G1 X58.3346 Y22.2045
G1 X58.6808 Y22.3149
G1 X59.0180 Y22.4505
G1 X59.3443 Y22.6106
G1 X59.6580 Y22.7941
G1 X59.9574 Y23.0003
G1 X60.2408 Y23.2278
G1 X60.5067 Y23.4756
G1 X60.7536 Y23.7423
G1 X60.9803 Y24.0264
G1 X61.1856 Y24.3263
G1 X61.3682 Y24.6406
G1 X61.5488 Y25.0214
G1 X61.7009 Y25.4145
G1 X61.8238 Y25.8178
G1 X61.9168 Y26.2289
G1 X62.1059 Y26.8719
G1 X62.4046 Y27.3953
G1 X62.6625 Y27.7638
G1 X76.3202 Y41.3792
G1 X76.4989 Y41.5272
G1 X76.6906 Y41.6578
G1 X76.8938 Y41.7699
G1 X77.1065 Y41.8625
G1 X77.3270 Y41.9347
G1 X77.5532 Y41.9860
G1 X77.7833 Y42.0159
G1 X78.0151 Y42.0242
G1 X78.4128
G1 X78.4306 Y42.0182
G1 X78.4190 Y42.0221
G1 Y42.0101
G1 X78.2434 Y41.9825
G1 X78.0754 Y41.9239
G1 X77.9206 Y41.8364
G1 X77.7838 Y41.7227
G1 X77.6695 Y41.5864
G1 X77.5814 Y41.4319
G1 X77.5221 Y41.2642
G1 X77.4938 Y41.0886
G1 X77.4874 Y41.0391
G1 X77.4860 Y40.9891
G1 X77.5014 Y40.8573
G1 X77.5326 Y40.7283
G1 X77.5792 Y40.6040
G1 X77.6404 Y40.4863
G1 X77.7153 Y40.3767
G1 X77.8029 Y40.2770
G1 X77.9019 Y40.1886
G1 X78.0108 Y40.1128
G1 X78.1312 Y40.0632
G1 X78.2561 Y40.0263
G1 X78.3841 Y40.0025
G1 X78.5139 Y39.9919
G1 X83.4899
G1 X83.6586 Y40.0112
G1 X83.8215 Y40.0594
G1 X83.9735 Y40.1351
G1 X84.1101 Y40.2361
G1 X84.2224 Y40.3376
G1 X84.3180 Y40.4550
G1 X84.3947 Y40.5857
G1 X84.4505 Y40.7264
G1 X84.4844 Y40.8740
G1 X84.4953 Y41.0250
G1 X84.4832 Y41.1760
G1 X84.4483 Y41.3233
G1 X84.3913 Y41.4636
G1 X84.3137 Y41.5936
G1 X84.2172 Y41.7103
G1 X84.1040 Y41.8110
G1 X83.9769 Y41.8932
G1 X83.8388 Y41.9552
G1 X83.6928 Y41.9954
G1 X83.5424 Y42.0130
G1 X83.5503 Y42.0214
G1 X83.6910 Y42.0355
G1 X83.8324 Y42.0352
G1 X83.9731 Y42.0205
G1 X84.1115 Y41.9915
G1 X84.3446 Y41.9683
G1 X84.5746 Y41.9243
G1 X84.7998 Y41.8597
G1 X85.0182 Y41.7751
G1 X85.2281 Y41.6711
G1 X85.4278 Y41.5488
G1 X85.6156 Y41.4089
G1 X85.7902 Y41.2527
G1 X99.3213 Y27.7638
G1 X99.5792 Y27.3953
G1 X99.8767 Y26.8746
G1 X100.0664 Y26.2310
G1 X100.2314 Y25.4060
G1 X100.2436 Y25.3575
G1 X100.4354 Y24.9249
G1 X100.6600 Y24.5085
G1 X100.9162 Y24.1107
G1 X101.2023 Y23.7338
G1 X101.4310 Y23.4907
G1 X101.6750 Y23.2628
G1 X101.9332 Y23.0512
G1 X102.2046 Y22.8568
G1 X102.4879 Y22.6803
G1 X102.7821 Y22.5225
G1 X103.0859 Y22.3840
G1 X103.3979 Y22.2655
G1 X103.7170 Y22.1675
G1 X104.0418 Y22.0902
G1 X104.3709 Y22.0342
G1 X104.7029 Y21.9995
G1 X105.5721 Y22.0409
G1 X105.8114 Y22.0828
G1 X106.0488 Y22.1345
G1 X106.2839 Y22.1959
G1 X106.5163 Y22.2669
G1 X106.8695 Y22.3932
G1 X107.2123 Y22.5454
G1 X107.5428 Y22.7228
G1 X107.8592 Y22.9244
G1 X108.1596 Y23.1490
G1 X108.4424 Y23.3953
G1 X108.7060 Y23.6621
G1 X108.9491 Y23.9479
G1 X109.4043 Y24.6929
G1 X109.5755 Y25.0329
G1 X109.7192 Y25.3853
G1 X109.8345 Y25.7481
G1 X109.9206 Y26.1188
G1 X109.9771 Y26.4952
G1 X110.0036 Y26.8749
G1 X109.9999 Y27.2555
G1 X109.9660 Y27.6346
G1 X109.7591 Y28.4620
G1 X109.6286 Y28.8471
G1 X109.4665 Y29.2200
G1 X109.2742 Y29.5783
G1 X109.0529 Y29.9195
G1 X108.8041 Y30.2411
G1 X108.5296 Y30.5411
G1 X108.2312 Y30.8173
G1 X107.9109 Y31.0679
G1 X107.5710 Y31.2911
G1 X107.2138 Y31.4854
G1 X106.8418 Y31.6495
G1 X106.4574 Y31.7823
G1 X105.1365 Y32.1133
G1 X104.6087 Y32.3948
G1 X104.2865 Y32.6810
G1 X90.7300 Y46.1948
G1 X90.5794 Y46.3648
G1 X90.4441 Y46.5473
G1 X90.3252 Y46.7408
G1 X90.2234 Y46.9438
G1 X90.1397 Y47.1550
G1 X90.0745 Y47.3726
G1 X90.0285 Y47.5950
G1 X90.0019 Y47.8206
G1 Y54.0002
G1 X90.0214 Y54.2496
G1 X90.0620 Y54.4964
G1 X90.1236 Y54.7389
G1 X90.2057 Y54.9751
G1 X90.3076 Y55.2036
G1 X90.4287 Y55.4224
G1 X90.5681 Y55.6301
G1 X90.7247 Y55.8252
G1 X104.2865 Y69.3451
G1 X104.6078 Y69.6307
G1 X105.1365 Y69.9128
G1 X106.6010 Y70.2789
G1 X106.9091 Y70.4010
G1 X107.2088 Y70.5425
G1 X107.4989 Y70.7029
G1 X107.7782 Y70.8813
G1 X108.0455 Y71.0772
G1 X108.2999 Y71.2897
G1 X108.5401 Y71.5181
G1 X108.7653 Y71.7612
G1 X108.9746 Y72.0182
G1 X109.1671 Y72.2880
G1 X109.3420 Y72.5696
G1 X109.4986 Y72.8617
G1 X109.7883 Y73.6896
G1 X109.8586 Y73.9240
G1 X109.9144 Y74.1624
G1 X109.9555 Y74.4037
G1 X109.9819 Y74.6471
G1 X109.9933 Y74.8916
G1 X109.9897 Y75.1364
G1 X109.9712 Y75.3805
G1 X109.9378 Y75.6230
G1 X109.7652 Y76.5309
G1 X109.6508 Y76.8416
G1 X109.5168 Y77.1443
G1 X109.3638 Y77.4379
G1 X109.1923 Y77.7210
G1 X109.0031 Y77.9927
G1 X108.7969 Y78.2517
G1 X108.5746 Y78.4970
G1 X108.3371 Y78.7277
G1 X108.0854 Y78.9427
G1 X107.8204 Y79.1412
G1 X107.5434 Y79.3223
G1 X107.2553 Y79.4854
G1 X106.3909 Y79.7883
G1 X105.9952 Y79.8913
G1 X105.5924 Y79.9615
G1 X105.1853 Y79.9985
G1 X104.7764 Y80.0020
G1 X104.3687 Y79.9720
G1 X103.9647 Y79.9088
G1 X103.5674 Y79.8127
G1 X103.1792 Y79.6844
G1 X102.8028 Y79.5248
G1 X102.4407 Y79.3348
G1 X102.0954 Y79.1159
G1 X101.7692 Y78.8694
G1 X101.4442 Y78.5434
G1 X101.1417 Y78.1963
G1 X100.8631 Y77.8298
G1 X100.6096 Y77.4455
G1 X100.5018 Y77.2500
G1 X100.4049 Y77.0490
G1 X100.3192 Y76.8429
G1 X100.2450 Y76.6324
G1 X100.1825 Y76.4181
G1 X100.1319 Y76.2007
G1 X100.0933 Y75.9809
G1 X100.0669 Y75.7592
G1 X100.0195 Y75.5536
G1 X99.9585 Y75.3516
G1 X99.8840 Y75.1541
G1 X99.7965 Y74.9621
G1 X99.6962 Y74.7764
G1 X99.5838 Y74.5978
G1 X99.4596 Y74.4272
G1 X99.3242 Y74.2653
G1 X85.6238 Y60.6071
G1 X85.4469 Y60.4680
G1 X85.2581 Y60.3454
G1 X85.0591 Y60.2403
G1 X84.8514 Y60.1535
G1 X84.6368 Y60.0858
G1 X84.4169 Y60.0378
G1 X84.1935 Y60.0097
G1 X83.9686 Y60.0019
G1 X83.5699
G1 X83.5503 Y60.0047
G1 X83.5424 Y60.0131
G1 X83.6080 Y60.0318
G1 X83.7996 Y60.0701
G1 X83.9701 Y60.1422
G1 X84.1243 Y60.2446
G1 X84.2568 Y60.3739
G1 X84.3631 Y60.5256
G1 X84.4393 Y60.6943
G1 X84.4829 Y60.8742
G1 X84.4923 Y61.0591
G1 X84.4672 Y61.2425
G1 X84.4086 Y61.4181
G1 X84.3184 Y61.5798
G1 X84.1997 Y61.7219
G1 X84.0567 Y61.8395
G1 X83.9214 Y61.9134
G1 X83.7759 Y61.9642
G1 X83.6240 Y61.9906
G1 X83.4699 Y61.9919
G1 X78.4939
G1 X78.3635 Y61.9891
G1 X78.2341 Y61.9730
G1 X78.1071 Y61.9437
G1 X77.9837 Y61.9015
G1 X77.8776 Y61.8201
G1 X77.7819 Y61.7268
G1 X77.6978 Y61.6229
G1 X77.6265 Y61.5098
G1 X77.5691 Y61.3891
G1 X77.5262 Y61.2625
G1 X77.4986 Y61.1317
G1 X77.4866 Y60.9986
G1 X77.4918 Y60.9489
G1 X77.5186 Y60.7715
G1 X77.5768 Y60.6018
G1 X77.6646 Y60.4453
G1 X77.7790 Y60.3071
G1 X77.9165 Y60.1918
G1 X78.0724 Y60.1031
G1 X78.2418 Y60.0438
G1 X78.4190 Y60.0160
G1 Y60.0040
G1 X78.4306 Y60.0079
G1 X78.1261 Y59.9927
G1 X77.8218 Y60.0105
G1 X77.5211 Y60.0612
G1 X77.2278 Y60.1441
G1 X76.9451 Y60.2583
G1 X76.6764 Y60.4024
G1 X76.4249 Y60.5748
G1 X76.1936 Y60.7734
G1 X62.6595 Y74.2653
G1 X62.5230 Y74.4287
G1 X62.3978 Y74.6010
G1 X62.2844 Y74.7813
G1 X62.1835 Y74.9688
G1 X62.0953 Y75.1627
G1 X62.0204 Y75.3621
G1 X61.9591 Y75.5660
G1 X61.9116 Y75.7736
G1 X61.8176 Y76.2146
G1 X61.6908 Y76.6473
G1 X61.5319 Y77.0693
G1 X61.3419 Y77.4782
G1 X61.1267 Y77.8317
G1 X60.8823 Y78.1656
G1 X60.6104 Y78.4775
G1 X60.3129 Y78.7651
G1 X59.9920 Y79.0264
G1 X59.6501 Y79.2594
G1 X59.2895 Y79.4625
G1 X58.9130 Y79.6341
G1 X58.5233 Y79.7731
G1 X58.1231 Y79.8785
G1 X57.7154 Y79.9494
G1 X57.3032 Y79.9853
G1 X56.4355 Y79.9858
G1 X56.3856 Y79.9833
G1 X55.9212 Y79.8885
G1 X55.4654 Y79.7585
G1 X55.0209 Y79.5941
G1 X54.5902 Y79.3962
G1 X54.2399 Y79.1787
G1 X53.9080 Y78.9339
G1 X53.5968 Y78.6634
G1 X53.3081 Y78.3689
G1 X53.0439 Y78.0523
G1 X52.8058 Y77.7156
G1 X52.5953 Y77.3610
G1 X52.4139 Y76.9907
G1 X52.2625 Y76.6071
G1 X52.1423 Y76.2126
G1 X52.0539 Y75.8098
G1 X51.9980 Y75.4013
G1 Y74.5321
G1 X52.0437 Y74.1579
G1 X52.1193 Y73.7886
G1 X52.2245 Y73.4265
G1 X52.3584 Y73.0741
G1 X52.5203 Y72.7336
G1 X52.7091 Y72.4073
G1 X52.9235 Y72.0972
G1 X53.1622 Y71.8054
G1 X53.7413 Y71.1849
G1 X54.0167 Y70.9769
G1 X54.3049 Y70.7870
G1 X54.6047 Y70.6160
G1 X54.9148 Y70.4646
G1 X55.2340 Y70.3335
G1 X55.5610 Y70.2231
G1 X55.8944 Y70.1339
G1 X56.2329 Y70.0664
G1 X56.4406 Y70.0367
G1 X56.6448 Y69.9884
G1 X56.8437 Y69.9217
G1 X57.0358 Y69.8372
G1 X57.2194 Y69.7357
G1 X57.3931 Y69.6180
G1 X57.5554 Y69.4850
G1 X57.7049 Y69.3378
G1 X71.3661 Y55.6767
G1 X71.5041 Y55.4958
G1 X71.6262 Y55.3037
G1 X71.7314 Y55.1018
G1 X71.8190 Y54.8917
G1 X71.8882 Y54.6749
G1 X71.9387 Y54.4530
G1 X71.9699 Y54.2275
G1 X71.9818 Y54.0002
G1 Y47.8206
G1 X71.9612 Y47.5928
G1 X71.9180 Y47.3682
G1 X71.8526 Y47.1490
G1 X71.7658 Y46.9373
G1 X71.6584 Y46.7354
G1 X71.5314 Y46.5452
G1 X71.3861 Y46.3685
G1 X71.2239 Y46.2072
G1 X57.7049 Y32.6882
G1 Z-2.7000 F120
G1 X57.3759 Y32.3954 F120
G1 X56.8472 Y32.1133
G1 X55.3828 Y31.7472
G1 X54.9976 Y31.5916
G1 X54.6262 Y31.4057
G1 X54.2709 Y31.1907
G1 X53.9339 Y30.9479
G1 X53.6174 Y30.6790
G1 X53.3235 Y30.3855
G1 X53.0540 Y30.0695
G1 X52.8107 Y29.7329
G1 X52.5951 Y29.3779
G1 X52.4086 Y29.0067
G1 X52.2524 Y28.6219
G1 X52.1276 Y28.2258
G1 X52.0035 Y27.3988
G1 X51.9986 Y27.3490
G1 X51.9980 Y26.4355
G1 X52.0406 Y26.1834
G1 X52.0941 Y25.9334
G1 X52.1583 Y25.6859
G1 X52.2331 Y25.4415
G1 X52.3184 Y25.2005
G1 X52.4139 Y24.9633
G1 X52.5197 Y24.7306
G1 X52.6353 Y24.5026
G1 X53.1564 Y23.8068
G1 X53.4088 Y23.5225
G1 X53.6821 Y23.2581
G1 X53.9746 Y23.0153
G1 X54.2849 Y22.7955
G1 X54.6109 Y22.6000
G1 X54.9509 Y22.4299
G1 X55.3029 Y22.2861
G1 X55.6648 Y22.1695
G1 X56.5341 Y22.0453
G1 X56.8969 Y22.0239
G1 X57.2604 Y22.0292
G1 X57.6224 Y22.0612
G1 X57.9811 Y22.1197
G1 X58.3346 Y22.2045
G1 X58.6808 Y22.3149
G1 X59.0180 Y22.4505
G1 X59.3443 Y22.6106
G1 X59.6580 Y22.7941
G1 X59.9574 Y23.0003
G1 X60.2408 Y23.2278
G1 X60.5067 Y23.4756
G1 X60.7536 Y23.7423
G1 X60.9803 Y24.0264
G1 X61.1856 Y24.3263
G1 X61.3682 Y24.6406
G1 X61.5488 Y25.0214
G1 X61.7009 Y25.4145
G1 X61.8238 Y25.8178
G1 X61.9168 Y26.2289
G1 X62.1059 Y26.8719
G1 X62.4046 Y27.3953
G1 X62.6625 Y27.7638
G1 X76.3202 Y41.3792
G1 X76.4989 Y41.5272
G1 X76.6906 Y41.6578
G1 X76.8938 Y41.7699
G1 X77.1065 Y41.8625
G1 X77.3270 Y41.9347
G1 X77.5532 Y41.9860
G1 X77.7833 Y42.0159
G1 X78.0151 Y42.0242
G1 X78.4128
G1 X78.4306 Y42.0182
G1 X78.4190 Y42.0221
G1 Y42.0101
G1 X78.2434 Y41.9825
G1 X78.0754 Y41.9239
G1 X77.9206 Y41.8364
G1 X77.7838 Y41.7227
G1 X77.6695 Y41.5864
G1 X77.5814 Y41.4319
G1 X77.5221 Y41.2642
G1 X77.4938 Y41.0886
G1 X77.4874 Y41.0391
G1 X77.4860 Y40.9891
G1 X77.5014 Y40.8573
G1 X77.5326 Y40.7283
G1 X77.5792 Y40.6040
G1 X77.6404 Y40.4863
G1 X77.7153 Y40.3767
G1 X77.8029 Y40.2770
G1 X77.9019 Y40.1886
G1 X78.0108 Y40.1128
G1 X78.1312 Y40.0632
G1 X78.2561 Y40.0263
G1 X78.3841 Y40.0025
G1 X78.5139 Y39.9919
G1 X83.4899
G1 X83.6586 Y40.0112
G1 X83.8215 Y40.0594
G1 X83.9735 Y40.1351
G1 X84.1101 Y40.2361
G1 X84.2224 Y40.3376
G1 X84.3180 Y40.4550
G1 X84.3947 Y40.5857
G1 X84.4505 Y40.7264
G1 X84.4844 Y40.8740
G1 X84.4953 Y41.0250
G1 X84.4832 Y41.1760
G1 X84.4483 Y41.3233
G1 X84.3913 Y41.4636
G1 X84.3137 Y41.5936
G1 X84.2172 Y41.7103
G1 X84.1040 Y41.8110
G1 X83.9769 Y41.8932
G1 X83.8388 Y41.9552
G1 X83.6928 Y41.9954
G1 X83.5424 Y42.0130
G1 X83.5503 Y42.0214
G1 X83.6910 Y42.0355
G1 X83.8324 Y42.0352
G1 X83.9731 Y42.0205
G1 X84.1115 Y41.9915
G1 X84.3446 Y41.9683
G1 X84.5746 Y41.9243
G1 X84.7998 Y41.8597
G1 X85.0182 Y41.7751
G1 X85.2281 Y41.6711
G1 X85.4278 Y41.5488
G1 X85.6156 Y41.4089
G1 X85.7902 Y41.2527
G1 X99.3213 Y27.7638
G1 X99.5792 Y27.3953
G1 X99.8767 Y26.8746
G1 X100.0664 Y26.2310
G1 X100.2314 Y25.4060
G1 X100.2436 Y25.3575
G1 X100.4354 Y24.9249
G1 X100.6600 Y24.5085
G1 X100.9162 Y24.1107
G1 X101.2023 Y23.7338
G1 X101.4310 Y23.4907
G1 X101.6750 Y23.2628
G1 X101.9332 Y23.0512
G1 X102.2046 Y22.8568
G1 X102.4879 Y22.6803
G1 X102.7821 Y22.5225
G1 X103.0859 Y22.3840
G1 X103.3979 Y22.2655
G1 X103.7170 Y22.1675
G1 X104.0418 Y22.0902
G1 X104.3709 Y22.0342
G1 X104.7029 Y21.9995
G1 X105.5721 Y22.0409
G1 X105.8114 Y22.0828
G1 X106.0488 Y22.1345
G1 X106.2839 Y22.1959
G1 X106.5163 Y22.2669
G1 X106.8695 Y22.3932
G1 X107.2123 Y22.5454
G1 X107.5428 Y22.7228
G1 X107.8592 Y22.9244
G1 X108.1596 Y23.1490
G1 X108.4424 Y23.3953
G1 X108.7060 Y23.6621
G1 X108.9491 Y23.9479
G1 X109.4043 Y24.6929
G1 X109.5755 Y25.0329
G1 X109.7192 Y25.3853
G1 X109.8345 Y25.7481
G1 X109.9206 Y26.1188
G1 X109.9771 Y26.4952
G1 X110.0036 Y26.8749
G1 X109.9999 Y27.2555
G1 X109.9660 Y27.6346
G1 X109.7591 Y28.4620
G1 X109.6286 Y28.8471
G1 X109.4665 Y29.2200
G1 X109.2742 Y29.5783
G1 X109.0529 Y29.9195
G1 X108.8041 Y30.2411
G1 X108.5296 Y30.5411
G1 X108.2312 Y30.8173
G1 X107.9109 Y31.0679
G1 X107.5710 Y31.2911
G1 X107.2138 Y31.4854
G1 X106.8418 Y31.6495
G1 X106.4574 Y31.7823
G1 X105.1365 Y32.1133
G1 X104.6087 Y32.3948
G1 X104.2865 Y32.6810
G1 X90.7300 Y46.1948
G1 X90.5794 Y46.3648
G1 X90.4441 Y46.5473
G1 X90.3252 Y46.7408
G1 X90.2234 Y46.9438
G1 X90.1397 Y47.1550
G1 X90.0745 Y47.3726
G1 X90.0285 Y47.5950
G1 X90.0019 Y47.8206
G1 Y54.0002
G1 X90.0214 Y54.2496
G1 X90.0620 Y54.4964
G1 X90.1236 Y54.7389
G1 X90.2057 Y54.9751
G1 X90.3076 Y55.2036
G1 X90.4287 Y55.4224
G1 X90.5681 Y55.6301
G1 X90.7247 Y55.8252
G1 X104.2865 Y69.3451
G1 X104.6078 Y69.6307
G1 X105.1365 Y69.9128
G1 X106.6010 Y70.2789
G1 X106.9091 Y70.4010
G1 X107.2088 Y70.5425
G1 X107.4989 Y70.7029
G1 X107.7782 Y70.8813
G1 X108.0455 Y71.0772
G1 X108.2999 Y71.2897
G1 X108.5401 Y71.5181
G1 X108.7653 Y71.7612
G1 X108.9746 Y72.0182
G1 X109.1671 Y72.2880
G1 X109.3420 Y72.5696
G1 X109.4986 Y72.8617
G1 X109.7883 Y73.6896
G1 X109.8586 Y73.9240
G1 X109.9144 Y74.1624
G1 X109.9555 Y74.4037
G1 X109.9819 Y74.6471
G1 X109.9933 Y74.8916
G1 X109.9897 Y75.1364
G1 X109.9712 Y75.3805
G1 X109.9378 Y75.6230
G1 X109.7652 Y76.5309
G1 X109.6508 Y76.8416
G1 X109.5168 Y77.1443
G1 X109.3638 Y77.4379
G1 X109.1923 Y77.7210
G1 X109.0031 Y77.9927
G1 X108.7969 Y78.2517
G1 X108.5746 Y78.4970
G1 X108.3371 Y78.7277
G1 X108.0854 Y78.9427
G1 X107.8204 Y79.1412
G1 X107.5434 Y79.3223
G1 X107.2553 Y79.4854
G1 X106.3909 Y79.7883
G1 X105.9952 Y79.8913
G1 X105.5924 Y79.9615
G1 X105.1853 Y79.9985
G1 X104.7764 Y80.0020
G1 X104.3687 Y79.9720
G1 X103.9647 Y79.9088
G1 X103.5674 Y79.8127
G1 X103.1792 Y79.6844
G1 X102.8028 Y79.5248
G1 X102.4407 Y79.3348
G1 X102.0954 Y79.1159
G1 X101.7692 Y78.8694
G1 X101.4442 Y78.5434
G1 X101.1417 Y78.1963
G1 X100.8631 Y77.8298
G1 X100.6096 Y77.4455
G1 X100.5018 Y77.2500
G1 X100.4049 Y77.0490
G1 X100.3192 Y76.8429
G1 X100.2450 Y76.6324
G1 X100.1825 Y76.4181
G1 X100.1319 Y76.2007
G1 X100.0933 Y75.9809
G1 X100.0669 Y75.7592
G1 X100.0195 Y75.5536
G1 X99.9585 Y75.3516
G1 X99.8840 Y75.1541
G1 X99.7965 Y74.9621
G1 X99.6962 Y74.7764
G1 X99.5838 Y74.5978
G1 X99.4596 Y74.4272
G1 X99.3242 Y74.2653
G1 X85.6238 Y60.6071
G1 X85.4469 Y60.4680
G1 X85.2581 Y60.3454
G1 X85.0591 Y60.2403
G1 X84.8514 Y60.1535
G1 X84.6368 Y60.0858
G1 X84.4169 Y60.0378
G1 X84.1935 Y60.0097
G1 X83.9686 Y60.0019
G1 X83.5699
G1 X83.5503 Y60.0047
G1 X83.5424 Y60.0131
G1 X83.6080 Y60.0318
G1 X83.7996 Y60.0701
G1 X83.9701 Y60.1422
G1 X84.1243 Y60.2446
G1 X84.2568 Y60.3739
G1 X84.3631 Y60.5256
G1 X84.4393 Y60.6943
G1 X84.4829 Y60.8742
G1 X84.4923 Y61.0591
G1 X84.4672 Y61.2425
G1 X84.4086 Y61.4181
G1 X84.3184 Y61.5798
G1 X84.1997 Y61.7219
G1 X84.0567 Y61.8395
G1 X83.9214 Y61.9134
G1 X83.7759 Y61.9642
G1 X83.6240 Y61.9906
G1 X83.4699 Y61.9919
G1 X78.4939
G1 X78.3635 Y61.9891
G1 X78.2341 Y61.9730
G1 X78.1071 Y61.9437
G1 X77.9837 Y61.9015
G1 X77.8776 Y61.8201
G1 X77.7819 Y61.7268
G1 X77.6978 Y61.6229
G1 X77.6265 Y61.5098
G1 X77.5691 Y61.3891
G1 X77.5262 Y61.2625
G1 X77.4986 Y61.1317
G1 X77.4866 Y60.9986
G1 X77.4918 Y60.9489
G1 X77.5186 Y60.7715
G1 X77.5768 Y60.6018
G1 X77.6646 Y60.4453
G1 X77.7790 Y60.3071
G1 X77.9165 Y60.1918
G1 X78.0724 Y60.1031
G1 X78.2418 Y60.0438
G1 X78.4190 Y60.0160
G1 Y60.0040
G1 X78.4306 Y60.0079
G1 X78.1261 Y59.9927
G1 X77.8218 Y60.0105
G1 X77.5211 Y60.0612
G1 X77.2278 Y60.1441
G1 X76.9451 Y60.2583
G1 X76.6764 Y60.4024
G1 X76.4249 Y60.5748
G1 X76.1936 Y60.7734
G1 X62.6595 Y74.2653
G1 X62.5230 Y74.4287
G1 X62.3978 Y74.6010
G1 X62.2844 Y74.7813
G1 X62.1835 Y74.9688
G1 X62.0953 Y75.1627
G1 X62.0204 Y75.3621
G1 X61.9591 Y75.5660
G1 X61.9116 Y75.7736
G1 X61.8176 Y76.2146
G1 X61.6908 Y76.6473
G1 X61.5319 Y77.0693
G1 X61.3419 Y77.4782
G1 X61.1267 Y77.8317
G1 X60.8823 Y78.1656
G1 X60.6104 Y78.4775
G1 X60.3129 Y78.7651
G1 X59.9920 Y79.0264
G1 X59.6501 Y79.2594
G1 X59.2895 Y79.4625
G1 X58.9130 Y79.6341
G1 X58.5233 Y79.7731
G1 X58.1231 Y79.8785
G1 X57.7154 Y79.9494
G1 X57.3032 Y79.9853
G1 X56.4355 Y79.9858
G1 X56.3856 Y79.9833
G1 X55.9212 Y79.8885
G1 X55.4654 Y79.7585
G1 X55.0209 Y79.5941
G1 X54.5902 Y79.3962
G1 X54.2399 Y79.1787
G1 X53.9080 Y78.9339
G1 X53.5968 Y78.6634
G1 X53.3081 Y78.3689
G1 X53.0439 Y78.0523
G1 X52.8058 Y77.7156
G1 X52.5953 Y77.3610
G1 X52.4139 Y76.9907
G1 X52.2625 Y76.6071
G1 X52.1423 Y76.2126
G1 X52.0539 Y75.8098
G1 X51.9980 Y75.4013
G1 Y74.5321
G1 X52.0437 Y74.1579
G1 X52.1193 Y73.7886
G1 X52.2245 Y73.4265
G1 X52.3584 Y73.0741
G1 X52.5203 Y72.7336
G1 X52.7091 Y72.4073
G1 X52.9235 Y72.0972
G1 X53.1622 Y71.8054
G1 X53.7413 Y71.1849
G1 X54.0167 Y70.9769
G1 X54.3049 Y70.7870
G1 X54.6047 Y70.6160
G1 X54.9148 Y70.4646
G1 X55.2340 Y70.3335
G1 X55.5610 Y70.2231
G1 X55.8944 Y70.1339
G1 X56.2329 Y70.0664
G1 X56.4406 Y70.0367
G1 X56.6448 Y69.9884
G1 X56.8437 Y69.9217
G1 X57.0358 Y69.8372
G1 X57.2194 Y69.7357
G1 X57.3931 Y69.6180
G1 X57.5554 Y69.4850
G1 X57.7049 Y69.3378
G1 X71.3661 Y55.6767
G1 X71.5041 Y55.4958
G1 X71.6262 Y55.3037
G1 X71.7314 Y55.1018
G1 X71.8190 Y54.8917
G1 X71.8882 Y54.6749
G1 X71.9387 Y54.4530
G1 X71.9699 Y54.2275
G1 X71.9818 Y54.0002
G1 Y47.8206
G1 X71.9612 Y47.5928
G1 X71.9180 Y47.3682
G1 X71.8526 Y47.1490
G1 X71.7658 Y46.9373
G1 X71.6584 Y46.7354
G1 X71.5314 Y46.5452
G1 X71.3861 Y46.3685
G1 X71.2239 Y46.2072
G1 X57.7049 Y32.6882
G0 Z1.0000 F500
G0 X0.0000 Y0.0000 F3000

M05
;M84; disable steppers
