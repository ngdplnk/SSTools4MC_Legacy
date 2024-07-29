#!/usr/bin/env python3

#####################
### THINGS TO FIX ###
# - Download progressbar has a bug that when the console is untabbed, freezes and corrupts the file.
# - In specific conditions, the server startup cancelling with CTRL+C shows an unexpected screen from other function.
#####################

# MÓDULOS IMPORTADOS - IMPORTED MODULES
import os
import time
import sys
import ctypes
import subprocess
import webbrowser
import datetime
import locale
import requests
from tkinter import filedialog
from termcolor import colored

# VARIABLES
valor = None
runn = True

# PATHS
APPDATA = os.getenv('APPDATA')
SSTOOLS_FOLDER = os.path.join(APPDATA, "TLSoftware", "SSTools4MC") # type: ignore
CONFIG_PATH = os.path.join(SSTOOLS_FOLDER, "config") # type: ignore
SAVED_SERVERS = os.path.join(CONFIG_PATH, "saved-servers.cfg") # type: ignore

### MINECRAFT VERSIONS
## 83 STABLE VERSIONS ADDED (1.2.1 - 1.20.6)
## X SNAPSHOT VERSIONS ADDED (1.3 - 1.21-rc1)
# LAST UPDATE: 29-07-2024
MCVERSIONS = {
    # Stable
    "1.2.1": "https://assets.minecraft.net/1_2/minecraft_server.jar",
    "1.2.2": "https://assets.minecraft.net/1_2/minecraft_server.jar",
    "1.2.3": "https://assets.minecraft.net/1_2/minecraft_server.jar",
    "1.2.4": "https://assets.minecraft.net/1_2_5/minecraft_server.jar",
    "1.2.5": "https://launcher.mojang.com/v1/objects/d8321edc9470e56b8ad5c67bbd16beba25843336/server.jar",
    "1.3.1": "https://launcher.mojang.com/v1/objects/82563ce498bfc1fc8a2cb5bf236f7da86a390646/server.jar",
    "1.3.2": "https://launcher.mojang.com/v1/objects/3de2ae6c488135596e073a9589842800c9f53bfe/server.jar",
    "1.4.2": "https://launcher.mojang.com/v1/objects/5be700523a729bb78ef99206fb480a63dcd09825/server.jar",
    "1.4.4": "https://launcher.mojang.com/v1/objects/4215dcadb706508bf9d6d64209a0080b9cee9e71/server.jar",
    "1.4.5": "https://launcher.mojang.com/v1/objects/c12fd88a8233d2c517dbc8196ba2ae855f4d36ea/server.jar",
    "1.4.6": "https://launcher.mojang.com/v1/objects/a0aeb5709af5f2c3058c1cf0dc6b110a7a61278c/server.jar",
    "1.4.7": "https://launcher.mojang.com/v1/objects/2f0ec8efddd2f2c674c77be9ddb370b727dec676/server.jar",
    "1.5.1": "https://launcher.mojang.com/v1/objects/d07c71ee2767dabb79fb32dad8162e1b854d5324/server.jar",
    "1.5.2": "https://launcher.mojang.com/v1/objects/f9ae3f651319151ce99a0bfad6b34fa16eb6775f/server.jar",
    "1.6.1": "https://launcher.mojang.com/v1/objects/0252918a5f9d47e3c6eb1dfec02134d1374a89b4/server.jar",
    "1.6.2": "https://launcher.mojang.com/v1/objects/01b6ea555c6978e6713e2a2dfd7fe19b1449ca54/server.jar",
    "1.6.4": "https://launcher.mojang.com/v1/objects/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar",
    "1.7.2": "https://launcher.mojang.com/v1/objects/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar",
    "1.7.3": "https://launcher.mojang.com/v1/objects/707857a7bc7bf54fe60d557cca71004c34aa07bb/server.jar",
    "1.7.4": "https://launcher.mojang.com/v1/objects/61220311cef80aecc4cd8afecd5f18ca6b9461ff/server.jar",
    "1.7.5": "https://launcher.mojang.com/v1/objects/e1d557b2e31ea881404e41b05ec15c810415e060/server.jar",
    "1.7.6": "https://launcher.mojang.com/v1/objects/41ea7757d4d7f74b95fc1ac20f919a8e521e910c/server.jar",
    "1.7.7": "https://launcher.mojang.com/v1/objects/a6ffc1624da980986c6cc12a1ddc79ab1b025c62/server.jar",
    "1.7.8": "https://launcher.mojang.com/v1/objects/c69ebfb84c2577661770371c4accdd5f87b8b21d/server.jar",
    "1.7.9": "https://launcher.mojang.com/v1/objects/4cec86a928ec171fdc0c6b40de2de102f21601b5/server.jar",
    "1.7.10": "https://launcher.mojang.com/v1/objects/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar",
    "1.8": "https://launcher.mojang.com/v1/objects/a028f00e678ee5c6aef0e29656dca091b5df11c7/server.jar",
    "1.8.1": "https://launcher.mojang.com/v1/objects/68bfb524888f7c0ab939025e07e5de08843dac0f/server.jar",
    "1.8.2": "https://launcher.mojang.com/v1/objects/a37bdd5210137354ed1bfe3dac0a5b77fe08fe2e/server.jar",
    "1.8.3": "https://launcher.mojang.com/v1/objects/163ba351cb86f6390450bb2a67fafeb92b6c0f2f/server.jar",
    "1.8.4": "https://launcher.mojang.com/v1/objects/dd4b5eba1c79500390e0b0f45162fa70d38f8a3d/server.jar",
    "1.8.5": "https://launcher.mojang.com/v1/objects/ea6dd23658b167dbc0877015d1072cac21ab6eee/server.jar",
    "1.8.6": "https://launcher.mojang.com/v1/objects/2bd44b53198f143fb278f8bec3a505dad0beacd2/server.jar",
    "1.8.7": "https://launcher.mojang.com/v1/objects/35c59e16d1f3b751cd20b76b9b8a19045de363a9/server.jar",
    "1.8.8": "https://launcher.mojang.com/v1/objects/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar",
    "1.8.9": "https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar",
    "1.9": "https://launcher.mojang.com/v1/objects/b4d449cf2918e0f3bd8aa18954b916a4d1880f0d/server.jar",
    "1.9.1": "https://launcher.mojang.com/v1/objects/bf95d9118d9b4b827f524c878efd275125b56181/server.jar",
    "1.9.2": "https://launcher.mojang.com/v1/objects/2b95cc7b136017e064c46d04a5825fe4cfa1be30/server.jar",
    "1.9.3": "https://launcher.mojang.com/v1/objects/8e897b6b6d784f745332644f4d104f7a6e737ccf/server.jar",
    "1.9.4": "https://launcher.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar",
    "1.10": "https://launcher.mojang.com/v1/objects/a96617ffdf5dabbb718ab11a9a68e50545fc5bee/server.jar",
    "1.10.1": "https://launcher.mojang.com/v1/objects/cb4c6f9f51a845b09a8861cdbe0eea3ff6996dee/server.jar",
    "1.10.2": "https://launcher.mojang.com/v1/objects/3d501b23df53c548254f5e3f66492d178a48db63/server.jar",
    "1.11": "https://launcher.mojang.com/v1/objects/48820c84cb1ed502cb5b2fe23b8153d5e4fa61c0/server.jar",
    "1.11.1": "https://launcher.mojang.com/v1/objects/1f97bd101e508d7b52b3d6a7879223b000b5eba0/server.jar",
    "1.11.2": "https://launcher.mojang.com/v1/objects/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar",
    "1.12": "https://launcher.mojang.com/v1/objects/8494e844e911ea0d63878f64da9dcc21f53a3463/server.jar",
    "1.12.1": "https://launcher.mojang.com/v1/objects/561c7b2d54bae80cc06b05d950633a9ac95da816/server.jar",
    "1.12.2": "https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar",
    "1.13": "https://launcher.mojang.com/v1/objects/d0caafb8438ebd206f99930cfaecfa6c9a13dca0/server.jar",
    "1.13.1": "https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar",
    "1.13.2": "https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar",
    "1.14": "https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar",
    "1.14.1": "https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar",
    "1.14.2": "https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar",
    "1.14.3": "https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar",
    "1.14.4": "https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar",
    "1.15": "https://launcher.mojang.com/v1/objects/e9f105b3c5c7e85c7b445249a93362a22f62442d/server.jar",
    "1.15.1": "https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar",
    "1.15.2": "https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar",
    "1.16": "https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar",
    "1.16.1": "https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar",
    "1.16.2": "https://launcher.mojang.com/v1/objects/c5f6fb23c3876461d46ec380421e42b289789530/server.jar",
    "1.16.3": "https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar",
    "1.16.4": "https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar",
    "1.16.5": "https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar",
    "1.17": "https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar",
    "1.17.1": "https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar",
    "1.18": "https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar",
    "1.18.1": "https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar",
    "1.18.2": "https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar",
    "1.19": "https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar",
    "1.19.1": "https://piston-data.mojang.com/v1/objects/8399e1211e95faa421c1507b322dbeae86d604df/server.jar",
    "1.19.2": "https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar",
    "1.19.3": "https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar",
    "1.19.4": "https://piston-data.mojang.com/v1/objects/8f3112a1049751cc472ec13e397eade5336ca7ae/server.jar",
    "1.20": "https://piston-data.mojang.com/v1/objects/15c777e2cfe0556eef19aab534b186c0c6f277e1/server.jar",
    "1.20.1": "https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar",
    "1.20.2": "https://piston-data.mojang.com/v1/objects/5b868151bd02b41319f54c8d4061b8cae84e665c/server.jar",
    "1.20.3": "https://piston-data.mojang.com/v1/objects/4fb536bfd4a83d61cdbaf684b8d311e66e7d4c49/server.jar",
    "1.20.4": "https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar",
    "1.20.5": "https://piston-data.mojang.com/v1/objects/79493072f65e17243fd36a699c9a96b4381feb91/server.jar",
    "1.20.6": "https://piston-data.mojang.com/v1/objects/145ff0858209bcfc164859ba735d4199aafa1eea/server.jar",
    "1.21": "https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar",
    # Snapshot
    "1.3": "https://launcher.mojang.com/v1/objects/cb21a9aaaf599c94dd7fa1b777b2f0cc37a776c7/server.jar",
    "1.4": "https://launcher.mojang.com/v1/objects/9470a2bb0fcb8a426328441a01dba164fbbe52c9/server.jar",
    "1.4.1": "https://launcher.mojang.com/v1/objects/baa4e4a7adc3dc9fbfc5ea36f0777b68c9eb7f4a/server.jar",
    "1.4.3": "https://launcher.mojang.com/v1/objects/9be68adf6e80721975df12f2445fa24617328d18/server.jar",
    "1.5": "https://launcher.mojang.com/v1/objects/aedad5159ef56d69c5bcf77ed141f53430af43c3/server.jar",
    "13w16a": "https://launcher.mojang.com/v1/objects/dd76b63bad493e42b303dd8952c240f330251760/server.jar",
    "13w16b": "https://launcher.mojang.com/v1/objects/c125111764b5774403ff2183debbb9da4805a64f/server.jar",
    "13w17a": "https://launcher.mojang.com/v1/objects/48ece561c3512b2f9c0915dad7c3cb65560ceb39/server.jar",
    "13w18a": "https://launcher.mojang.com/v1/objects/6084eae41c6e28d58fe8a1ee4ab4389a392f0139/server.jar",
    "13w18b": "https://launcher.mojang.com/v1/objects/af7fd5e8cdc610f1e533ba7963bc39de422df1b6/server.jar",
    "13w18c": "https://launcher.mojang.com/v1/objects/3f8dc565567174d777a416f979901e0fee010d2a/server.jar",
    "13w19a": "https://launcher.mojang.com/v1/objects/17997ee2d9a3ad1070a74707f58ebb3e3a46ae10/server.jar",
    "13w21a": "https://launcher.mojang.com/v1/objects/a04b6f0349b8de64c68a9311b4eaff478e37b558/server.jar",
    "13w21b": "https://launcher.mojang.com/v1/objects/f5236a7628c74c22c33f57b50cb755598042aa5b/server.jar",
    "13w22a": "https://launcher.mojang.com/v1/objects/94b99928dccee27ad9b1d90bd00e8f68f38f92e4/server.jar",
    "13w23a": "https://launcher.mojang.com/v1/objects/b26a278856a6a4703054ad266b79b1ef397676c2/server.jar",
    "13w23b": "https://launcher.mojang.com/v1/objects/b6b627c0a5fe9f53a22892f21c473e19617c1c0d/server.jar",
    "13w24a": "https://launcher.mojang.com/v1/objects/d0f1eb0455c1bc3f73d5fc7252e282fd614f1f5b/server.jar",
    "13w24b": "https://launcher.mojang.com/v1/objects/9c312da9bdcc562dc57e235a7a56900148c77f8d/server.jar",
    "13w25a": "https://launcher.mojang.com/v1/objects/e1c2e7376fe489c5eba744b010993c402ab3f3f2/server.jar",
    "13w25b": "https://launcher.mojang.com/v1/objects/9f7f205d7c00098d9aa6abd67ce4f93d0eeddcd7/server.jar",
    "13w25c": "https://launcher.mojang.com/v1/objects/0f21dbd39728a50843d1b20cf832f26aaada353d/server.jar",
    "13w26a": "https://launcher.mojang.com/v1/objects/bafe11faf3419c8813beb948e353912239d50bc1/server.jar",
    "1.6": "https://launcher.mojang.com/v1/objects/ee6d5161ac28eef285df571dc1235d48f03c3e88/server.jar",
    "13w36a": "https://launcher.mojang.com/v1/objects/8453f031175bac1a92db000befd14f70c8df8fb7/server.jar",
    "13w36b": "https://launcher.mojang.com/v1/objects/2b6cdcd2df82ca8f04c1c2c7d77faf4cd25151ea/server.jar",
    "13w37a": "https://launcher.mojang.com/v1/objects/c3d3d936394b35f20b871b140f5a8e6079822e51/server.jar",
    "1.6.3": "https://launcher.mojang.com/v1/objects/5a4c69bdf7c4a9aa9580096805d8497ba7721e05/server.jar",
    "13w37b": "https://launcher.mojang.com/v1/objects/f6322a6791bbeabac94cbaa1cf9b779ad88b120f/server.jar",
    "13w38a": "https://launcher.mojang.com/v1/objects/627585cdb9386e7f05cdfb8f092e5a303d4fd5f3/server.jar",
    "13w38b": "https://launcher.mojang.com/v1/objects/82588f79a6a61c4c4289a9dc60b7b7b3fedaead9/server.jar",
    "13w38c": "https://launcher.mojang.com/v1/objects/03081b4b569174ec68ef9cdd574ee4feca05dea5/server.jar",
    "13w39a": "https://launcher.mojang.com/v1/objects/10e8687a623cb3def606fa3855aaed5ef79aac66/server.jar",
    "13w39b": "https://launcher.mojang.com/v1/objects/1db7286055aeb35c709d98ace1c9cdc739206d5a/server.jar",
    "13w41a": "https://launcher.mojang.com/v1/objects/fbe939a8a9246db801428e33a1c53506af637247/server.jar",
    "13w41b": "https://launcher.mojang.com/v1/objects/d0f1808505d59bd69c47d8e0ce01dc5936d34c34/server.jar",
    "13w42a": "https://launcher.mojang.com/v1/objects/d7007e5f46bb1ad4f4d38dc8cd2ea54898c6cccb/server.jar",
    "13w42b": "https://launcher.mojang.com/v1/objects/1416ebe3d6e6aa62eaae305ce542c39b7dfcb2b9/server.jar",
    "13w43a": "https://launcher.mojang.com/v1/objects/0fd72957ddbedd604d2bdf155dd03c8501c48f48/server.jar",
    "1.7": "https://launcher.mojang.com/v1/objects/3f031ab8b9cafedeb822febe89d271b72565712c/server.jar",
    "1.7.1": "https://launcher.mojang.com/v1/objects/d26d79675147253b7a35dd32dc5dbba0af1be7e2/server.jar",
    "13w47a": "https://launcher.mojang.com/v1/objects/f3210daa0a05a88b8b8edadfc8af385ff3f88987/server.jar",
    "13w47b": "https://launcher.mojang.com/v1/objects/7c1b69de43b6edf1d20f5030b88df78fd08ad8c7/server.jar",
    "13w47c": "https://launcher.mojang.com/v1/objects/5cf618125f87452e665f0097171d089f73dc7e1c/server.jar",
    "13w47d": "https://launcher.mojang.com/v1/objects/28982e580acf736120a4f1c3e7418e2a8daa3a8c/server.jar",
    "13w47e": "https://launcher.mojang.com/v1/objects/0f08e81b37b2c06ead45f498a7c8efa10a02633a/server.jar",
    "13w48a": "https://launcher.mojang.com/v1/objects/8f43e47eb288d3485f7825c422e9c5bcaf6418af/server.jar",
    "13w48b": "https://launcher.mojang.com/v1/objects/9ab8a06fe77ed7f553ae3427d304e9f55de339d9/server.jar",
    "13w49a": "https://launcher.mojang.com/v1/objects/164c350e011f491f6e12861ee4988ef2ccecfe0e/server.jar",
    "14w02a": "https://launcher.mojang.com/v1/objects/b908214fb99891c4f1e77c21b1fcbe4f7cafdd58/server.jar",
    "14w02b": "https://launcher.mojang.com/v1/objects/2f873b2fd721c9ed5ef51e80df96d10e5390ee9f/server.jar",
    "14w02c": "https://launcher.mojang.com/v1/objects/c844eb4e22c6c0a3b87835fc61a508caeeced1f9/server.jar",
    "14w03a": "https://launcher.mojang.com/v1/objects/5cbd5319a7b1198f049286d443148f1b88ff7bc7/server.jar",
    "14w03b": "https://launcher.mojang.com/v1/objects/b8bee8cbf485aad0be9789fe58ab266d8fe82215/server.jar",
    "14w04a": "https://launcher.mojang.com/v1/objects/bd483603d1b07d3ce3fde76a35abfb0489933d72/server.jar",
    "14w04b": "https://launcher.mojang.com/v1/objects/7af6befa241678d09d4031fed5578785dd3c126d/server.jar",
    "14w05a": "https://launcher.mojang.com/v1/objects/27abecb729cab3a6e11f635dae2cf9be5f620a75/server.jar",
    "14w05b": "https://launcher.mojang.com/v1/objects/d2d2b00952748af9ee8e60f49b9998dcfad3071f/server.jar",
    "14w06a": "https://launcher.mojang.com/v1/objects/a6a41979ed198086f2c8ae638f26286b2dc931db/server.jar",
    "14w06b": "https://launcher.mojang.com/v1/objects/0591a5e7e299182c6849e705704095d2a1efe1d5/server.jar",
    "14w07a": "https://launcher.mojang.com/v1/objects/de78ac487cf3fb6770e8c15f83e2219d4df851ae/server.jar",
    "14w08a": "https://launcher.mojang.com/v1/objects/a2716623b9e2c01cf0a1ec44497cc3279fce8f6a/server.jar",
    "14w10a": "https://launcher.mojang.com/v1/objects/03503dc8c3f615bf8b65d8e1ebbf923e81162e3e/server.jar",
    "14w10b": "https://launcher.mojang.com/v1/objects/2dd525cb725635b94c763c2efa5e1fe931a0d6d6/server.jar",
    "14w10c": "https://launcher.mojang.com/v1/objects/d97cc24dad232b5452644facde54c47854283b99/server.jar",
    "1.7.6-pre1": "https://launcher.mojang.com/v1/objects/121176f19f38780d0cd04bef87c1296fedb37cd0/server.jar",
    "1.7.6-pre2": "https://launcher.mojang.com/v1/objects/5aa5deddbe750a384bdb5ed0652bbda33cf4e5c8/server.jar",
    "14w11a": "https://launcher.mojang.com/v1/objects/286924e7082ff1f6baed77a100f73abae81f25e3/server.jar",
    "14w11b": "https://launcher.mojang.com/v1/objects/58694879e09c500dccb00751ed85a1d6b983229d/server.jar",
    "14w17a": "https://launcher.mojang.com/v1/objects/701dca9511fa3e6b26799d11475fb3a719d6a26a/server.jar",
    "14w18a": "https://launcher.mojang.com/v1/objects/48d6b3b47e870f61a95645e2bc1a84a27a1da068/server.jar",
    "14w18b": "https://launcher.mojang.com/v1/objects/d7300a576860c056938760153cbf56ed98e9c7f9/server.jar",
    "14w19a": "https://launcher.mojang.com/v1/objects/a7df79e00c4d75e3916438658839785a476bd6ac/server.jar",
    "1.7.10-pre1": "https://launcher.mojang.com/v1/objects/db79ef4be8b37093c7ca4ddbd54ede2ca21d2a9f/server.jar",
    "1.7.10-pre2": "https://launcher.mojang.com/v1/objects/ea9fdacf5b0eadfbec5f8aed89c4da3c6be87060/server.jar",
    "1.7.10-pre3": "https://launcher.mojang.com/v1/objects/b9fdcbd17407d9eaeedcf4ff79b3121ee40133db/server.jar",
    "1.7.10-pre4": "https://launcher.mojang.com/v1/objects/7c8249c626996c4474afe4f26071a91e7efd825a/server.jar",
    "14w20a": "https://launcher.mojang.com/v1/objects/4dfd82a84113cfb7e4b489c52caa68bc3f21198e/server.jar",
    "14w20b": "https://launcher.mojang.com/v1/objects/93ff3d1043ecf25eaf7c9626d8cbde7986dde65d/server.jar",
    "14w21a": "https://launcher.mojang.com/v1/objects/7e26d5c2feb9df58353b942418640164a8cd0fbd/server.jar",
    "14w21b": "https://launcher.mojang.com/v1/objects/b02c5506df94aa5d5200ef063f1bab22ce260c8a/server.jar",
    "14w25a": "https://launcher.mojang.com/v1/objects/e22dedab430bc1c0f938a1e1a2811d11fe29f67e/server.jar",
    "14w25b": "https://launcher.mojang.com/v1/objects/29209a8e73b6f4afa691d0682aa848c2a1f52dd7/server.jar",
    "14w26a": "https://launcher.mojang.com/v1/objects/9d167e0b009b99d637ad102a1cb4f5aeb1501e45/server.jar",
    "14w26b": "https://launcher.mojang.com/v1/objects/0b461d7af1194a192f5b7a9a8989bab83f7317b0/server.jar",
    "14w26c": "https://launcher.mojang.com/v1/objects/247352905e446c66db85ecb26361a9b5a8eec4ea/server.jar",
    "14w27a": "https://launcher.mojang.com/v1/objects/b5350953ff062646d4a61b7c8fb4c0570829843a/server.jar",
    "14w27b": "https://launcher.mojang.com/v1/objects/c5be337237224f752b2ea09d3a2a00a00b26e14b/server.jar",
    "14w28a": "https://launcher.mojang.com/v1/objects/6987a36f248e88fd8b2366e87fd88834b4a06f7a/server.jar",
    "14w28b": "https://launcher.mojang.com/v1/objects/aacec09f5ed0475eb474052a4a55b3ca6edaeecc/server.jar",
    "14w29a": "https://launcher.mojang.com/v1/objects/c16a61be653b5921391c55b337640ddfd7a5b472/server.jar",
    "14w29b": "https://launcher.mojang.com/v1/objects/b81bb5f919d5489859e9a38c7f6b49e6931a8cc8/server.jar",
    "14w30a": "https://launcher.mojang.com/v1/objects/cb7bd4bebcb40c128a571c8f15fe1990b1f50a32/server.jar",
    "14w30b": "https://launcher.mojang.com/v1/objects/ee24a6e63b007b9ec97a591afe1a29a6bbbfe143/server.jar",
    "14w30c": "https://launcher.mojang.com/v1/objects/2c936d1f410d636a348f100ab926d94d92b743b7/server.jar",
    "14w31a": "https://launcher.mojang.com/v1/objects/05fde0b4039104a27df8c7b95d327ecafc06cde7/server.jar",
    "14w32a": "https://launcher.mojang.com/v1/objects/d3b96be87d921fa4f95ea43e5283a253b778f24e/server.jar",
    "14w32b": "https://launcher.mojang.com/v1/objects/8aa6b045d31cc4a9224ecce602e9f5f748d8f460/server.jar",
    "14w32c": "https://launcher.mojang.com/v1/objects/5fee0612322feaf374867336375810580da6fab9/server.jar",
    "14w32d": "https://launcher.mojang.com/v1/objects/83d7acb6f94dc606591ebe4d7a06ad29127cd3de/server.jar",
    "14w33a": "https://launcher.mojang.com/v1/objects/6c0d06c1b3d8c3365be6e1b9b269725eb4e05ee7/server.jar",
    "14w33b": "https://launcher.mojang.com/v1/objects/7e0e5511b0049ba92e5c991b6bd0264932559af2/server.jar",
    
}

