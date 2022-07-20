@echo off

title Instalador de Servidores para Minecraft

:init
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Estas en el Menu Principal
echo(
echo (I) Instalar un Servidor
echo (L) Lista de Versiones
echo (D) Modo Debug
echo (A) Acerca de
echo (S) Salir
echo(
set /P menu=Elige una de las opciones = 
if /I "%menu%" EQU "I" goto :version
if /I "%menu%" EQU "L" goto :vslist
if /I "%menu%" EQU "D" goto :dbmode
if /I "%menu%" EQU "A" goto :about
if /I "%menu%" EQU "S" goto :exit
goto :init

:version
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Puedes volver al Menu Principal con "N", o
set /P version=Escribe la Version de Minecraft para tu nuevo Servidor= 
if /I "%version%" EQU "N" goto :init
if /I "%version%" EQU "1.2.1" set version=1.2.1& set link=https://assets.minecraft.net/1_2/minecraft_server.jar& goto :install
if /I "%version%" EQU "1.2.2" set version=1.2.2& set link=https://assets.minecraft.net/1_2/minecraft_server.jar& goto :install
if /I "%version%" EQU "1.2.3" set version=1.2.3& set link=https://assets.minecraft.net/1_2/minecraft_server.jar& goto :install
if /I "%version%" EQU "1.2.4" set version=1.2.4& set link=https://assets.minecraft.net/1_2_5/minecraft_server.jar& goto :install
if /I "%version%" EQU "1.2.5" set version=1.2.5& set link=https://launcher.mojang.com/v1/objects/d8321edc9470e56b8ad5c67bbd16beba25843336/server.jar& goto :install
if /I "%version%" EQU "1.3.1" set version=1.3.1& set link=https://launcher.mojang.com/v1/objects/82563ce498bfc1fc8a2cb5bf236f7da86a390646/server.jar& goto :install
if /I "%version%" EQU "1.3.2" set version=1.3.2& set link=https://launcher.mojang.com/v1/objects/3de2ae6c488135596e073a9589842800c9f53bfe/server.jar& goto :install
if /I "%version%" EQU "1.4.2" set version=1.4.2& set link=https://launcher.mojang.com/v1/objects/5be700523a729bb78ef99206fb480a63dcd09825/server.jar& goto :install
if /I "%version%" EQU "1.4.4" set version=1.4.4& set link=https://launcher.mojang.com/v1/objects/4215dcadb706508bf9d6d64209a0080b9cee9e71/server.jar& goto :install
if /I "%version%" EQU "1.4.5" set version=1.4.5& set link=https://launcher.mojang.com/v1/objects/c12fd88a8233d2c517dbc8196ba2ae855f4d36ea/server.jar& goto :install
if /I "%version%" EQU "1.4.6" set version=1.4.6& set link=https://launcher.mojang.com/v1/objects/a0aeb5709af5f2c3058c1cf0dc6b110a7a61278c/server.jar& goto :install
if /I "%version%" EQU "1.4.7" set version=1.4.7& set link=https://launcher.mojang.com/v1/objects/2f0ec8efddd2f2c674c77be9ddb370b727dec676/server.jar& goto :install
if /I "%version%" EQU "1.5.1" set version=1.5.1& set link=https://launcher.mojang.com/v1/objects/d07c71ee2767dabb79fb32dad8162e1b854d5324/server.jar& goto :install
if /I "%version%" EQU "1.5.2" set version=1.5.2& set link=https://launcher.mojang.com/v1/objects/f9ae3f651319151ce99a0bfad6b34fa16eb6775f/server.jar& goto :install
if /I "%version%" EQU "1.6.1" set version=1.6.1& set link=https://launcher.mojang.com/v1/objects/0252918a5f9d47e3c6eb1dfec02134d1374a89b4/server.jar& goto :install
if /I "%version%" EQU "1.6.2" set version=1.6.2& set link=https://launcher.mojang.com/v1/objects/01b6ea555c6978e6713e2a2dfd7fe19b1449ca54/server.jar& goto :install
if /I "%version%" EQU "1.6.4" set version=1.6.4& set link=https://launcher.mojang.com/v1/objects/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar& goto :install
if /I "%version%" EQU "1.7.2" set version=1.7.2& set link=https://launcher.mojang.com/v1/objects/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar& goto :install
if /I "%version%" EQU "1.7.3" set version=1.7.3& set link=https://launcher.mojang.com/v1/objects/707857a7bc7bf54fe60d557cca71004c34aa07bb/server.jar& goto :install
if /I "%version%" EQU "1.7.4" set version=1.7.4& set link=https://launcher.mojang.com/v1/objects/61220311cef80aecc4cd8afecd5f18ca6b9461ff/server.jar& goto :install
if /I "%version%" EQU "1.7.5" set version=1.7.5& set link=https://launcher.mojang.com/v1/objects/e1d557b2e31ea881404e41b05ec15c810415e060/server.jar& goto :install
if /I "%version%" EQU "1.7.6" set version=1.7.6& set link=https://launcher.mojang.com/v1/objects/41ea7757d4d7f74b95fc1ac20f919a8e521e910c/server.jar& goto :install
if /I "%version%" EQU "1.7.7" set version=1.7.7& set link=https://launcher.mojang.com/v1/objects/a6ffc1624da980986c6cc12a1ddc79ab1b025c62/server.jar& goto :install
if /I "%version%" EQU "1.7.8" set version=1.7.8& set link=https://launcher.mojang.com/v1/objects/c69ebfb84c2577661770371c4accdd5f87b8b21d/server.jar& goto :install
if /I "%version%" EQU "1.7.9" set version=1.7.9& set link=https://launcher.mojang.com/v1/objects/4cec86a928ec171fdc0c6b40de2de102f21601b5/server.jar& goto :install
if /I "%version%" EQU "1.7.10" set version=1.7.10& set link=https://launcher.mojang.com/v1/objects/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar& goto :install
if /I "%version%" EQU "1.8" set version=1.8& set link=https://launcher.mojang.com/v1/objects/a028f00e678ee5c6aef0e29656dca091b5df11c7/server.jar& goto :install
if /I "%version%" EQU "1.8.1" set version=1.8.1& set link=https://launcher.mojang.com/v1/objects/68bfb524888f7c0ab939025e07e5de08843dac0f/server.jar& goto :install
if /I "%version%" EQU "1.8.2" set version=1.8.2& set link=https://launcher.mojang.com/v1/objects/a37bdd5210137354ed1bfe3dac0a5b77fe08fe2e/server.jar& goto :install
if /I "%version%" EQU "1.8.3" set version=1.8.3& set link=https://launcher.mojang.com/v1/objects/163ba351cb86f6390450bb2a67fafeb92b6c0f2f/server.jar& goto :install
if /I "%version%" EQU "1.8.4" set version=1.8.4& set link=https://launcher.mojang.com/v1/objects/dd4b5eba1c79500390e0b0f45162fa70d38f8a3d/server.jar& goto :install
if /I "%version%" EQU "1.8.5" set version=1.8.5& set link=https://launcher.mojang.com/v1/objects/ea6dd23658b167dbc0877015d1072cac21ab6eee/server.jar& goto :install
if /I "%version%" EQU "1.8.6" set version=1.8.6& set link=https://launcher.mojang.com/v1/objects/2bd44b53198f143fb278f8bec3a505dad0beacd2/server.jar& goto :install
if /I "%version%" EQU "1.8.7" set version=1.8.7& set link=https://launcher.mojang.com/v1/objects/35c59e16d1f3b751cd20b76b9b8a19045de363a9/server.jar& goto :install
if /I "%version%" EQU "1.8.8" set version=1.8.8& set link=https://launcher.mojang.com/v1/objects/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar& goto :install
if /I "%version%" EQU "1.8.9" set version=1.8.9& set link=https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar& goto :install
if /I "%version%" EQU "1.9" set version=1.9& set link=https://launcher.mojang.com/v1/objects/b4d449cf2918e0f3bd8aa18954b916a4d1880f0d/server.jar& goto :install
if /I "%version%" EQU "1.9.1" set version=1.9.1& set link=https://launcher.mojang.com/v1/objects/bf95d9118d9b4b827f524c878efd275125b56181/server.jar& goto :install
if /I "%version%" EQU "1.9.2" set version=1.9.2& set link=https://launcher.mojang.com/v1/objects/2b95cc7b136017e064c46d04a5825fe4cfa1be30/server.jar& goto :install
if /I "%version%" EQU "1.9.3" set version=1.9.3& set link=https://launcher.mojang.com/v1/objects/8e897b6b6d784f745332644f4d104f7a6e737ccf/server.jar& goto :install
if /I "%version%" EQU "1.9.4" set version=1.9.4& set link=https://launcher.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar& goto :install
if /I "%version%" EQU "1.10" set version=1.10& set link=https://launcher.mojang.com/v1/objects/a96617ffdf5dabbb718ab11a9a68e50545fc5bee/server.jar& goto :install
if /I "%version%" EQU "1.10.1" set version=1.10.1& set link=https://launcher.mojang.com/v1/objects/cb4c6f9f51a845b09a8861cdbe0eea3ff6996dee/server.jar& goto :install
if /I "%version%" EQU "1.10.2" set version=1.10.2& set link=https://launcher.mojang.com/v1/objects/3d501b23df53c548254f5e3f66492d178a48db63/server.jar& goto :install
if /I "%version%" EQU "1.11" set version=1.11& set link=https://launcher.mojang.com/v1/objects/48820c84cb1ed502cb5b2fe23b8153d5e4fa61c0/server.jar& goto :install
if /I "%version%" EQU "1.11.1" set version=1.11.1& set link=https://launcher.mojang.com/v1/objects/1f97bd101e508d7b52b3d6a7879223b000b5eba0/server.jar& goto :install
if /I "%version%" EQU "1.11.2" set version=1.11.2& set link=https://launcher.mojang.com/v1/objects/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar& goto :install
if /I "%version%" EQU "1.12" set version=1.12& set link=https://launcher.mojang.com/v1/objects/8494e844e911ea0d63878f64da9dcc21f53a3463/server.jar& goto :install
if /I "%version%" EQU "1.12.1" set version=1.12.1& set link=https://launcher.mojang.com/v1/objects/561c7b2d54bae80cc06b05d950633a9ac95da816/server.jar& goto :install
if /I "%version%" EQU "1.12.2" set version=1.12.2& set link=https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar& goto :install
if /I "%version%" EQU "1.13" set version=1.13& set link=https://launcher.mojang.com/v1/objects/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar& goto :install
if /I "%version%" EQU "1.13.1" set version=1.13.1& set link=https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar& goto :install
if /I "%version%" EQU "1.13.2" set version=1.13.2& set link=https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar& goto :install
if /I "%version%" EQU "1.14" set version=1.14& set link=https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar& goto :install
if /I "%version%" EQU "1.14.1" set version=1.14.1& set link=https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar& goto :install
if /I "%version%" EQU "1.14.2" set version=1.14.2& set link=https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar& goto :install
if /I "%version%" EQU "1.14.3" set version=1.14.3& set link=https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar& goto :install
if /I "%version%" EQU "1.14.4" set version=1.14.4& set link=https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar& goto :install
if /I "%version%" EQU "1.15" set version=1.15& set link=https://launcher.mojang.com/v1/objects/e9f105b3c5c7e85c7b445249a93362a22f62442d/server.jar& goto :install
if /I "%version%" EQU "1.15.1" set version=1.15.1& set link=https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar& goto :install
if /I "%version%" EQU "1.15.2" set version=1.15.2& set link=https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar& goto :install
if /I "%version%" EQU "1.16" set version=1.16& set link=https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar& goto :install
if /I "%version%" EQU "1.16.1" set version=1.16.1& set link=https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar& goto :install
if /I "%version%" EQU "1.16.2" set version=1.16.2& set link=https://launcher.mojang.com/v1/objects/c5f6fb23c3876461d46ec380421e42b289789530/server.jar& goto :install
if /I "%version%" EQU "1.16.3" set version=1.16.3& set link=https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar& goto :install
if /I "%version%" EQU "1.16.4" set version=1.16.4& set link=https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar& goto :install
if /I "%version%" EQU "1.16.5" set version=1.16.5& set link=https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar& goto :install
if /I "%version%" EQU "1.17" set version=1.17& set link=https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar& goto :install
if /I "%version%" EQU "1.17.1" set version=1.17.1& set link=https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar& goto :install
if /I "%version%" EQU "1.18" set version=1.18& set link=https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar& goto :install
if /I "%version%" EQU "1.18.1" set version=1.18.1& set link=https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar& goto :install
if /I "%version%" EQU "1.18.2" set version=1.18.2& set link=https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar& goto :install
if /I "%version%" EQU "1.19" set version=1.19& set link=https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar& goto :install
goto :versionnull

:versionnull
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Esa Version no esta disponible o es incorrecta
echo(
echo Puedes volver al Menu Principal con "N", o
set /P version=Vuelve a escribir la Version de Minecraft para tu nuevo Servidor= 
if /I "%version%" EQU "N" goto :init
if /I "%version%" EQU "1.2.1" set version=1.2.1& set link=https://assets.minecraft.net/1_2/minecraft_server.jar& goto :install
if /I "%version%" EQU "1.2.2" set version=1.2.2& set link=https://assets.minecraft.net/1_2/minecraft_server.jar& goto :install
if /I "%version%" EQU "1.2.3" set version=1.2.3& set link=https://assets.minecraft.net/1_2/minecraft_server.jar& goto :install
if /I "%version%" EQU "1.2.4" set version=1.2.4& set link=https://assets.minecraft.net/1_2_5/minecraft_server.jar& goto :install
if /I "%version%" EQU "1.2.5" set version=1.2.5& set link=https://launcher.mojang.com/v1/objects/d8321edc9470e56b8ad5c67bbd16beba25843336/server.jar& goto :install
if /I "%version%" EQU "1.3.1" set version=1.3.1& set link=https://launcher.mojang.com/v1/objects/82563ce498bfc1fc8a2cb5bf236f7da86a390646/server.jar& goto :install
if /I "%version%" EQU "1.3.2" set version=1.3.2& set link=https://launcher.mojang.com/v1/objects/3de2ae6c488135596e073a9589842800c9f53bfe/server.jar& goto :install
if /I "%version%" EQU "1.4.2" set version=1.4.2& set link=https://launcher.mojang.com/v1/objects/5be700523a729bb78ef99206fb480a63dcd09825/server.jar& goto :install
if /I "%version%" EQU "1.4.4" set version=1.4.4& set link=https://launcher.mojang.com/v1/objects/4215dcadb706508bf9d6d64209a0080b9cee9e71/server.jar& goto :install
if /I "%version%" EQU "1.4.5" set version=1.4.5& set link=https://launcher.mojang.com/v1/objects/c12fd88a8233d2c517dbc8196ba2ae855f4d36ea/server.jar& goto :install
if /I "%version%" EQU "1.4.6" set version=1.4.6& set link=https://launcher.mojang.com/v1/objects/a0aeb5709af5f2c3058c1cf0dc6b110a7a61278c/server.jar& goto :install
if /I "%version%" EQU "1.4.7" set version=1.4.7& set link=https://launcher.mojang.com/v1/objects/2f0ec8efddd2f2c674c77be9ddb370b727dec676/server.jar& goto :install
if /I "%version%" EQU "1.5.1" set version=1.5.1& set link=https://launcher.mojang.com/v1/objects/d07c71ee2767dabb79fb32dad8162e1b854d5324/server.jar& goto :install
if /I "%version%" EQU "1.5.2" set version=1.5.2& set link=https://launcher.mojang.com/v1/objects/f9ae3f651319151ce99a0bfad6b34fa16eb6775f/server.jar& goto :install
if /I "%version%" EQU "1.6.1" set version=1.6.1& set link=https://launcher.mojang.com/v1/objects/0252918a5f9d47e3c6eb1dfec02134d1374a89b4/server.jar& goto :install
if /I "%version%" EQU "1.6.2" set version=1.6.2& set link=https://launcher.mojang.com/v1/objects/01b6ea555c6978e6713e2a2dfd7fe19b1449ca54/server.jar& goto :install
if /I "%version%" EQU "1.6.4" set version=1.6.4& set link=https://launcher.mojang.com/v1/objects/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar& goto :install
if /I "%version%" EQU "1.7.2" set version=1.7.2& set link=https://launcher.mojang.com/v1/objects/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar& goto :install
if /I "%version%" EQU "1.7.3" set version=1.7.3& set link=https://launcher.mojang.com/v1/objects/707857a7bc7bf54fe60d557cca71004c34aa07bb/server.jar& goto :install
if /I "%version%" EQU "1.7.4" set version=1.7.4& set link=https://launcher.mojang.com/v1/objects/61220311cef80aecc4cd8afecd5f18ca6b9461ff/server.jar& goto :install
if /I "%version%" EQU "1.7.5" set version=1.7.5& set link=https://launcher.mojang.com/v1/objects/e1d557b2e31ea881404e41b05ec15c810415e060/server.jar& goto :install
if /I "%version%" EQU "1.7.6" set version=1.7.6& set link=https://launcher.mojang.com/v1/objects/41ea7757d4d7f74b95fc1ac20f919a8e521e910c/server.jar& goto :install
if /I "%version%" EQU "1.7.7" set version=1.7.7& set link=https://launcher.mojang.com/v1/objects/a6ffc1624da980986c6cc12a1ddc79ab1b025c62/server.jar& goto :install
if /I "%version%" EQU "1.7.8" set version=1.7.8& set link=https://launcher.mojang.com/v1/objects/c69ebfb84c2577661770371c4accdd5f87b8b21d/server.jar& goto :install
if /I "%version%" EQU "1.7.9" set version=1.7.9& set link=https://launcher.mojang.com/v1/objects/4cec86a928ec171fdc0c6b40de2de102f21601b5/server.jar& goto :install
if /I "%version%" EQU "1.7.10" set version=1.7.10& set link=https://launcher.mojang.com/v1/objects/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar& goto :install
if /I "%version%" EQU "1.8" set version=1.8& set link=https://launcher.mojang.com/v1/objects/a028f00e678ee5c6aef0e29656dca091b5df11c7/server.jar& goto :install
if /I "%version%" EQU "1.8.1" set version=1.8.1& set link=https://launcher.mojang.com/v1/objects/68bfb524888f7c0ab939025e07e5de08843dac0f/server.jar& goto :install
if /I "%version%" EQU "1.8.2" set version=1.8.2& set link=https://launcher.mojang.com/v1/objects/a37bdd5210137354ed1bfe3dac0a5b77fe08fe2e/server.jar& goto :install
if /I "%version%" EQU "1.8.3" set version=1.8.3& set link=https://launcher.mojang.com/v1/objects/163ba351cb86f6390450bb2a67fafeb92b6c0f2f/server.jar& goto :install
if /I "%version%" EQU "1.8.4" set version=1.8.4& set link=https://launcher.mojang.com/v1/objects/dd4b5eba1c79500390e0b0f45162fa70d38f8a3d/server.jar& goto :install
if /I "%version%" EQU "1.8.5" set version=1.8.5& set link=https://launcher.mojang.com/v1/objects/ea6dd23658b167dbc0877015d1072cac21ab6eee/server.jar& goto :install
if /I "%version%" EQU "1.8.6" set version=1.8.6& set link=https://launcher.mojang.com/v1/objects/2bd44b53198f143fb278f8bec3a505dad0beacd2/server.jar& goto :install
if /I "%version%" EQU "1.8.7" set version=1.8.7& set link=https://launcher.mojang.com/v1/objects/35c59e16d1f3b751cd20b76b9b8a19045de363a9/server.jar& goto :install
if /I "%version%" EQU "1.8.8" set version=1.8.8& set link=https://launcher.mojang.com/v1/objects/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar& goto :install
if /I "%version%" EQU "1.8.9" set version=1.8.9& set link=https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar& goto :install
if /I "%version%" EQU "1.9" set version=1.9& set link=https://launcher.mojang.com/v1/objects/b4d449cf2918e0f3bd8aa18954b916a4d1880f0d/server.jar& goto :install
if /I "%version%" EQU "1.9.1" set version=1.9.1& set link=https://launcher.mojang.com/v1/objects/bf95d9118d9b4b827f524c878efd275125b56181/server.jar& goto :install
if /I "%version%" EQU "1.9.2" set version=1.9.2& set link=https://launcher.mojang.com/v1/objects/2b95cc7b136017e064c46d04a5825fe4cfa1be30/server.jar& goto :install
if /I "%version%" EQU "1.9.3" set version=1.9.3& set link=https://launcher.mojang.com/v1/objects/8e897b6b6d784f745332644f4d104f7a6e737ccf/server.jar& goto :install
if /I "%version%" EQU "1.9.4" set version=1.9.4& set link=https://launcher.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar& goto :install
if /I "%version%" EQU "1.10" set version=1.10& set link=https://launcher.mojang.com/v1/objects/a96617ffdf5dabbb718ab11a9a68e50545fc5bee/server.jar& goto :install
if /I "%version%" EQU "1.10.1" set version=1.10.1& set link=https://launcher.mojang.com/v1/objects/cb4c6f9f51a845b09a8861cdbe0eea3ff6996dee/server.jar& goto :install
if /I "%version%" EQU "1.10.2" set version=1.10.2& set link=https://launcher.mojang.com/v1/objects/3d501b23df53c548254f5e3f66492d178a48db63/server.jar& goto :install
if /I "%version%" EQU "1.11" set version=1.11& set link=https://launcher.mojang.com/v1/objects/48820c84cb1ed502cb5b2fe23b8153d5e4fa61c0/server.jar& goto :install
if /I "%version%" EQU "1.11.1" set version=1.11.1& set link=https://launcher.mojang.com/v1/objects/1f97bd101e508d7b52b3d6a7879223b000b5eba0/server.jar& goto :install
if /I "%version%" EQU "1.11.2" set version=1.11.2& set link=https://launcher.mojang.com/v1/objects/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar& goto :install
if /I "%version%" EQU "1.12" set version=1.12& set link=https://launcher.mojang.com/v1/objects/8494e844e911ea0d63878f64da9dcc21f53a3463/server.jar& goto :install
if /I "%version%" EQU "1.12.1" set version=1.12.1& set link=https://launcher.mojang.com/v1/objects/561c7b2d54bae80cc06b05d950633a9ac95da816/server.jar& goto :install
if /I "%version%" EQU "1.12.2" set version=1.12.2& set link=https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar& goto :install
if /I "%version%" EQU "1.13" set version=1.13& set link=https://launcher.mojang.com/v1/objects/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar& goto :install
if /I "%version%" EQU "1.13.1" set version=1.13.1& set link=https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar& goto :install
if /I "%version%" EQU "1.13.2" set version=1.13.2& set link=https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar& goto :install
if /I "%version%" EQU "1.14" set version=1.14& set link=https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar& goto :install
if /I "%version%" EQU "1.14.1" set version=1.14.1& set link=https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar& goto :install
if /I "%version%" EQU "1.14.2" set version=1.14.2& set link=https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar& goto :install
if /I "%version%" EQU "1.14.3" set version=1.14.3& set link=https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar& goto :install
if /I "%version%" EQU "1.14.4" set version=1.14.4& set link=https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar& goto :install
if /I "%version%" EQU "1.15" set version=1.15& set link=https://launcher.mojang.com/v1/objects/e9f105b3c5c7e85c7b445249a93362a22f62442d/server.jar& goto :install
if /I "%version%" EQU "1.15.1" set version=1.15.1& set link=https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar& goto :install
if /I "%version%" EQU "1.15.2" set version=1.15.2& set link=https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar& goto :install
if /I "%version%" EQU "1.16" set version=1.16& set link=https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar& goto :install
if /I "%version%" EQU "1.16.1" set version=1.16.1& set link=https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar& goto :install
if /I "%version%" EQU "1.16.2" set version=1.16.2& set link=https://launcher.mojang.com/v1/objects/c5f6fb23c3876461d46ec380421e42b289789530/server.jar& goto :install
if /I "%version%" EQU "1.16.3" set version=1.16.3& set link=https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar& goto :install
if /I "%version%" EQU "1.16.4" set version=1.16.4& set link=https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar& goto :install
if /I "%version%" EQU "1.16.5" set version=1.16.5& set link=https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar& goto :install
if /I "%version%" EQU "1.17" set version=1.17& set link=https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar& goto :install
if /I "%version%" EQU "1.17.1" set version=1.17.1& set link=https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar& goto :install
if /I "%version%" EQU "1.18" set version=1.18& set link=https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar& goto :install
if /I "%version%" EQU "1.18.1" set version=1.18.1& set link=https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar& goto :install
if /I "%version%" EQU "1.18.2" set version=1.18.2& set link=https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar& goto :install
if /I "%version%" EQU "1.19" set version=1.19& set link=https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar& goto :install
goto :versionnull

:install
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Seleccionaste la Version %version%
echo(
echo Se descargaran los archivos necesarios desde Internet
echo Luego se creara una carpeta en el Escritorio con los archivos de tu Servidor
echo(
pause
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Espera un momento...
cd C:\
mkdir SSTools4MC
cd C:\SSTools4MC
mkdir NeededFiles
curl %link% >C:\SSTools4MC\NeededFiles\server.jar
cd %USERPROFILE%\Desktop
mkdir Servidor
copy C:\SSTools4MC\NeededFiles\server.jar %USERPROFILE%\Desktop\Servidor\
curl https://server.properties >C:\SSTools4MC\NeededFiles\server.properties
copy C:\SSTools4MC\NeededFiles\server.properties %USERPROFILE%\Desktop\Servidor\
rd /s /q C:\SSTools4MC
cd %USERPROFILE%\AppData\Roaming
copy %USERPROFILE%\AppData\Roaming\Launcher.exe "%USERPROFILE%\Desktop\Servidor\Abrir Server.exe"
goto :listo

:listo
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Se descargaron todos los archivos necesarios.
echo Debes leer el CLUF de Minecraft, disponible en el siguiente link
echo(
echo https://account.mojang.com/documents/minecraft_eula
echo(
set /P eula=Despues de leerlo, escribe "ACEPTO" para poder continuar= 
if /I "%eula%" EQU "ACEPTO" goto :eula
goto :listo

:eula
cd %USERPROFILE%\Desktop\Servidor\
echo eula=true>eula.txt
goto :listo2

:listo2
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Se ha instalado el Servidor
echo(
pause
goto :init

REM Desde esta anotación se encuentran las listas de versiones compatibles con esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:vslist
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Aqui encontraras la lista que muestra las versiones de Minecraft disponibles.
echo Esta lista podria cambiar en futuras actualizaciones.
echo(
echo (1) Ver Lista de Versiones Disponibles
echo (2) Volver al Menu Principal
echo(
set /P vslista=Elige una de las opciones = 
if /I "%vslista%" EQU "1" goto :stblist
if /I "%vslista%" EQU "2" goto :init
goto :vslist

:stblist
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Lista de Versiones de Minecraft Disponibles para Instalar
echo(
echo - 1.2.1
echo - 1.2.2
echo - 1.2.3
echo - 1.2.4
echo - 1.2.5
echo - 1.3.1
echo - 1.3.2
echo - 1.4.2
echo - 1.4.4
echo - 1.4.5
echo - 1.4.6
echo - 1.4.7
echo - 1.5.1
echo - 1.5.2
echo - 1.6.1
echo - 1.6.2
echo - 1.6.4
echo - 1.7.2
echo - 1.7.3
echo - 1.7.4
echo - 1.7.5
echo - 1.7.6
echo - 1.7.7
echo - 1.7.8
echo - 1.7.9
echo - 1.7.10
echo - 1.8
echo - 1.8.1
echo - 1.8.2
echo - 1.8.3
echo - 1.8.4
echo - 1.8.5
echo - 1.8.6
echo - 1.8.7
echo - 1.8.8
echo - 1.8.9
echo - 1.9
echo - 1.9.1
echo - 1.9.2
echo - 1.9.3
echo - 1.9.4
echo - 1.10
echo - 1.10.1
echo - 1.10.2
echo - 1.11
echo - 1.11.1
echo - 1.11.2
echo - 1.12
echo - 1.12.1
echo - 1.12.2
echo - 1.13
echo - 1.13.1
echo - 1.13.2
echo - 1.14
echo - 1.14.1
echo - 1.14.2
echo - 1.14.3
echo - 1.14.4
echo - 1.15
echo - 1.15.1
echo - 1.15.2
echo - 1.16
echo - 1.16.1
echo - 1.16.2
echo - 1.16.3
echo - 1.16.4
echo - 1.16.5
echo - 1.17
echo - 1.17.1
echo - 1.18
echo - 1.18.1
echo - 1.18.2
echo - 1.19
echo(
pause
goto :init

REM Desde esta anotación se encuentra el bloque de código que activa y desactiva el modo debug
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:dbmode
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo El Modo Debug muestra todos los comandos que son ejecutados por la consola durante cada proceso.
echo Este modo le es util a los desarrolladores para detectar problemas con el codigo de manera mas facil.
echo No se recomienda activar este modo si realmente no sabes como sobrellevarlo.
echo(
echo (N) Activar Modo Debug
echo (M) Desactivar Modo Debug
echo (V) Volver al Menu Principal
echo(
set /P debug=Elige una de las opciones = 
if /I "%debug%" EQU "N" goto :dbinit
if /I "%debug%" EQU "M" goto :undbinit
if /I "%debug%" EQU "V" goto :init
goto :dbmode

:dbinit
cls
@echo off
cls
echo(
echo El Modo Debug esta Activado
echo(
pause
cls
@echo on
cls
echo Instalador de Servidores para Minecraft
echo --------------------------------------
echo(
echo Estas en el Menu Principal
echo(
echo (I) Instalar un Servidor
echo (L) Lista de Versiones
echo (D) Modo Debug
echo (A) Acerca de
echo (S) Salir
echo(
set /P menu=Elige una de las opciones = 
if /I "%menu%" EQU "I" goto :version
if /I "%menu%" EQU "L" goto :vslist
if /I "%menu%" EQU "D" goto :dbmode
if /I "%menu%" EQU "A" goto :about
if /I "%menu%" EQU "S" goto :exit
goto :init

:undbinit
cls
@echo off
cls
echo(
echo El Modo Debug esta Desactivado
echo(
pause
goto :init

REM Desde esta anotación se encuentran los bloques de código que contienen la información "acerca de" esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:about
cls
echo Lanzador de Servidores de Minecraft
echo ------------------------------------
echo(
echo Se abrira la informacion sobre Copyright mas reciente en el navegador.
echo(
pause
start https://github.com/NGDPLNk/SSTools4MC#informaci%C3%B3n-sobre-copyright-y-disclaimer
goto :init

REM Desde esta anotación se encuentra el bloque que da pie a la salida de esta herramienta
REM Se crean estas anotaciones por un tema de órden y rapidez al momento de actualizar o trabajar con este código fuente

:exit
cls
echo(
echo --------------------------------------------
echo Muchas Gracias por usar esta Herramienta
echo MIT License - Copyright (c) 2022 NGDPL Nk
echo --------------------------------------------
echo(
pause
exit
