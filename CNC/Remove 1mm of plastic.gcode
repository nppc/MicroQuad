;Project QuadMicroCNC - Copy
;Created by Estlcam version 10 build 10,037
;Machining time about 00:12:13 hours

G90
M03 S24000
G1 X52 Y12 F4000
G1 Z0 ; premove
M84 Z
M00; wait to confirm everything is aligned
M17
;G92 X Y Z
G0 Z1.0000 F500


;No. 1: Part 1
G0 X49.6714 Y18.8463 F3000
G0 Z0.5000 F500
G1 Z-1.0000 F120 S24000
G1 X112.7755 F240
G1 X113.6496 Y20.6463
G1 X48.8000
G1 Y22.4463
G1 X113.6496
G1 Y24.2463
G1 X48.8000
G1 Y26.0463
G1 X113.6496
G1 Y27.8463
G1 X48.8000
G1 Y29.6463
G1 X113.6496
G1 Y31.4463
G1 X48.8000
G1 Y33.2463
G1 X113.6496
G1 Y35.0463
G1 X48.8000
G1 Y36.8463
G1 X113.6496
G1 Y38.6463
G1 X48.8000
G1 Y40.4463
G1 X113.6496
G1 Y42.2463
G1 X48.8000
G1 Y44.0463
G1 X113.6496
G1 Y45.8463
G1 X48.8000
G1 Y47.6463
G1 X113.6496
G1 Y49.4463
G1 X48.8000
G1 Y51.2463
G1 X113.6496
G1 Y53.0463
G1 X48.8000
G1 Y54.8463
G1 X113.6496
G1 Y56.6463
G1 X48.8000
G1 Y58.4463
G1 X113.6496
G1 Y60.2463
G1 X48.8000
G1 Y62.0463
G1 X113.6496
G1 Y63.8463
G1 X48.8000
G1 Y65.6463
G1 X113.6496
G1 Y67.4463
G1 X48.8000
G1 Y69.2463
G1 X113.6496
G1 Y71.0463
G1 X48.8000
G1 Y72.8463
G1 X113.6496
G1 Y74.6463
G1 X48.8000
G1 Y76.4463
G1 X113.6496
G1 Y78.2463
G1 X48.8000
G1 Y80.0463
G1 X113.6496
G1 Y81.8463
G1 X48.8000
G1 X49.6741 Y83.6463
G1 X112.7782
G0 Z1.0000 F500
G0 Z0.5000
G1 Z-1.0000 F120
G1 X112.8727 Y83.9306 F240
G1 X112.7640 Y83.9589
G1 X112.6535 Y83.9787
G1 X112.5418 Y83.9900
G1 X112.4296 Y83.9925
G1 X50.0000
G1 X49.8130 Y83.9808
G1 X49.6289 Y83.9459
G1 X49.4506 Y83.8883
G1 X49.2809 Y83.8089
G1 X49.1224 Y83.7090
G1 X48.9775 Y83.5901
G1 X48.8487 Y83.4540
G1 X48.7378 Y83.3030
G1 X48.6466 Y83.1393
G1 X48.5765 Y82.9655
G1 X48.5287 Y82.7843
G1 X48.5038 Y82.5986
G1 X48.5000 Y82.4725
G1 Y20.0000
G1 X48.5075 Y19.8502
G1 X48.5374 Y19.6673
G1 X48.5896 Y19.4894
G1 X48.6634 Y19.3193
G1 X48.7576 Y19.1596
G1 X48.8707 Y19.0127
G1 X49.0011 Y18.8810
G1 X49.1468 Y18.7663
G1 X49.3055 Y18.6704
G1 X49.4748 Y18.5949
G1 X49.6522 Y18.5408
G1 X49.8348 Y18.5090
G1 X50.0200 Y18.5000
G1 X112.4496
G1 X112.6470 Y18.5131
G1 X112.8410 Y18.5520
G1 X113.0282 Y18.6161
G1 X113.2054 Y18.7043
G1 X113.3693 Y18.8151
G1 X113.5173 Y18.9465
G1 X113.6467 Y19.0962
G1 X113.7553 Y19.2616
G1 X113.8411 Y19.4399
G1 X113.9028 Y19.6279
G1 X113.9392 Y19.8224
G1 X113.9496 Y20.0200
G1 Y82.4925
G1 X113.9304 Y82.7323
G1 X113.8731 Y82.9660
G1 X113.7791 Y83.1875
G1 X113.6508 Y83.3910
G1 X113.4916 Y83.5714
G1 X113.3055 Y83.7239
G1 X113.0974 Y83.8447
G1 X112.8727 Y83.9306
G1 X112.7782 Y83.6463
G0 Z1.0000 F500
G0 X0.0000 Y0.0000 F3000

M05
;M84; disable steppers