# CLS
def limpiar_consola():
    if os.name == 'nt': # En Windows - On Windows
        os.system('cls')
    else: # For Linux
        os.system('clear')

# WINDOW TITLE
def window_title(title):
    if sys.platform.startswith('win32'): # En Windows - On Windows
        ctypes.windll.kernel32.SetConsoleTitleW(title)
    elif sys.platform.startswith('linux') or sys.platform.startswith('darwin'): # For Linux
        sys.stdout.write(f"\x1b]2;{title}\x07")

# BRING WINDOW TO FRONT
def front():
    if os.name == 'nt':  # For Windows
        os.system("echo off && echo ShowConsole && echo on")
    else:  # For Linux
        os.system("wmctrl -a 'Terminal'")

# ENGLISH
def eng():
    # CHANGE WINDOW TITLE
    window_title("Server Launcher for Minecraft")

    # SERVER STARTUP
    def ram():
        global servername
        limpiar_consola()
        sservers = {}
        if os.path.exists(SAVED_SERVERS):
            with open(SAVED_SERVERS, 'r') as file:
                for line in file:
                    line = line.strip()
                    if line and not line.startswith('#'):
                        key, value = line.split('<[=]>')
                        sservers[key.strip()] = value.strip()
            if sservers:
                limpiar_consola()
                print('Server Launcher for Minecraft\n-------------------------------------\n\n"Your Servers" List\n')
                server_keys = list(sservers.keys())
                for i, key in enumerate(server_keys, start=1):
                    print(f"({i}) {key}")
                nserv = colored("Add","cyan")
                delserv = colored("Delete","red")
                clearlist = colored("Clear","magenta")
                print(f"\n(N) {nserv} Server\n(D) {delserv} a Server from the list\n(C) {clearlist} List\n(R) Return to main menu")
                servsel = input("\nSelect one of the options or enter the number of the server to start= ").replace(" ", "")
                try:
                    if servsel.lower() == "n":
                        newserv = filedialog.askdirectory()
                        front()
                        servname = os.path.basename(newserv)
                        if newserv == "" or servname == "":
                            limpiar_consola()
                            print('Server Launcher for Minecraft\n-------------------------------------\n\nYou must select a folder to save it in "Your Servers" List.')
                            time.sleep(2.5)
                            ram()
                        if newserv and servname:
                            servname = colored(os.path.basename(newserv), "yellow")
                            servstring = f"{servname}<[=]>{newserv}\n"
                            os.makedirs(CONFIG_PATH, exist_ok=True)
                            with open(SAVED_SERVERS, 'r+') as file:
                                lines = file.readlines()
                                if servstring not in lines:
                                    file.write(servstring)
                        limpiar_consola()
                        print(f'Server Launcher for Minecraft\n-------------------------------------\n\nThe server "{servname}" has been saved.')
                        time.sleep(1.5)
                        ram()
                    elif servsel.lower() == "d":
                        def servdel():
                            limpiar_consola()
                            print("Server Launcher for Minecraft\n-------------------------------------\n\nSelect the server to delete from the list.\n")
                            for i, key in enumerate(server_keys, start=1):
                                print(f"({i}) {key}")
                            print("\n(N) Cancel\n(R) Return to main menu")
                            servsel = input("\nSelect one of the options or enter the number of the server to delete= ").replace(" ", "")
                            try:
                                if servsel.lower() == "r":
                                    eng()
                                elif servsel.lower() == "n":
                                    ram()
                                else:
                                    if any(char in "0123456789+-*/" for char in servsel):
                                        if not servsel[0].isalpha():
                                            servv = eval(servsel)
                                        else:
                                            servv = servsel
                                    else:
                                        servv = servsel
                                    servsel = int(servv)
                                    if 1 <= servsel <= len(server_keys):
                                        servsel = server_keys[servsel - 1]
                                        servpath = sservers[servsel]
                                        servestring = f"{servsel}<[=]>{servpath}\n"
                                    os.makedirs(CONFIG_PATH, exist_ok=True)
                                    with open(SAVED_SERVERS, 'r') as file:
                                        lines = file.readlines()
                                        os.makedirs(CONFIG_PATH, exist_ok=True)
                                        with open(SAVED_SERVERS, 'w') as file:
                                            for line in lines:
                                                if line != servestring:
                                                    file.write(line)
                                    limpiar_consola()
                                    print(f'Server Launcher for Minecraft\n-------------------------------------\n\nThe server "{servsel}" has been deleted from the list.')
                                    time.sleep(1.5)
                                    ram()             
                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                servdel()
                        servdel()
                    elif servsel.lower() == "c":
                        def lisclear():
                            limpiar_consola()
                            yess = colored("Yes","green")
                            noo = colored("No","red")
                            clearconfirm = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nAre you sure you want to clear the "Your Servers" List?\n\n(1) {yess}\n(2) {noo}\n\nSelect one of the options= ')
                            try:
                                if any(char in "0123456789+-*/" for char in clearconfirm):
                                    if not clearconfirm[0].isalpha():
                                        clearconf = eval(clearconfirm)
                                    else:
                                        clearconf = clearconfirm
                                else:
                                    clearconf = clearconfirm
                                clearconf = int(clearconf)
                                if clearconf == 1:
                                    os.makedirs(CONFIG_PATH, exist_ok=True)
                                    with open(SAVED_SERVERS, 'w') as file:
                                        file.write("# Server Launcher for Minecraft\n# Saved servers\n")
                                    limpiar_consola()
                                    print('Server Launcher for Minecraft\n-------------------------------------\n\nThe "Your Servers" List has been cleared.')
                                    time.sleep(1.5)
                                    ram()
                                elif clearconf == 2:
                                    ram()
                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                lisclear()
                        lisclear()
                    elif servsel.lower() == "r":
                        eng()
                    else:
                        if any(char in "0123456789+-*/" for char in servsel):
                            if not servsel[0].isalpha():
                                servv = eval(servsel)
                            else:
                                servv = servsel
                        else:
                            servv = servsel
                        servsel = int(servv)
                        if 1 <= servsel <= len(server_keys):
                            servsel = server_keys[servsel - 1]
                            servpath = sservers[servsel]
                            os.makedirs(servpath, exist_ok=True)
                            os.chdir(servpath)
                            servername = servsel
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    ram()
            else:
                os.makedirs(CONFIG_PATH, exist_ok=True)
                with open(SAVED_SERVERS, 'w') as file:
                    file.write("# Server Launcher for Minecraft\n# Saved servers\n")
                limpiar_consola()
                adds = colored("Add a Server","cyan")
                saveconfirm = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThere are no saved servers.\n\n(1) {adds}\n(2) Return to main menu\n\nSelect one of the options= ")
                try:
                    if any(char in "0123456789+-*/" for char in saveconfirm):
                        if not saveconfirm[0].isalpha():
                            saveconf = eval(saveconfirm)
                        else:
                            saveconf = saveconfirm
                    else:
                        saveconf = saveconfirm
                    saveconf = int(saveconf)
                    if saveconf == 1:
                        newserv = filedialog.askdirectory()
                        front()
                        servname = os.path.basename(newserv)
                        if newserv == "" or servname == "":
                            limpiar_consola()
                            print('Server Launcher for Minecraft\n-------------------------------------\n\nYou must select a folder to save it in "Your Servers" List.')
                            time.sleep(2.5)
                            ram()
                        if newserv and servname:
                            servname = colored(os.path.basename(newserv), "yellow")
                            servstring = f"{servname}<[=]>{newserv}\n"
                            os.makedirs(CONFIG_PATH, exist_ok=True)
                            with open(SAVED_SERVERS, 'r+') as file:
                                lines = file.readlines()
                                if servstring not in lines:
                                    file.write(servstring)
                        limpiar_consola()
                        print(f'Server Launcher for Minecraft\n-------------------------------------\n\nThe server "{servname}" has been saved.')
                        time.sleep(1.5)
                        ram()
                    elif saveconf == 2:
                        eng()
                    else:
                        ram()
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    ram()
        else:
            os.makedirs(CONFIG_PATH, exist_ok=True)
            with open(SAVED_SERVERS, 'w') as file:
                file.write("# Server Launcher for Minecraft\n# Saved servers\n")
            limpiar_consola()
            input('Server Launcher for Minecraft\n-------------------------------------\n\nThere are no saved servers.\n\nPress ENTER to select a folder with a Server and add it to "Your Servers" list.')
            newserv = filedialog.askdirectory()
            front()
            servname = os.path.basename(newserv)
            if newserv == "" or servname == "":
                limpiar_consola()
                print('Server Launcher for Minecraft\n-------------------------------------\n\nYou must select a folder to save it in "Your Servers" List.')
                time.sleep(2.5)
                ram()
            if newserv and servname:
                servname = colored(os.path.basename(newserv), "yellow")
                servstring = f"{servname}<[=]>{newserv}\n"
                with open(SAVED_SERVERS, 'r+') as file:
                    lines = file.readlines()
                    if servstring not in lines:
                        file.write(servstring)
            limpiar_consola()
            print(f'Server Launcher for Minecraft\n-------------------------------------\n\nThe server "{servname}" has been saved.')
            time.sleep(1.5)
            ram()
        if os.path.exists("server.jar"):
            # CONFIG
            def config():
                global nameserver
                limpiar_consola()
                props = "server.properties"
                if os.path.exists(props):
                    global properties
                    properties = {}
                    online = "Error"
                    hard = "Error"
                    pvp = "Error"
                    with open('server.properties', 'r') as file:
                        for line in file:
                            line = line.strip()
                            if line and not line.startswith('#'):
                                key, value = line.split('=')
                                properties[key.strip()] = value.strip()
                    if properties["online-mode"] == "false":
                        online = colored("ENABLE","green")
                    elif properties["online-mode"] == "true":
                        online = colored("DISABLE","red")
                    if properties["hardcore"] == "false":
                        hard = colored("ENABLE","green")
                    elif properties["hardcore"] == "true":
                        hard = colored("DISABLE","red")
                    if properties["pvp"] == "false":
                        pvp = colored("ENABLE","green")
                    elif properties["pvp"] == "true":
                        pvp = colored("DISABLE","red")
                    limpiar_consola()
                    confsel = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nLets manage "{nameserver}"!\n\n(1) {online} online mode\n(2) {hard} hardcore mode\n(3) {pvp} PvP\n(4) Change gamemode\n(5) Change difficulty\n(6) Change max players limit\n(7) Back\n(8) Return to main menu\n\nSelect one of the options= ')
                    if properties["online-mode"] == "false":
                        online = "ENABLE"
                    elif properties["online-mode"] == "true":
                        online = "DISABLE"
                    if properties["hardcore"] == "false":
                        hard = "ENABLE"
                    elif properties["hardcore"] == "true":
                        hard = "DISABLE"
                    if properties["pvp"] == "false":
                        pvp = "ENABLE"
                    elif properties["pvp"] == "true":
                        pvp = "DISABLE"
                    try:
                        if any(char in "0123456789+-*/" for char in confsel):
                            if not confsel[0].isalpha():
                                confug = eval(confsel)
                            else:
                                confug = confsel
                        else:
                            confug = confsel
                        confug = int(confug) 
                        if confug == 1:
                            if online == "ENABLE":
                                properties["online-mode"] = "true"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                online = colored("ENABLED","green")
                            elif online == "DISABLE":
                                properties["online-mode"] = "false"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                online = colored("DISABLED","red")
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nOnline mode has been {online}.")
                            time.sleep(1.5)
                            config()
                        elif confug == 2:
                            if hard == "ENABLE":
                                properties["hardcore"] = "true"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                hard = colored("ENABLED","green")
                            elif hard == "DISABLE":
                                properties["hardcore"] = "false"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                hard = colored("DISABLED","red")
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nHardcore mode has been {hard}.")
                            time.sleep(1.5)
                            config()
                        elif confug == 3:
                            if pvp == "ENABLE":
                                properties["pvp"] = "true"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                pvp = colored("ENABLED","green")
                            elif pvp == "DISABLE":
                                properties["pvp"] = "false"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                pvp = colored("DISABLED","red")
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nPvP has been {pvp}.")
                            time.sleep(1.5)
                            config()
                        elif confug == 4:
                            def juego():
                                global properties
                                modo = properties["gamemode"]
                                if modo == "survival" or modo == "0":
                                    modo = colored("SURVIVAL","cyan")
                                elif modo == "creative" or modo == "1":
                                    modo = colored("CREATIVE","cyan")
                                elif modo == "adventure" or modo == "2":
                                    modo = colored("ADVENTURE","cyan")
                                elif modo == "spectator" or modo == "3":
                                    modo = colored("SPECTATOR","cyan")
                                superv = colored("SURVIVAL","yellow")
                                creat = colored("CREATIVE","yellow")
                                avent = colored("ADVENTURE","yellow")
                                espect = colored("SPECTATOR","yellow")
                                limpiar_consola()
                                modosel = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe current game mode is {modo}.\n\n(1) Change to {superv} gamemode\n(2) Change to {creat} gamemode\n(3) Change to {avent} gamemode\n(4) Change to {espect} gamemode\n(5) Go back\n(6) Return to main menu\n\nSelect one of the options= ")
                                try:
                                    if any(char in "0123456789+-*/" for char in modosel):
                                        if not modosel[0].isalpha():
                                            coonf = eval(modosel)
                                        else:
                                            coonf = modosel
                                    else:
                                        coonf = modosel
                                    coonf = int(coonf)
                                    if coonf == 1:
                                        properties["gamemode"] = "0"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nGamemode has been set to {superv}.")
                                        time.sleep(1.5)
                                        juego()
                                    elif coonf == 2:
                                        properties["gamemode"] = "1"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nGamemode has been set to {creat}.")
                                        time.sleep(1.5)
                                        juego()
                                    elif coonf == 3:
                                        properties["gamemode"] = "2"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nGamemode has been set to {avent}.")
                                        time.sleep(1.5)
                                        juego()
                                    elif coonf == 4:
                                        properties["gamemode"] = "3"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nGamemode has been set to {espect}.")
                                        time.sleep(1.5)
                                        juego()
                                    elif coonf == 5:
                                        config()
                                    elif coonf == 6:
                                        eng()
                                    else:
                                        juego()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    juego()
                            juego()
                        elif confug == 5:
                            def difconf():
                                global properties
                                dificultad = properties["difficulty"]
                                if dificultad == "peaceful" or dificultad == "0":
                                    dificultad = colored("PEACEFUL","cyan")
                                elif dificultad == "easy" or dificultad == "1":
                                    dificultad = colored("EASY","cyan")
                                elif dificultad == "normal" or dificultad == "2":
                                    dificultad = colored("NORMAL","cyan")
                                elif dificultad == "hard" or dificultad == "3":
                                    dificultad = colored("HARD","cyan")
                                pacif = colored("PEACEFUL","yellow")
                                facil = colored("EASY","yellow")
                                normal = colored("NORMAL","yellow")
                                dificil = colored("HARD","yellow")
                                limpiar_consola()
                                difsel = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe current difficulty is {dificultad}.\n\n(1) Change difficulty to {pacif}\n(2) Change difficulty to {facil}\n(3) Change difficulty to {normal}\n(4) Change difficulty to {dificil}\n(5) Go back\n(6) Return to main menu\n\nSelect one of the options= ")
                                try:
                                    if any(char in "0123456789+-*/" for char in difsel):
                                        if not difsel[0].isalpha():
                                            difcc = eval(difsel)
                                        else:
                                            difcc = difsel
                                    else:
                                        difcc = difsel
                                    difcc = int(difcc)
                                    if difcc == 1:
                                        properties["difficulty"] = "0"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nDifficulty has been set to {pacif}.")
                                        time.sleep(1.5)
                                        difconf()
                                    elif difcc == 2:
                                        properties["difficulty"] = "1"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nDifficulty has been set to {facil}.")
                                        time.sleep(1.5)
                                        difconf()
                                    elif difcc == 3:
                                        properties["difficulty"] = "2"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nDifficulty has been set to {normal}.")
                                        time.sleep(1.5)
                                        difconf()
                                    elif difcc == 4:
                                        properties["difficulty"] = "3"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Server Launcher for Minecraft\n-------------------------------------\n\nDifficulty has been set to {dificil}.")
                                        time.sleep(1.5)
                                        difconf()
                                    elif difcc == 5:
                                        config()
                                    elif difcc == 6:
                                        eng()
                                    else:
                                        difconf()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    difconf()
                            difconf()
                        elif confug == 6:
                            def playct():
                                global properties
                                players = colored(properties["max-players"],"cyan")
                                limpiar_consola()
                                newpl = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe current player limit is a maximum of {players}.\n\n(N) Go back\n(M) Return to main menu\n\nSelect one of the options or enter the new player limit= ").replace(" ", "")
                                try:
                                    if newpl.lower() == "n":
                                        config()
                                    elif newpl.lower() == "m":
                                        eng()
                                    else:
                                        if any(char in "0123456789+-*/" for char in newpl):
                                            if not newpl[0].isalpha():
                                                entero = eval(newpl)
                                            else:
                                                entero = newpl
                                        else:
                                            entero = newpl
                                        entero = int(entero)
                                        if entero <= 0 or entero > 100000:
                                            limpiar_consola()
                                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nEnter a valid number between 1 and 100,000.")
                                            time.sleep(1.5)
                                            playct()
                                        else:
                                            properties["max-players"] = entero
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            entero = colored(str(entero),"yellow")
                                            limpiar_consola()
                                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe maximum player limit is now {entero}.")
                                            time.sleep(1.5)
                                            playct()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    playct()
                            playct()
                        elif confug == 7:
                            run_server()
                        elif confug == 8:
                            eng()
                        else:
                            config()
                    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                        config()
                else:
                    limpiar_consola()
                    input("Server Launcher for Minecraft\n-------------------------------------\n\nThe server configuration files do not exist yet or are not available.\nYou must start the server properly at least once before you can configure it.\n\nPress ENTER to continue.")
                    run_server()
            def run_server():
                global servername
                global valor
                global nameserver
                valor1 = None
                gbormb = None
                vjava = None
                if valor == None:
                    valor = "GB"
                    valor1 = colored("GIGABYTES","cyan")
                    vjava = "G"
                    gbormb = colored("MEGABYTES","yellow")
                if valor == "GB":
                    valor1 = colored("GIGABYTES","cyan")
                    vjava = "G"
                    gbormb = colored("MEGABYTES","yellow")
                elif valor == "MB":
                    valor1 = colored("MEGABYTES","cyan")
                    vjava = "M"
                    gbormb = colored("GIGABYTES","yellow")
                nameserver = servername
                limpiar_consola()
                gbs = 0
                rammount = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nYou are about to start the Server "{nameserver}"\n\n(M) Manage Server\n(C) Use RAM in {gbormb}\n(B) Back\n(N) Return to main menu\n\nSelect one of the options or enter the {valor1} of RAM to assing to the server= ').replace(" ", "")
                try:
                    if rammount.lower() == "m":
                        config()  
                    if rammount.lower() == "c":
                        if valor == "GB":
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nNow the RAM is on {gbormb}.")
                            time.sleep(1.5)
                            valor = "MB"
                            run_server()
                        elif valor == "MB":
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nNow the RAM is on {gbormb}.")
                            time.sleep(1.5)
                            valor = "GB"
                            run_server()
                    elif rammount.lower() == "b":
                        ram()
                    elif rammount.lower() == "n":
                        eng()
                    else:
                        if any(char in "0123456789+-*/" for char in rammount):
                            if not rammount[0].isalpha():
                                gbs = eval(rammount)
                            else:
                                gbs = rammount
                        else:
                            gbs = rammount
                        gbs = int(gbs)
                        if valor == "GB" and (gbs <= 0 or gbs > 75):
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nEnter a valid amount between 1 and 75 Gigabytes.")
                            time.sleep(1.5)
                            run_server()
                        elif valor == "MB" and (gbs <= 511 or gbs > 76800):
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nEnter a valid amount between 512 and 76,800 Megabytes.")
                            time.sleep(1.5)
                            run_server()
                        else:
                            eula = "eula.txt"
                            with open(eula, "w") as reemplazo:
                                reemplazo.write("eula=true")
                            limpiar_consola()
                            print(f"Server Launcher for Minecraft\n-------------------------------------\n\nStarting the server with {gbs}{valor} of RAM.\n")
                            comando_java = f"java -Xmx{gbs}{vjava} -Xms{gbs}{vjava} -jar server.jar nogui"
                            subprocess.run(comando_java, shell=True)
                            fyh_sistema = datetime.datetime.now()
                            fecha_cerrado = str(fyh_sistema.strftime("%d/%m/%Y"))
                            hora_cerrado = str(fyh_sistema.strftime("%H:%M:%S"))
                            input("\nPress ENTER to continue.")
                            limpiar_consola()
                            input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe server has closed on {fecha_cerrado} at {hora_cerrado}.\n\nYou can check the console log in the 'logs' folder inside your Server's main folder.\n\nPress ENTER to continue.")
                            ram()
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    run_server()
            run_server()
        else:
            limpiar_consola()
            print('Server Launcher for Minecraft\n-------------------------------------\n\n"server.jar" not found in this folder.\n\nAre you sure this is a Server?')
            time.sleep(2.5)
            ram()

    # INSTALL NEW SERVER
    def installmenu():
        global newserver
        global foldname
        limpiar_consola()
        inconfirm = input("Server Launcher for Minecraft\n-------------------------------------\n\nFirst, lets select a folder to save your New Server's files.\n\n(1) Select folder for the new Server\n(2) Cancel\n\nSelect one of the options= ").replace(" ", "")
        try:
            if any(char in "0123456789+-*/" for char in inconfirm):
                if not inconfirm[0].isalpha():
                    inconf = eval(inconfirm)
                else:
                    inconf = inconfirm
            else:
                inconf = inconfirm
            inconf = int(inconf)
            if inconf == 1:
                def reselect():
                    global newserver
                    global foldname
                    newserver = filedialog.askdirectory()
                    front()
                    foldname = colored(os.path.basename(newserver), "green")
                    if newserver == "" or foldname == "":
                        limpiar_consola()
                        print('Server Launcher for Minecraft\n-------------------------------------\n\nYou must select a folder to save the New Server.')
                        time.sleep(2.5)
                        installmenu()
                    os.makedirs(newserver, exist_ok=True)
                    os.chdir(newserver)
                    if newserver and foldname:
                        def vers_select():
                            global newserver
                            global foldname
                            limpiar_consola()
                            verss = input(f'Server Launcher for Minecraft\n-------------------------------------\n\nYour New Server will be saved in "{foldname}".\n\n(L) List of available versions\n(R) Re-select a folder for the New server\n(N) Return to main menu\n\nSelect one of the options or type the New Server version to install= ').replace(" ", "")
                            try:
                                def servdownload(versionname):
                                    global newserver
                                    global foldname
                                    version = versionname.lower()
                                    url = MCVERSIONS[version]
                                    limpiar_consola()
                                    print(f'Server Launcher for Minecraft\n-------------------------------------\n\nYour New Server is being downloaded.\n\nVersion: {version}\nTarget Folder: "{foldname}"\n\nPlease wait...\n')
                                    time.sleep(0.5)
                                    os.makedirs(newserver, exist_ok=True)
                                    os.chdir(newserver)
                                    try:
                                        response = requests.get(url, stream=True)
                                        total_size_in_bytes = int(response.headers.get('content-length', 0))
                                        block_size = 1024  # 1 Kibibyte
                                        total_data = 0
                                        with open("server.jar", "wb") as file:
                                            for data in response.iter_content(block_size):
                                                total_data += len(data)
                                                file.write(data)
                                                completed = int(50 * total_data / total_size_in_bytes)
                                                print("\r[%s%s]" % ('#' * completed, '.' * (50 - completed)), end='')
                                        print()
                                        limpiar_consola()
                                        input('Server Launcher for Minecraft\n-------------------------------------\n\nThe server has been installed successfully and added to "Your Servers" list.\n\nPress ENTER to continue.')
                                        servname = os.path.basename(newserver)
                                        servstring = f"{servname}<[=]>{newserver}\n"
                                        os.makedirs(CONFIG_PATH, exist_ok=True)
                                        with open(SAVED_SERVERS, 'r+') as file:
                                            lines = file.readlines()
                                            if servstring not in lines:
                                                file.write(servstring)
                                        eng()
                                    except Exception:
                                        def erragain():
                                            limpiar_consola()
                                            yup = colored("Yes","green")
                                            nop = colored("No","red")
                                            errtry = input(f"Server Launcher for Minecraft\n-------------------------------------\n\nAn error occurred while downloading the server.\nTry again?\n\n(1) {yup}\n(2) {nop}\n\nSelect one of the options= ")
                                            try:
                                                if any(char in "0123456789+-*/" for char in errtry):
                                                    if not errtry[0].isalpha():
                                                        errtr = eval(errtry)
                                                    else:
                                                        errtr = errtry
                                                else:
                                                    errtr = errtry
                                                errtr = int(errtr)
                                                if errtr == 1:
                                                    servdownload(version)
                                                elif errtr == 2:
                                                    eng()
                                                else:
                                                    erragain()
                                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                                erragain()
                                            erragain()
                                if verss.lower() == "n":
                                    eng()
                                elif verss.lower() == "r":
                                    reselect()
                                elif verss.lower() == "l":
                                    def versionl():
                                        limpiar_consola()
                                        print("Server Launcher for Minecraft\n-------------------------------------\n\nAvailable versions:\n")
                                        for i, version in enumerate(MCVERSIONS, start=1):
                                            print(f"(-) {version}")
                                        listselection = input("\n(B) Back\n(R) Return to main menu\n\nType a version or select one of the options=")
                                        try:
                                            if listselection.lower() == "b":
                                                vers_select()
                                            elif listselection.lower() == "r":
                                                eng()
                                            elif listselection.lower() in MCVERSIONS.keys():
                                                servdownload(listselection)
                                            else:
                                                versionl()
                                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                            versionl()
                                    versionl()
                                elif verss.lower() in MCVERSIONS.keys():
                                    servdownload(verss)
                                else:
                                    vers_select()
                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                installmenu()
                        vers_select()
                    else:
                        installmenu()
                reselect()
            elif inconf == 2:
                eng()
            else:
                installmenu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            installmenu()  

    # LICENSE AND EXTRAS
    def about():
        limpiar_consola()
        copyr = input("Server Launcher for Minecraft\n-------------------------------------\n\nMIT License - Copyright (c) 2024 NGDPL Nk\n\nSSTools4MC v24.06.27 - ADDED SUPPORT FOR 1.21\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n\n-------------------------------------\n\n(1) View repository in the browser\n(2) View license in the browser\n(3) Return to main menu\n\nSelect one of the options= ")
        try:
            if any(char in "0123456789+-*/" for char in copyr):
                if not copyr[0].isalpha():
                    selec = eval(copyr)
                else:
                    selec = copyr
            else:
                selec = copyr
            selec = int(selec)
            if selec == 1:
                url = colored("https://github.com/NGDPLNk/SSTools4MC","cyan")
                limpiar_consola()
                input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe repository will open in your browser.\n\n{url}\n\nPress ENTER to continue.")
                url = "https://github.com/NGDPLNk/SSTools4MC"
                webbrowser.open(url)
                about()
            elif selec == 2:
                url = colored("https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE","cyan")
                limpiar_consola()
                input(f"Server Launcher for Minecraft\n-------------------------------------\n\nThe license will open in your browser.\n\n{url}\n\nPress ENTER to continue.")
                url = "https://github.com/NGDPLNk/SSTools4MC/blob/main/LICENSE"
                webbrowser.open(url)
                about()
            elif selec == 3:
                eng()
            else:
                about()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            about()

    # EXIT
    def exiit():
        limpiar_consola()
        print("--------------------------------------------\nThank you for using this tool\nMIT License - Copyright (c) 2024 NGDPL Nk\n--------------------------------------------\n")
        time.sleep(1.2)
        sys.exit()

    # MAIN MENU
    def menu():
        os.makedirs(SSTOOLS_FOLDER, exist_ok=True)
        os.chdir(SSTOOLS_FOLDER)
        limpiar_consola()
        seleccion = input("Server Launcher for Minecraft\n-------------------------------------\n\nHi! You are in the main menu.\n\n(1) Start a Server\n(2) Install a New Server\n(3) Extras\n(4) Change Language\n(5) Exit\n\nSelect one of the options= ")
        try:
            if any(char in "0123456789+-*/" for char in seleccion):
                if not seleccion[0].isalpha():
                    sel = eval(seleccion)
                else:
                    sel = seleccion
            else:
                sel = seleccion
            sel = int(sel)
            if sel == 1:
                ram()
            elif sel == 2:
                installmenu()
            elif sel == 3:
                about()
            elif sel == 4:
                esp()
            elif sel == 5:
                exiit()
            menu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            menu()

    menu()

