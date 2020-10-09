#Every update requires an update of these hashes and the version within the control file of each of the 32 ports. 
#So it is probably better to have a central location for these hashes and let the ports update via a script
set(QT_MAJOR_MINOR_VER 5.15)
set(QT_PATCH_VER 0)
set(QT_UPDATE_VERSION 0) # Switch to update qt and not build qt. Creates a file cmake/qt_new_hashes.cmake in qt5-base with the new hashes.

set(QT_PORT_LIST base 3d activeqt charts connectivity datavis3d declarative gamepad graphicaleffects imageformats location macextras mqtt multimedia networkauth
                 purchasing quickcontrols quickcontrols2 remoteobjects script scxml sensors serialport speech svg tools virtualkeyboard webchannel websockets
                 webview winextras xmlpatterns doc x11extras androidextras translations serialbus webengine webglplugin wayland)

set(QT_HASH_qt5-base                c584d69e49f4959d9b8541f820f5ff1e6d1599697ad16976b47cbaaa902fc83e1ca4ae57d56d13574e42e5f602d4420245ad7fcfc13e224e10d4bbad6a537d1a)
set(QT_HASH_qt5-3d                  0cc327438ec174bfc6b7b560b5957653d38cdcb1c94717e296c3f52f41750f1b95ad620e3c3777fdc9c63f885f8325b8c1d1befcc338a25fc65d3f62b2019185)
set(QT_HASH_qt5-activeqt            de3c869fecb5692209d6c162ae925eafe34e1118f3074529388c99a825a7007c01f1a6e603f8e8f46b3e2ecd510e35ce4d0d74c4b57563ecc95bfcf0be9dc05c)
set(QT_HASH_qt5-charts              8046f280f460da4bd010c96503e07811fd672981940477855511c21e11734872cbfdac2ffb5da0a26dbeeaf931bda2605c57dccaa45ab3ebf61272b9e29fd183)
set(QT_HASH_qt5-connectivity        57f125d232d1b495e82dd0f52243b878c7f0d3ffd1c8f4a7ff92810167867e2a5e480f4e7a3d2f26bbebcf8693eacbced87504b54f79cc8d1c8caf5a8f2da8f2)
set(QT_HASH_qt5-datavis3d           074abcd90cea37c24728d6065ee04048efb3b056dcea4e3fe9af1d270abf6bccda984b7fd91abbbefc9f059af34f53b2b8b42c096ac35e4921214f5eb9c09a83)
set(QT_HASH_qt5-declarative         0ec3403286efea6d6ac975ea6bd4464ea656c031f5f27b852235fd69d316a627ac3ff2ea2c3cca0a5375ca278f592df3ecade4e98aa15ec92816a16927f56e5e)
set(QT_HASH_qt5-gamepad             8f81564804c96273a60738fc3bb115d5b6409dd7627420bbe329d0fb6b3e3616123fa28b7fdbdde7f928275a024d499a2b2b86aace3a55c66b7ab80f64a7b465)
set(QT_HASH_qt5-graphicaleffects    62b18a9032bc30468ad4dc95648b1234a71240467fe8ff34a76bc36ed4613eea279dfc6fe0bf8e7734143e8b6ec6442f5e2f92338c2233f4e396bd333e67bc0c)
set(QT_HASH_qt5-imageformats        3ac441915f2354ebe3eb2f6785a806ebe8bc2562a3a7d7bd0dc3380fd8842ce8a8dcdb7a767750b4da3d2d6b7881a7b54bb6c37f89c46e1468f27fc77396c304)
set(QT_HASH_qt5-location            36efb5a9a0eaaa6f2997c4d7a18307c69a80ae4caf901ab1d0efcc6cd6202dda6a10c8dac01baee44e84c14b8ab23204db1085445e1f3b42e9a0a21549eb624e)
set(QT_HASH_qt5-macextras           f2551f6e61b100c9acfc624aca0b7fc329589c090f60cc271decff388dbca97f10fd68e7ad061a709754eb2eecc438fba4a2bff54db1f7b1524836fac7e612aa)
set(QT_HASH_qt5-mqtt                9946e5a481d4fcc9ce8438c86f06d0ee4c1d6393163e0762217ca820fc61909784b617b794ee35c8f3e0ee7049ac367d1c17eed62717b64912b3642bb4ddf03c)
set(QT_HASH_qt5-multimedia          120ff3be99c685fb5944da657d571d83c985e139a34b23f7527daf2a0fdde949a452d4c3691b41a86ed3f141decf1833f496b3b61fd87bc602b8164563cb79d6)
set(QT_HASH_qt5-networkauth         d5d7e4522a4058775389fdbb048f71675f5c37add8bd634766fc1408ebed0f1ad2c230ceb2cdeb547bce73ee9386cf40585dfb9ca4182340f82a284f7b9b5ae3)
set(QT_HASH_qt5-purchasing          9d4ed2d7810fdb052da86a2830bab912aec7fed5f7a5878a7133a976a788f8ab59d226a63a79a0c2fd162c3d86bf67c254d184f7422b75d4b0271175c355c61a)
set(QT_HASH_qt5-quickcontrols       bdfe850e13275ae074c257b75697141a9b8af5a334e114d3ac28f68a820e4b9f40ad936db96dd119dcc77ca12d6aff84cee16613b0695f594c862dcfbf942a48)
set(QT_HASH_qt5-quickcontrols2      560014b882ef9d274cb1532025cae79987eec3569541e111e91f047261fcd7f26fcb40689d8dd6921ae26fbf9cdee60a87d3a1c7212e547529ff4adf9c5cf136)
set(QT_HASH_qt5-remoteobjects       4e8cbb0cbc86de625e8d6b7deb80799bb2a040749ff065d8c826d5695660d5538287d80c4f5845555bc1d1f36b481a9a03ac2d837d98e3bfd8e887fe54d4e691)
set(QT_HASH_qt5-script              0f6b72b5b0a892ced4653e9184256040b12a804f796c922aad318fc03734e3bf8fbe175b0eb886e71899287082c09fc06a290dcd5ddb1967c65b0f72d4adea94)
set(QT_HASH_qt5-scxml               196ab4a8609695bc442a915e229183f3ece97ed03c93cdc7f93bf6c7b68ea89a8a6ad04e3e4909c9aa0780d8ebd366338ea6e8790ac4fae08806694e27c115fa)
set(QT_HASH_qt5-sensors             b03e2b68d14bfa557fdbf742d26c70a960b92cf5a5884d499825743553da42c5044cced338b86682081f57fea41686fc00c0565f3f4561d945e099de5b8ebc9e)
set(QT_HASH_qt5-serialport          121837c0848c69414268332ac41538b9df1c1503ab81bcf281903b73e02f5adf34b615ebc1fca4f4e6bf0b7c8c1b3f2d4dcde20152e2eb913c965eb910e378e2)
set(QT_HASH_qt5-speech              9a63c5957663db0c4b9587751b90d9d84881bb60f911435cb92998898944f6ed4e7aa7c12e8196a6b0c7bdac1d2abba62145b99cd834fbab1d57e88e60ddb59c)
set(QT_HASH_qt5-svg                 24e5b3000ee6657e6c579026d979322aafaa42b3081e07bae17cf6f276a45a9d830db6b23fb7d30d6ff4f32f63c88e258dc55e193c45de8e4069aad14cfda71b)
set(QT_HASH_qt5-tools               ebcebbc828e6a34766f2f5eeb4775d29af7b60b6124549df5256902ed2bd683721084b45a869ba76d29b1b170fe3834291af0833ab17ee8d05407c509f03d3eb)
set(QT_HASH_qt5-virtualkeyboard     fd850aa11e0dbd37f73e63517af1e311be480fc44ac05e74c25794a69fd26d06fd620a9ee3ffa3663ebeeedc0d2abe9520aa53c09b80363e8966ee7f24430869)
set(QT_HASH_qt5-webchannel          ef4040b63ad3cca80be38b8e3336ea0e70d1a57289ff2441c182f848b837d7ef87c78472f42f14cbc7a77f7ef5d5c50c0f5533071aaa13734832fdf6019c0253)
set(QT_HASH_qt5-websockets          87d7cbce52562f6a5372106e46e15319d9647bab9ec5dbde132c017b9febbbc568ff2c182d3375165d87c1d4a88ae26d2e849baef53bce6e842d8d0d83f7ceb5)
set(QT_HASH_qt5-webview             58356c59945fb075e17587b634156b66c5569cdbcf02ba91eb9fcc1146f1a4341e0d4d6afa0a70a6050070d35f156aa92a7aec0102aff0b862b5050533c55a5e)
set(QT_HASH_qt5-winextras           ece6ad8cb8f43a8e43ed0f47323eb293d5c6329f32ccdd310ee3d3811006f81e63f8711e9c1a4630198087055fd6fb38012b4bcf0b008ac3d8da7eea6a461067)
set(QT_HASH_qt5-xmlpatterns         180ccbab82b436702533ea7aaf445b399250555ed37eb3469889de64d13f218c0717489f270e29369119207441f85c05249923fe73daac5fcc2fdc7e970494c0)
##TODO
set(QT_HASH_qt5-doc                 8842c7e2a5e8042b8c22f305a46d8191d7cfcccd4ead175431ed83b2fde707466ea1798f7819b56ab991af942cb94551d20eb2c13edbe9beaafb9e6bb86fba3e)
set(QT_HASH_qt5-x11extras           12fc870f94e546d6e343f2ece44d09a6fc725b3ce092e1494bd2ef334ec92b559db2a8fcf6da88fe0f73040ee41fa5bf5f84ff197e5d1a004dabca3274508a96)
set(QT_HASH_qt5-androidextras       d1b4a88053bd6b771f392e843611bf8397d782cc263ee924440e0ed6f63cdc936a2c127d3eb5a1834c11ef0c6efc2c8468fb65a28ec7f7645286bdea1dad590c)
#set(QT_HASH_qt5-canvas3d            0) deprecated
set(QT_HASH_qt5-translations        45302457e16e5dba674164dda7945110583f072d209d3984726324497efb367573475facc3534fd7cdfc61bc14295ebe4bf6588a37d45e87b676191d852f1c8a)
set(QT_HASH_qt5-serialbus           8a606fd407cb7a4a6a1f15f10daec952aa010684d6cfca7fa024f850b3db419b7cd67eecb58ba0c0dd283e10fd904a255ab42b279c38081e84fe06b7b22c4c49)
set(QT_HASH_qt5-webengine           11983470f0da9abfffba072406b2c67b475d8cf65412fdcfd925758e2a9449f509780e5b1001fb6868445c2c9540e5aa0e754954b70f1795b47335bad7c749b2)
set(QT_HASH_qt5-webglplugin         cd8e63b8979601c3da37295148b7fe896863b97058d15fb9284a3eacca7fe62fae87dbd414285aee5df732ebadd67c96edd273ec9929ca005bf5282e4acb7cff)
set(QT_HASH_qt5-wayland             e3d8fb79b7d3b10a94caccca1567c3a978b3517e13740aa6218d0a0b4cb180f6bdc3b533e113248908033f344ab5fcffd6fac751a1513c2d62834afe408ee714)

if(QT_UPDATE_VERSION)
    message(STATUS "Running Qt in automatic version port update mode!")
    set(_VCPKG_INTERNAL_NO_HASH_CHECK 1)
    if("${PORT}" MATCHES "qt5-base")
        foreach(_current_qt_port ${QT_PORT_LIST})
            set(_current_control "${VCPKG_ROOT_DIR}/ports/qt5-${_current_qt_port}/CONTROL")
            file(READ ${_current_control} _control_contents)
            #message(STATUS "Before: \n${_control_contents}")
            string(REGEX REPLACE "Version:[^0-9]+[0-9]\.[0-9]+\.[0-9]+[^\n]*\n" "Version: ${QT_MAJOR_MINOR_VER}.${QT_PATCH_VER}\n" _control_contents "${_control_contents}")
            #message(STATUS "After: \n${_control_contents}")
            file(WRITE ${_current_control} "${_control_contents}")
        endforeach()
    endif()
endif()