# ESPAÑOL
def esp():
    # CHANGE WINDOW TITLE
    window_title("Lanzador de Servidores para Minecraft")

    # SERVER STARTUP
    def ram():
        global servername
        limpiar_consola()
        sservers = {}
        if os.path.exists(SAVED_SERVERS):
            with open(SAVED_SERVERS, 'r') as file:
                for line in file:
                    line = line.strip()
                    if line and not line.startswith('#'):
                        key, value = line.split('<[=]>')
                        sservers[key.strip()] = value.strip()
            if sservers:
                limpiar_consola()
                print('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLista "Tus Servidores"\n')
                server_keys = list(sservers.keys())
                for i, key in enumerate(server_keys, start=1):
                    print(f"({i}) {key}")
                nserv = colored("Añadir","cyan")
                delserv = colored("Eliminar","red")
                clearlist = colored("Limpiar","magenta")
                print(f"\n(N) {nserv} Server\n(D) {delserv} un Server de la Lista\n(C) {clearlist} Lista\n(R) Volver al menú principal")
                servsel = input("\nElige una de las opciones o escribe el número del Server que iniciarás= ").replace(" ", "")
                try:
                    if servsel.lower() == "n":
                        newserv = filedialog.askdirectory()
                        front()
                        servname = os.path.basename(newserv)
                        if newserv == "" or servname == "":
                            limpiar_consola()
                            print('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nDebes elegir una carpeta para guardarla en la Lista "Tus Servidores".')
                            time.sleep(2.5)
                            ram()
                        if newserv and servname:
                            servname = colored(os.path.basename(newserv), "yellow")
                            servstring = f"{servname}<[=]>{newserv}\n"
                            os.makedirs(CONFIG_PATH, exist_ok=True)
                            with open(SAVED_SERVERS, 'r+') as file:
                                lines = file.readlines()
                                if servstring not in lines:
                                    file.write(servstring)
                        limpiar_consola()
                        print(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl Server "{servname}" ha sido guardado.')
                        time.sleep(1.5)
                        ram()
                    elif servsel.lower() == "d":
                        def servdel():
                            limpiar_consola()
                            print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nSelecciona el Server que eliminarás de la lista.\n")
                            for i, key in enumerate(server_keys, start=1):
                                print(f"({i}) {key}")
                            print("\n(N) Cancelar\n(R) Volver al menú principal")
                            servsel = input("\nSelecciona una de las opciones o ingresa el número del Server que eliminarás de la lista= ").replace(" ", "")
                            try:
                                if servsel.lower() == "r":
                                    esp()
                                elif servsel.lower() == "n":
                                    ram()
                                else:
                                    if any(char in "0123456789+-*/" for char in servsel):
                                        if not servsel[0].isalpha():
                                            servv = eval(servsel)
                                        else:
                                            servv = servsel
                                    else:
                                        servv = servsel
                                    servsel = int(servv)
                                    if 1 <= servsel <= len(server_keys):
                                        servsel = server_keys[servsel - 1]
                                        servpath = sservers[servsel]
                                        servestring = f"{servsel}<[=]>{servpath}\n"
                                    os.makedirs(CONFIG_PATH, exist_ok=True)
                                    with open(SAVED_SERVERS, 'r') as file:
                                        lines = file.readlines()
                                        os.makedirs(CONFIG_PATH, exist_ok=True)
                                        with open(SAVED_SERVERS, 'w') as file:
                                            for line in lines:
                                                if line != servestring:
                                                    file.write(line)
                                    limpiar_consola()
                                    print(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl Server "{servsel}" ha sido eliminado de la lista.')
                                    time.sleep(1.5)
                                    ram()             
                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                servdel()
                        servdel()
                    elif servsel.lower() == "c":
                        def lisclear():
                            limpiar_consola()
                            yess = colored("Sí","green")
                            noo = colored("No","red")
                            clearconfirm = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEstás seguro de que quieres limpiar la Lista "Tus Servidores"?\n\n(1) {yess}\n(2) {noo}\n\nElige una de las opciones= ')
                            try:
                                if any(char in "0123456789+-*/" for char in clearconfirm):
                                    if not clearconfirm[0].isalpha():
                                        clearconf = eval(clearconfirm)
                                    else:
                                        clearconf = clearconfirm
                                else:
                                    clearconf = clearconfirm
                                clearconf = int(clearconf)
                                if clearconf == 1:
                                    os.makedirs(CONFIG_PATH, exist_ok=True)
                                    with open(SAVED_SERVERS, 'w') as file:
                                        file.write("# Lanzador de Servidores para Minecraft\n# Servers guardados\n")
                                    limpiar_consola()
                                    print('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa Lista "Tus Servidores" ha sido limpiada.')
                                    time.sleep(1.5)
                                    ram()
                                elif clearconf == 2:
                                    ram()
                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                lisclear()
                        lisclear()
                    elif servsel.lower() == "r":
                        esp()
                    else:
                        if any(char in "0123456789+-*/" for char in servsel):
                            if not servsel[0].isalpha():
                                servv = eval(servsel)
                            else:
                                servv = servsel
                        else:
                            servv = servsel
                        servsel = int(servv)
                        if 1 <= servsel <= len(server_keys):
                            servsel = server_keys[servsel - 1]
                            servpath = sservers[servsel]
                            os.makedirs(servpath, exist_ok=True)
                            os.chdir(servpath)
                            servername = servsel
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    ram()
            else:
                os.makedirs(CONFIG_PATH, exist_ok=True)
                with open(SAVED_SERVERS, 'w') as file:
                    file.write("# Lanzador de Servidores para Minecraft\n# Servidores Guardados\n")
                limpiar_consola()
                adds = colored("Añadir un Server","cyan")
                saveconfirm = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo tienes ningún Server guardado.\n\n(1) {adds}\n(2) Volver al menú principal\n\nElige una de las opciones= ")
                try:
                    if any(char in "0123456789+-*/" for char in saveconfirm):
                        if not saveconfirm[0].isalpha():
                            saveconf = eval(saveconfirm)
                        else:
                            saveconf = saveconfirm
                    else:
                        saveconf = saveconfirm
                    saveconf = int(saveconf)
                    if saveconf == 1:
                        newserv = filedialog.askdirectory()
                        front()
                        servname = os.path.basename(newserv)
                        if newserv == "" or servname == "":
                            limpiar_consola()
                            print('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nDebes elegir una carpeta para guardarla en la Lista "Tus Servidores".')
                            time.sleep(2.5)
                            ram()
                        if newserv and servname:
                            servname = colored(os.path.basename(newserv), "yellow")
                            servstring = f"{servname}<[=]>{newserv}\n"
                            os.makedirs(CONFIG_PATH, exist_ok=True)
                            with open(SAVED_SERVERS, 'r+') as file:
                                lines = file.readlines()
                                if servstring not in lines:
                                    file.write(servstring)
                        limpiar_consola()
                        print(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl Server "{servname}" ha sido guardado.')
                        time.sleep(1.5)
                        ram()
                    elif saveconf == 2:
                        esp()
                    else:
                        ram()
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    ram()
        else:
            os.makedirs(CONFIG_PATH, exist_ok=True)
            with open(SAVED_SERVERS, 'w') as file:
                file.write("# Lanzador de Servidores para Minecraft\n# Servers Guardados\n")
            limpiar_consola()
            input('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo tienes ningún Server guardado.\n\nPresiona ENTER para seleccionar una carpeta con tu Server y guardarlo en la Lista "Tus Servidores".')
            newserv = filedialog.askdirectory()
            front()
            servname = os.path.basename(newserv)
            if newserv == "" or servname == "":
                limpiar_consola()
                print('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nDebes elegir una carpeta para guardarla en la Lista "Tus Servidores".')
                time.sleep(2.5)
                ram()
            if newserv and servname:
                servname = colored(os.path.basename(newserv), "yellow")
                servstring = f"{servname}<[=]>{newserv}\n"
                with open(SAVED_SERVERS, 'r+') as file:
                    lines = file.readlines()
                    if servstring not in lines:
                        file.write(servstring)
            limpiar_consola()
            print(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl Server "{servname}" ha sido guardado.')
            time.sleep(1.5)
            ram()
        if os.path.exists("server.jar"):
            # CONFIG
            def config():
                global nameserver
                limpiar_consola()
                props = "server.properties"
                if os.path.exists(props):
                    global properties
                    properties = {}
                    online = "Error"
                    hard = "Error"
                    pvp = "Error"
                    with open('server.properties', 'r') as file:
                        for line in file:
                            line = line.strip()
                            if line and not line.startswith('#'):
                                key, value = line.split('=')
                                properties[key.strip()] = value.strip()
                    if properties["online-mode"] == "false":
                        online = colored("ACTIVAR","green")
                    elif properties["online-mode"] == "true":
                        online = colored("DESACTIVAR","red")
                    if properties["hardcore"] == "false":
                        hard = colored("ACTIVAR","green")
                    elif properties["hardcore"] == "true":
                        hard = colored("DESACTIVAR","red")
                    if properties["pvp"] == "false":
                        pvp = colored("ACTIVAR","green")
                    elif properties["pvp"] == "true":
                        pvp = colored("DESACTIVAR","red")
                    limpiar_consola()
                    confsel = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nConfiguremos "{nameserver}"!\n\n(1) {online} modo online\n(2) {hard} modo extremo\n(3) {pvp} PvP\n(4) Cambiar modo de juego\n(5) Cambiar dificultad\n(6) Cambiar el límite de jugadores\n(7) Atrás\n(8) Volver al menú principal\n\nElige una de las opciones= ')
                    if properties["online-mode"] == "false":
                        online = "ENABLE"
                    elif properties["online-mode"] == "true":
                        online = "DISABLE"
                    if properties["hardcore"] == "false":
                        hard = "ENABLE"
                    elif properties["hardcore"] == "true":
                        hard = "DISABLE"
                    if properties["pvp"] == "false":
                        pvp = "ENABLE"
                    elif properties["pvp"] == "true":
                        pvp = "DISABLE"
                    try:
                        if any(char in "0123456789+-*/" for char in confsel):
                            if not confsel[0].isalpha():
                                confug = eval(confsel)
                            else:
                                confug = confsel
                        else:
                            confug = confsel
                        confug = int(confug) 
                        if confug == 1:
                            if online == "ENABLE":
                                properties["online-mode"] = "true"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                online = colored("ACTIVADO","green")
                            elif online == "DISABLE":
                                properties["online-mode"] = "false"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                online = colored("DESACTIVADO","red")
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo online se ha {online}.")
                            time.sleep(1.5)
                            config()
                        elif confug == 2:
                            if hard == "ENABLE":
                                properties["hardcore"] = "true"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                hard = colored("ACTIVADO","green")
                            elif hard == "DISABLE":
                                properties["hardcore"] = "false"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                hard = colored("DESACTIVADO","red")
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo extremo se ha {hard}.")
                            time.sleep(1.5)
                            config()
                        elif confug == 3:
                            if pvp == "ENABLE":
                                properties["pvp"] = "true"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                pvp = colored("ACTIVADO","green")
                            elif pvp == "DISABLE":
                                properties["pvp"] = "false"
                                with open('server.properties', 'w') as file:
                                    for key, value in properties.items():
                                        file.write(f'{key}={value}\n')
                                pvp = colored("DESACTIVADO","red")
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl PvP se ha {pvp}.")
                            time.sleep(1.5)
                            config()
                        elif confug == 4:
                            def juego():
                                global properties
                                modo = properties["gamemode"]
                                if modo == "survival" or modo == "0":
                                    modo = colored("SUPERVIVENCIA","cyan")
                                elif modo == "creative" or modo == "1":
                                    modo = colored("CREATIVO","cyan")
                                elif modo == "adventure" or modo == "2":
                                    modo = colored("AVENTURA","cyan")
                                elif modo == "spectator" or modo == "3":
                                    modo = colored("ESPECTADOR","cyan")
                                superv = colored("SUPERVIVENCIA","yellow")
                                creat = colored("CREATIVO","yellow")
                                avent = colored("AVENTURA","yellow")
                                espect = colored("ESPECTADOR","yellow")
                                limpiar_consola()
                                modosel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego actual es {modo}.\n\n(1) Cambiar a modo {superv}\n(2) Cambiar a modo {creat}\n(3) Cambiar a modo {avent}\n(4) Cambiar a modo {espect}\n(5) Atrás\n(6) Volver al menú principal\n\nElige una de las opciones= ")
                                try:
                                    if any(char in "0123456789+-*/" for char in modosel):
                                        if not modosel[0].isalpha():
                                            coonf = eval(modosel)
                                        else:
                                            coonf = modosel
                                    else:
                                        coonf = modosel
                                    coonf = int(coonf)
                                    if coonf == 1:
                                        properties["gamemode"] = "0"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego se ha cambiado a {superv}.")
                                        time.sleep(1.5)
                                        juego()
                                    elif coonf == 2:
                                        properties["gamemode"] = "1"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego se ha cambiado a {creat}.")
                                        time.sleep(1.5)
                                        juego()
                                    elif coonf == 3:
                                        properties["gamemode"] = "2"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego se ha cambiado a {avent}.")
                                        time.sleep(1.5)
                                        juego()
                                    elif coonf == 4:
                                        properties["gamemode"] = "3"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl modo de juego se ha cambiado a {espect}.")
                                        time.sleep(1.5)
                                        juego()
                                    elif coonf == 5:
                                        config()
                                    elif coonf == 6:
                                        esp()
                                    else:
                                        juego()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    juego()
                            juego()
                        elif confug == 5:
                            def difconf():
                                global properties
                                dificultad = properties["difficulty"]
                                if dificultad == "peaceful" or dificultad == "0":
                                    dificultad = colored("PACÍFICO","cyan")
                                elif dificultad == "easy" or dificultad == "1":
                                    dificultad = colored("FÁCIL","cyan")
                                elif dificultad == "normal" or dificultad == "2":
                                    dificultad = colored("NORMAL","cyan")
                                elif dificultad == "hard" or dificultad == "3":
                                    dificultad = colored("DIFÍCIL","cyan")
                                pacif = colored("PACÍFICO","yellow")
                                facil = colored("FÁCIL","yellow")
                                normal = colored("NORMAL","yellow")
                                dificil = colored("DIFÍCIL","yellow")
                                limpiar_consola()
                                difsel = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad actual es {dificultad}.\n\n(1) Cambiar a dificultad {pacif}\n(2) Cambiar a dificultad {facil}\n(3) Cambiar a dificultad {normal}\n(4) Cambiar a dificultad {dificil}\n(5) Atrás\n(6) Volver al menú principal\n\nElige una de las opciones= ")
                                try:
                                    if any(char in "0123456789+-*/" for char in difsel):
                                        if not difsel[0].isalpha():
                                            difcc = eval(difsel)
                                        else:
                                            difcc = difsel
                                    else:
                                        difcc = difsel
                                    difcc = int(difcc)
                                    if difcc == 1:
                                        properties["difficulty"] = "0"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad se ha cambiado a {pacif}.")
                                        time.sleep(1.5)
                                        difconf()
                                    elif difcc == 2:
                                        properties["difficulty"] = "1"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad se ha cambiado a {facil}.")
                                        time.sleep(1.5)
                                        difconf()
                                    elif difcc == 3:
                                        properties["difficulty"] = "2"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad se ha cambiado a {normal}.")
                                        time.sleep(1.5)
                                        difconf()
                                    elif difcc == 4:
                                        properties["difficulty"] = "3"
                                        with open('server.properties', 'w') as file:
                                            for key, value in properties.items():
                                                file.write(f'{key}={value}\n')
                                        limpiar_consola()
                                        print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa dificultad se ha cambiado a {dificil}.")
                                        time.sleep(1.5)
                                        difconf()
                                    elif difcc == 5:
                                        config()
                                    elif difcc == 6:
                                        esp()
                                    else:
                                        difconf()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    difconf()
                            difconf()
                        elif confug == 6:
                            def playct():
                                global properties
                                players = colored(properties["max-players"],"cyan")
                                limpiar_consola()
                                newpl = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite de jugadores actual es de {players} jugadores.\n\n(N) Atrás\n(M) Volver al menú principal\n\nElige una de las opciones o ingresa el nuevo límite de jugadores= ").replace(" ", "")
                                try:
                                    if newpl.lower() == "n":
                                        config()
                                    elif newpl.lower() == "m":
                                        esp()
                                    else:
                                        if any(char in "0123456789+-*/" for char in newpl):
                                            if not newpl[0].isalpha():
                                                entero = eval(newpl)
                                            else:
                                                entero = newpl
                                        else:
                                            entero = newpl
                                        entero = int(entero)
                                        if entero <= 0 or entero > 100000:
                                            limpiar_consola()
                                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIngresa un número válido entre 1 y 100.000.")
                                            time.sleep(1.5)
                                            playct()
                                        else:
                                            properties["max-players"] = entero
                                            with open('server.properties', 'w') as file:
                                                for key, value in properties.items():
                                                    file.write(f'{key}={value}\n')
                                            entero = colored(str(entero),"yellow")
                                            limpiar_consola()
                                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl límite de jugadores ahora es {entero}.")
                                            time.sleep(1.5)
                                            playct()
                                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                    playct()
                            playct()
                        elif confug == 7:
                            run_server()
                        elif confug == 8:
                            esp()
                        else:
                            config()
                    except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                        config()
                else:
                    limpiar_consola()
                    input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLos achivos de configuración del Server aún no existen o no están disponibles.\nDebes iniciar el Server correctamente al menos 1 vez antes de poder configurarlo.\n\nPresiona ENTER para continuar.")
                    run_server()
            def run_server():
                global servername
                global valor
                global nameserver
                valor1 = None
                gbormb = None
                vjava = None
                if valor == None:
                    valor = "GB"
                    valor1 = colored("GIGABYTES","cyan")
                    vjava = "G"
                    gbormb = colored("MEGABYTES","yellow")
                if valor == "GB":
                    valor1 = colored("GIGABYTES","cyan")
                    vjava = "G"
                    gbormb = colored("MEGABYTES","yellow")
                elif valor == "MB":
                    valor1 = colored("MEGABYTES","cyan")
                    vjava = "M"
                    gbormb = colored("GIGABYTES","yellow")
                nameserver = servername
                limpiar_consola()
                gbs = 0
                rammount = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEstás a punto de iniciar el Server "{nameserver}"\n\n(M) Configurar Server\n(C) Usar RAM en {gbormb}\n(B) Atrás\n(N) Volver al menú principal\n\nElige una de las opciones o ingresa los {valor1} de RAM para asignar a tu Server= ').replace(" ", "")
                try:
                    if rammount.lower() == "m":
                        config()  
                    if rammount.lower() == "c":
                        if valor == "GB":
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nAhora la RAM está en {gbormb}.")
                            time.sleep(1.5)
                            valor = "MB"
                            run_server()
                        elif valor == "MB":
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nAhora la RAM está en {gbormb}.")
                            time.sleep(1.5)
                            valor = "GB"
                            run_server()
                    elif rammount.lower() == "b":
                        ram()
                    elif rammount.lower() == "n":
                        esp()
                    else:
                        if any(char in "0123456789+-*/" for char in rammount):
                            if not rammount[0].isalpha():
                                gbs = eval(rammount)
                            else:
                                gbs = rammount
                        else:
                            gbs = rammount
                        gbs = int(gbs)
                        if valor == "GB" and (gbs <= 0 or gbs > 75):
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIngresa una cantidad válida entre 1 y 75 Gigabytes.")
                            time.sleep(1.5)
                            run_server()
                        elif valor == "MB" and (gbs <= 511 or gbs > 76800):
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIngresa una cantidad válida entre 512 y 76.800 Megabytes.")
                            time.sleep(1.5)
                            run_server()
                        else:
                            eula = "eula.txt"
                            with open(eula, "w") as reemplazo:
                                reemplazo.write("eula=true")
                            limpiar_consola()
                            print(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nIniciando el Server con {gbs}{valor} de RAM.\n")
                            comando_java = f"java -Xmx{gbs}{vjava} -Xms{gbs}{vjava} -jar server.jar nogui"
                            subprocess.run(comando_java, shell=True)
                            fyh_sistema = datetime.datetime.now()
                            fecha_cerrado = str(fyh_sistema.strftime("%d/%m/%Y"))
                            hora_cerrado = str(fyh_sistema.strftime("%H:%M:%S"))
                            input("\nPresiona ENTER para continuar.")
                            limpiar_consola()
                            input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl Server se ha cerrado el {fecha_cerrado} a las {hora_cerrado}.\n\nPuedes ver el registro de la consola en la carpeta 'logs' dentro de la carpeta principal de tu Server.\n\nPresiona ENTER para continuar.")
                            ram()
                except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                    run_server()
            run_server()
        else:
            limpiar_consola()
            print('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nNo se encuentra "server.jar" en esta carpeta.\n\nEstás seguro que esto es un Server?')
            time.sleep(2.5)
            ram()

    # INSTALL NEW SERVER
    def installmenu():
        global newserver
        global foldname
        limpiar_consola()
        inconfirm = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nPrimero, seleccionemos una carpeta para guardar los archivos de tu Nuevo Server.\n\n(1) Seleccionar una carpeta para el Nuevo Server\n(2) Cancelar\n\nElige una de las opciones= ").replace(" ", "")
        try:
            if any(char in "0123456789+-*/" for char in inconfirm):
                if not inconfirm[0].isalpha():
                    inconf = eval(inconfirm)
                else:
                    inconf = inconfirm
            else:
                inconf = inconfirm
            inconf = int(inconf)
            if inconf == 1:
                def reselect():
                    global newserver
                    global foldname
                    newserver = filedialog.askdirectory()
                    front()
                    foldname = colored(os.path.basename(newserver), "green")
                    if newserver == "" or foldname == "":
                        limpiar_consola()
                        print('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nDebes elegir una carpeta para guardar tu Nuevo Server.')
                        time.sleep(2.5)
                        installmenu()
                    os.makedirs(newserver, exist_ok=True)
                    os.chdir(newserver)
                    if newserver and foldname:
                        def vers_select():
                            global newserver
                            global foldname
                            limpiar_consola()
                            verss = input(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nTu Nuevo Server se guardará en "{foldname}".\n\n(L) Lista de versiones disponibles\n(R) Reelegir una carpeta para el Nuevo Server\n(N) Volver al menú principal\n\nElige una de las opciones o escribe la versión para instalar tu Nuevo Server= ').replace(" ", "")
                            try:
                                def servdownload(versionname):
                                    global newserver
                                    global foldname
                                    version = versionname.lower()
                                    url = MCVERSIONS[version]
                                    limpiar_consola()
                                    print(f'Lanzador de Servidores para Minecraft\n-------------------------------------\n\nTu Nuevo Server está siendo descargado.\n\nVersión: {version}\nCarpeta de destino: "{foldname}"\n\nEspera por favor...\n')
                                    time.sleep(0.5)
                                    os.makedirs(newserver, exist_ok=True)
                                    os.chdir(newserver)
                                    try:
                                        response = requests.get(url, stream=True)
                                        total_size_in_bytes = int(response.headers.get('content-length', 0))
                                        block_size = 1024  # 1 Kibibyte
                                        total_data = 0
                                        with open("server.jar", "wb") as file:
                                            for data in response.iter_content(block_size):
                                                total_data += len(data)
                                                file.write(data)
                                                completed = int(50 * total_data / total_size_in_bytes)
                                                print("\r[%s%s]" % ('#' * completed, '.' * (50 - completed)), end='')
                                        print()
                                        limpiar_consola()
                                        input('Lanzador de Servidores para Minecraft\n-------------------------------------\n\nTu Nuevo Server se ha instalado correctamente y ha sido añadido a la Lista "Tus Servidores".\n\nPresiona ENTER para continuar.')
                                        servname = os.path.basename(newserver)
                                        servstring = f"{servname}<[=]>{newserver}\n"
                                        os.makedirs(CONFIG_PATH, exist_ok=True)
                                        with open(SAVED_SERVERS, 'r+') as file:
                                            lines = file.readlines()
                                            if servstring not in lines:
                                                file.write(servstring)
                                        esp()
                                    except Exception:
                                        def erragain():
                                            limpiar_consola()
                                            yup = colored("Sí","green")
                                            nop = colored("No","red")
                                            errtry = input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nHa ocurrido un error mientras se descargaba tu Nuevo Server.\nReintentar?\n\n(1) {yup}\n(2) {nop}\n\nElige una de las opciones= ")
                                            try:
                                                if any(char in "0123456789+-*/" for char in errtry):
                                                    if not errtry[0].isalpha():
                                                        errtr = eval(errtry)
                                                    else:
                                                        errtr = errtry
                                                else:
                                                    errtr = errtry
                                                errtr = int(errtr)
                                                if errtr == 1:
                                                    servdownload(version)
                                                elif errtr == 2:
                                                    esp()
                                                else:
                                                    erragain()
                                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                                erragain()
                                        erragain()
                                if verss.lower() == "n":
                                    esp()
                                elif verss.lower() == "r":
                                    reselect()
                                elif verss.lower() == "l":
                                    def versionl():
                                        limpiar_consola()
                                        print("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nVersiones disponibles:\n")
                                        for i, version in enumerate(MCVERSIONS, start=1):
                                            print(f"(-) {version}")
                                        listselection = input("\n(B) Atrás\n(R) Volver al menú principal\n\nEscribe una versión o elige una de las opciones=")
                                        try:
                                            if listselection.lower() == "b":
                                                vers_select()
                                            elif listselection.lower() == "r":
                                                esp()
                                            elif listselection.lower() in MCVERSIONS.keys():
                                                servdownload(listselection)
                                            else:
                                                versionl()
                                        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                            versionl()
                                    versionl()
                                elif verss.lower() in MCVERSIONS.keys():
                                    servdownload(verss)
                                else:
                                    vers_select()
                            except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
                                installmenu()
                        vers_select()
                    else:
                        installmenu()
                reselect()
            elif inconf == 2:
                esp()
            else:
                installmenu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            installmenu()  

    # LICENSE AND EXTRAS
    def about():
        limpiar_consola()
        copyr = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nMIT License - Copyright (c) 2024 NGDPL Nk\n\nSSTools4MC v24.06.27 - SE AÑADE SOPRTE PARA LA 1.21\n\nHelpers:\n@naicoooossj\n@LegalizeNuclearBombs\n\n-------------------------------------\n\n(1) Ver repositorio en el navegador\n(2) Ver licencia en el navegador\n(3) Volver al menú principal\n\nElige una de las opciones= ")
        try:
            if any(char in "0123456789+-*/" for char in copyr):
                if not copyr[0].isalpha():
                    selec = eval(copyr)
                else:
                    selec = copyr
            else:
                selec = copyr
            selec = int(selec)
            if selec == 1:
                url = colored("https://github.com/ngdplnk/SSTools4MC","cyan")
                limpiar_consola()
                input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nEl repositorio se abrirá en tu navegador.\n\n{url}\n\nPresiona ENTER para continuar.")
                url = "https://github.com/ngdplnk/SSTools4MC"
                webbrowser.open(url)
                about()
            elif selec == 2:
                url = colored("https://github.com/ngdplnk/SSTools4MC/blob/main/LICENSE","cyan")
                limpiar_consola()
                input(f"Lanzador de Servidores para Minecraft\n-------------------------------------\n\nLa licencia se abrirá en tu navegador.\n\n{url}\n\nPresiona ENTER para continuar.")
                url = "https://github.com/ngdplnk/SSTools4MC/blob/main/LICENSE"
                webbrowser.open(url)
                about()
            elif selec == 3:
                esp()
            else:
                about()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            about()

    # EXIT
    def exiit():
        limpiar_consola()
        print("--------------------------------------------\nMuchas gracias por usar esta herramienta\nMIT License - Copyright (c) 2024 NGDPL Nk\n--------------------------------------------\n")
        time.sleep(1.2)
        sys.exit()

    # MAIN MENU
    def menu():
        os.makedirs(SSTOOLS_FOLDER, exist_ok=True)
        os.chdir(SSTOOLS_FOLDER)
        limpiar_consola()
        seleccion = input("Lanzador de Servidores para Minecraft\n-------------------------------------\n\nHola! Estás en el menú principal.\n\n(1) Inciar un Server\n(2) Instalar un Nuevo Server\n(3) Extras\n(4) Cambiar Lenguaje\n(5) Salir\n\nElige una de las opciones= ")
        try:
            if any(char in "0123456789+-*/" for char in seleccion):
                if not seleccion[0].isalpha():
                    sel = eval(seleccion)
                else:
                    sel = seleccion
            else:
                sel = seleccion
            sel = int(sel)
            if sel == 1:
                ram()
            elif sel == 2:
                installmenu()
            elif sel == 3:
                about()
            elif sel == 4:
                eng()
            elif sel == 5:
                exiit()
            menu()
        except (ValueError, SyntaxError, IndexError, ZeroDivisionError):
            menu()

    menu()

# SELECCIÓN DE IDIOMA - LANGUAGE SELECTION
def lang():
    system_lang = locale.getlocale()[0]
    system_lang = str(system_lang)
    if system_lang.startswith("es") or system_lang.startswith("Spanish"):
        esp()
    else:
        eng()

# INICIAR HERRAMIENTA - RUN TOOL
lang()
