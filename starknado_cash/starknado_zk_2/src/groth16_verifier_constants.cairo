use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 2;

pub const vk: Groth16VerifyingKey =
    Groth16VerifyingKey {
        alpha_beta_miller_loop_result: E12D {
            w0: u288 {
                limb0: 0x6e349497979b6de200216f14,
                limb1: 0xc9dd2665987efd82164bf702,
                limb2: 0x1ab5b4192056df3c
            },
            w1: u288 {
                limb0: 0xf2ce695a2999bed0edcb8acf,
                limb1: 0xace3ff3bdce9ef936e3f2606,
                limb2: 0x103d9f7c9bda09cb
            },
            w2: u288 {
                limb0: 0xf5f9bf7a86a040d538da1d48,
                limb1: 0xe95b9ddab4b640c2e9a6c6d2,
                limb2: 0x1c1e635128e778ae
            },
            w3: u288 {
                limb0: 0xb5e52c1ca73a6150a4ff4068,
                limb1: 0x12b892d318aa01e2d7e1ee2b,
                limb2: 0x1ecd04c47ed3d37e
            },
            w4: u288 {
                limb0: 0xdad6f3b0930b47c557faac0a,
                limb1: 0x7d8ada43ea38e07c167e5d39,
                limb2: 0x23a94fa0801bef17
            },
            w5: u288 {
                limb0: 0xe871172572aff71f313ff522,
                limb1: 0xe45037e1bb389ef1db9caae9,
                limb2: 0xbf318bafd1a85f
            },
            w6: u288 {
                limb0: 0x986c9353338cdb9ca7e9dd40,
                limb1: 0x17ca790632c1a86b7c3000c5,
                limb2: 0xd1165d1ca2661f6
            },
            w7: u288 {
                limb0: 0x953ebfd80008a84c1bdd9756,
                limb1: 0xe96c7d7e34ec3c993883738c,
                limb2: 0x23dd340aad91c8d9
            },
            w8: u288 {
                limb0: 0xa91d4cdcc6992d48df10be76,
                limb1: 0xccb9e7d52135090afba43716,
                limb2: 0x26cc491a9a951fd7
            },
            w9: u288 {
                limb0: 0xb7f2ca2bdbea688c87fe5d7a,
                limb1: 0xa945e21d3a9a8650e23216e,
                limb2: 0xd38a2ba6b76e57a
            },
            w10: u288 {
                limb0: 0x8df8ae9acd347bf0469aa2f,
                limb1: 0xbb9643a8ae653029af9ef0fb,
                limb2: 0x1ff2d87714eded1d
            },
            w11: u288 {
                limb0: 0xd6db4ad40f96881a9b4e8037,
                limb1: 0xef44dbf271843e018af79879,
                limb2: 0x14fcef480791889
            }
        },
        gamma_g2: G2Point {
            x0: u384 {
                limb0: 0xf75edadd46debd5cd992f6ed,
                limb1: 0x426a00665e5c4479674322d4,
                limb2: 0x1800deef121f1e76,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0x35a9e71297e485b7aef312c2,
                limb1: 0x7260bfb731fb5d25f1aa4933,
                limb2: 0x198e9393920d483a,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0xc43d37b4ce6cc0166fa7daa,
                limb1: 0x4aab71808dcb408fe3d1e769,
                limb2: 0x12c85ea5db8c6deb,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x70b38ef355acdadcd122975b,
                limb1: 0xec9e99ad690c3395bc4b3133,
                limb2: 0x90689d0585ff075,
                limb3: 0x0
            }
        },
        delta_g2: G2Point {
            x0: u384 {
                limb0: 0x3ef91d6242c8fc135c49418f,
                limb1: 0xb3705529893f44eab50945d,
                limb2: 0x1d62d32093bc2737,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0xb8ed734db8c7c2f1f1a38d43,
                limb1: 0x21f241880c6681a9089bcb48,
                limb2: 0x18358ffac0d90fed,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0x232aae886bcf9abbdb9575cd,
                limb1: 0xcb10bbff77b8ce112b2d4e30,
                limb2: 0x11027aed1e0edeb5,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x73b6458a59b5edfdd3fcda89,
                limb1: 0xe00fb7506a0333253967c410,
                limb2: 0x1b7391e4c4445f2f,
                limb3: 0x0
            }
        }
    };

pub const ic: [
    G1Point
    ; 3] = [
    G1Point {
        x: u384 {
            limb0: 0x6663820d4a9b14768e6c2801,
            limb1: 0x547eb99fb280c6a082516f73,
            limb2: 0xf7cff7c4a1fd192,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xc756393f3e7bff53a1f0324e,
            limb1: 0xa45d30b506980723564a004e,
            limb2: 0x29d758e2557844f2,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x8aa615e42d46bcf6665e7c43,
            limb1: 0x521b5cd43dbbad9c1c8d9c7c,
            limb2: 0x3d910d8b0f1671,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x278f48100dd09650105977e2,
            limb1: 0xf692834a7bc79329e574b2d5,
            limb2: 0x1979563b6052991f,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x1c9b76a642fcbb1498365860,
            limb1: 0x384676dcd1e845fe7630661c,
            limb2: 0x93098558b6a3cf5,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xb8d4afd0853b83afd87e3bfd,
            limb1: 0xe315f863cdad3ea7c210583a,
            limb2: 0x1795ada1d0a093bd,
            limb3: 0x0
        }
    },
];


pub const precomputed_lines: [
    G2Line
    ; 176] = [
    G2Line {
        r0a0: u288 {
            limb0: 0x4d347301094edcbfa224d3d5,
            limb1: 0x98005e68cacde68a193b54e6,
            limb2: 0x237db2935c4432bc
        },
        r0a1: u288 {
            limb0: 0x6b4ba735fba44e801d415637,
            limb1: 0x707c3ec1809ae9bafafa05dd,
            limb2: 0x124077e14a7d826a
        },
        r1a0: u288 {
            limb0: 0x49a8dc1dd6e067932b6a7e0d,
            limb1: 0x7676d0000961488f8fbce033,
            limb2: 0x3b7178c857630da
        },
        r1a1: u288 {
            limb0: 0x98c81278efe1e96b86397652,
            limb1: 0xe3520b9dfa601ead6f0bf9cd,
            limb2: 0x2b17c2b12c26fdd0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x181aea803a4dcf54a7ff8561,
            limb1: 0xccbcb51403baabc5fc6d149d,
            limb2: 0xcf42b023239d037
        },
        r0a1: u288 {
            limb0: 0xbd99f069b15e9bd900d54806,
            limb1: 0x1d55107c4c722e3cb32f29f6,
            limb2: 0xc9371dbd6045fec
        },
        r1a0: u288 {
            limb0: 0xda5b454f5533fe3b2af2a626,
            limb1: 0x29e70e5dc199ca6bf0d5de07,
            limb2: 0x2253d17e486cf814
        },
        r1a1: u288 {
            limb0: 0xfd7a59b1d2fa0d52998c0430,
            limb1: 0xcb3c94fe56460a9e670ab1df,
            limb2: 0x2bed65bd6bbd598c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b3d578c32d1af5736582972,
            limb1: 0x204fe74db6b371d37e4615ab,
            limb2: 0xce69bdf84ed6d6d
        },
        r0a1: u288 {
            limb0: 0xfd262357407c3d96bb3ba710,
            limb1: 0x47d406f500e66ea29c8764b3,
            limb2: 0x1e23d69196b41dbf
        },
        r1a0: u288 {
            limb0: 0x1ec8ee6f65402483ad127f3a,
            limb1: 0x41d975b678200fce07c48a5e,
            limb2: 0x2cad36e65bbb6f4f
        },
        r1a1: u288 {
            limb0: 0xcfa9b8144c3ea2ab524386f5,
            limb1: 0xd4fe3a18872139b0287570c3,
            limb2: 0x54c8bc1b50aa258
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5ee22ba52a7ed0c533b7173,
            limb1: 0xbfa13123614ecf9c4853249b,
            limb2: 0x6567a7f6972b7bb
        },
        r0a1: u288 {
            limb0: 0xcf422f26ac76a450359f819e,
            limb1: 0xc42d7517ae6f59453eaf32c7,
            limb2: 0x899cb1e339f7582
        },
        r1a0: u288 {
            limb0: 0x9f287f4842d688d7afd9cd67,
            limb1: 0x30af75417670de33dfa95eda,
            limb2: 0x1121d4ca1c2cab36
        },
        r1a1: u288 {
            limb0: 0x7c4c55c27110f2c9a228f7d8,
            limb1: 0x8f14f6c3a2e2c9d74b347bfe,
            limb2: 0x83ef274ba7913a5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5056e00d01d2bcc2307d77e6,
            limb1: 0xeb9390a27dc6ac979b1455f4,
            limb2: 0x23702370aef7cff1
        },
        r0a1: u288 {
            limb0: 0xaad7da238ac1f03dd7a7b541,
            limb1: 0x9afb353a350f2a20e452409a,
            limb2: 0x23d0dc970b2d403d
        },
        r1a0: u288 {
            limb0: 0x8e16853de6ec8ddbad8a5721,
            limb1: 0x8e693758bfe78df1a6ab8c89,
            limb2: 0xe107cf498c4a815
        },
        r1a1: u288 {
            limb0: 0x6af770db69267ec43ef0f917,
            limb1: 0xed13b0b82b3b4dbf3076b8b1,
            limb2: 0x476e8b57574469c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb10ca60cdba30065b427bc44,
            limb1: 0xbb09f1f13dc0ee1118fccf1f,
            limb2: 0x12474fde794c92bf
        },
        r0a1: u288 {
            limb0: 0x4660eda30a8af9e7ee2b8f1f,
            limb1: 0xee1f07b9bef65b2c4e39e980,
            limb2: 0x9ea07e87e7fed6a
        },
        r1a0: u288 {
            limb0: 0x3356f5e14d9a5a8c45ccbb09,
            limb1: 0x9c15cf5e69db72d41c80ce29,
            limb2: 0x53dab82bd6fd10e
        },
        r1a1: u288 {
            limb0: 0xbb100cef798eb5b11808337d,
            limb1: 0x2b64d976b5b29a4bbdc75e88,
            limb2: 0x2c05a664be7528ea
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc23a674d089e9cfdefb1db8,
            limb1: 0x9ddfd61d289b65a9b4254476,
            limb2: 0x1e2f561324ef4447
        },
        r0a1: u288 {
            limb0: 0xf67a6a9e31f6975b220642ea,
            limb1: 0xccd852893796296e4d1ed330,
            limb2: 0x94ff1987d19b62
        },
        r1a0: u288 {
            limb0: 0x360c2a5aca59996d24cc1947,
            limb1: 0x66c2d7d0d176a3bc53f386e8,
            limb2: 0x2cfcc62a17fbeecb
        },
        r1a1: u288 {
            limb0: 0x2ddc73389dd9a9e34168d8a9,
            limb1: 0xae9afc57944748b835cbda0f,
            limb2: 0x12f0a1f8cf564067
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccc75a6e47c17bbcdc7fe9b3,
            limb1: 0x99abbc84b90b9275f25c714f,
            limb2: 0x204d87c4947cb882
        },
        r0a1: u288 {
            limb0: 0x1f9699c8899b40c53b3d960f,
            limb1: 0x9b00c35f79b5d9382be82840,
            limb2: 0xaacb418f5a8b2e9
        },
        r1a0: u288 {
            limb0: 0xaa63c6be3bf1172f76e4893,
            limb1: 0x9cf6bebfca40c6e87fad215c,
            limb2: 0x2aad5daefc32013f
        },
        r1a1: u288 {
            limb0: 0xda99fd04b9cadc8adc869af1,
            limb1: 0x5afb997710dad5a389247bda,
            limb2: 0x7c11df943e9db48
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c963c4bdade6ce3d460b077,
            limb1: 0x1738311feefc76f565e34e8a,
            limb2: 0x1aae0d6c9e9888ad
        },
        r0a1: u288 {
            limb0: 0x9272581fdf80b045c9c3f0a,
            limb1: 0x3946807b0756e87666798edb,
            limb2: 0x2bf6eeda2d8be192
        },
        r1a0: u288 {
            limb0: 0x3e957661b35995552fb475de,
            limb1: 0xd8076fa48f93f09d8128a2a8,
            limb2: 0xb6f87c3f00a6fcf
        },
        r1a1: u288 {
            limb0: 0xcf17d6cd2101301246a8f264,
            limb1: 0x514d04ad989b91e697aa5a0e,
            limb2: 0x175f17bbd0ad1219
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x894bc18cc70ca1987e3b8f9f,
            limb1: 0xd4bfa535181f0f8659b063e3,
            limb2: 0x19168d524164f463
        },
        r0a1: u288 {
            limb0: 0x850ee8d0e9b58b82719a6e92,
            limb1: 0x9fc4eb75cbb027c137d48341,
            limb2: 0x2b2f8a383d944fa0
        },
        r1a0: u288 {
            limb0: 0x5451c8974a709483c2b07fbd,
            limb1: 0xd7e09837b8a2a3b78e7fe525,
            limb2: 0x347d96be5e7fa31
        },
        r1a1: u288 {
            limb0: 0x823f2ba2743ee254e4c18a1e,
            limb1: 0x6a61af5db035c443ed0f8172,
            limb2: 0x1e840eee275d1063
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7fc3c5361489b33c34e02f3,
            limb1: 0xebd53a8bcb1abd26e97b988b,
            limb2: 0x23a1289702fe9618
        },
        r0a1: u288 {
            limb0: 0xbc1fb702b2d60b1a63be137a,
            limb1: 0x1546d160062d4b94ab74298b,
            limb2: 0x282b2fe4a43b8c75
        },
        r1a0: u288 {
            limb0: 0x4c211fd33a4be11a7e530971,
            limb1: 0x467bce99382e315cac24546a,
            limb2: 0x15ca61f4f5d7914f
        },
        r1a1: u288 {
            limb0: 0x841128a986923e7a9d37059b,
            limb1: 0x6aa37f26fff2de773de891b2,
            limb2: 0xf156fd0f818dd68
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x747293333755ea743606e715,
            limb1: 0x105a680fc2a29034f686dba2,
            limb2: 0xba06b7c111db7a6
        },
        r0a1: u288 {
            limb0: 0xff207179a2ff95f079163dbb,
            limb1: 0x150d37dfd23b07d57cb47877,
            limb2: 0x20783309e153d36b
        },
        r1a0: u288 {
            limb0: 0x2b51d71d376f9941dbd0f3ce,
            limb1: 0xd86054dcde9f372ec403f93f,
            limb2: 0x5071866a5553aeb
        },
        r1a1: u288 {
            limb0: 0x67ed977b4c3c914f811c1b62,
            limb1: 0x7c12bfa2d34b78526e3bd592,
            limb2: 0x27aa665a3a670c2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18d630598e58bb5d0102b30e,
            limb1: 0x9767e27b02a8da37411a2787,
            limb2: 0x100a541662b9cd7c
        },
        r0a1: u288 {
            limb0: 0x4ca7313df2e168e7e5ea70,
            limb1: 0xd49cce6abd50b574f31c2d72,
            limb2: 0x78a2afbf72317e7
        },
        r1a0: u288 {
            limb0: 0x6d99388b0a1a67d6b48d87e0,
            limb1: 0x1d8711d321a193be3333bc68,
            limb2: 0x27e76de53a010ce1
        },
        r1a1: u288 {
            limb0: 0x77341bf4e1605e982fa50abd,
            limb1: 0xc5cf10db170b4feaaf5f8f1b,
            limb2: 0x762adef02274807
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2eb2c0bd85ae763202c90548,
            limb1: 0xba00b5d2466b20b9ba2357a3,
            limb2: 0x2314bfc39e74a6ee
        },
        r0a1: u288 {
            limb0: 0x564d2ea03d9198ec21d0797,
            limb1: 0xf6848aa8853beec015eba347,
            limb2: 0x2cf4064f5c27b601
        },
        r1a0: u288 {
            limb0: 0xd6cb142ceb863c638b773512,
            limb1: 0x1cef573669842491e7c9aa23,
            limb2: 0x10f1ecaa17512823
        },
        r1a1: u288 {
            limb0: 0x850923860c45fe5f883e0e3,
            limb1: 0xdc177e025856a48410b01177,
            limb2: 0x2d60d580e00eaf5b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa137b991ba9048aee9fa0bc7,
            limb1: 0xf5433785c186cd1100ab6b80,
            limb2: 0xab519fd7cf8e7f9
        },
        r0a1: u288 {
            limb0: 0x90832f45d3398c60aa1a74e2,
            limb1: 0x17f7ac209532723f22a344b,
            limb2: 0x23db979f8481c5f
        },
        r1a0: u288 {
            limb0: 0x723b0e23c2808a5d1ea6b11d,
            limb1: 0x3030030d26411f84235c3af5,
            limb2: 0x122e78da5509eddb
        },
        r1a1: u288 {
            limb0: 0xf1718c1e21a9bc3ec822f319,
            limb1: 0xf5ee6dfa3bd3272b2f09f0c7,
            limb2: 0x5a29c1e27616b34
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5fcc193715a1d81b2a86ffac,
            limb1: 0xf9f7df9077a8a8c73f812235,
            limb2: 0xf9bbdb8d9fd9878
        },
        r0a1: u288 {
            limb0: 0xc564923d71d6b4aabc28422e,
            limb1: 0x8d3832a90ebcdca2dccc1e4a,
            limb2: 0x137f56c6e5f39441
        },
        r1a0: u288 {
            limb0: 0x1469276de5aa50293156e2dc,
            limb1: 0xb3c27006dda59d2ee62ca0ba,
            limb2: 0x5331d6847c2cef2
        },
        r1a1: u288 {
            limb0: 0x7c7fa982167a91f9312c9f71,
            limb1: 0xa7988bc7d1a9cec226541b5d,
            limb2: 0x251daf26ab85c134
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc1ede480873fceb8739511e,
            limb1: 0xd5a60533bd0ce7869efbc15,
            limb2: 0x182c17d793eba74d
        },
        r0a1: u288 {
            limb0: 0x83bf38d91876ad8999516bc2,
            limb1: 0x7756322ea3dc079289d51f2d,
            limb2: 0x1d0f6156a89a4244
        },
        r1a0: u288 {
            limb0: 0x6aba652f197be8f99707b88c,
            limb1: 0xbf94286c245794ea0f562f32,
            limb2: 0x25a358967a2ca81d
        },
        r1a1: u288 {
            limb0: 0xc028cbff48c01433e8b23568,
            limb1: 0xd2e791f5772ed43b056beba1,
            limb2: 0x83eb38dff4960e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd32475c85395c31cbd9b171d,
            limb1: 0xc2b64bf503ec27bcac0ebed0,
            limb2: 0xb9112c2446da6e6
        },
        r0a1: u288 {
            limb0: 0x77e1a14443d768f496211adb,
            limb1: 0x29c0ec069915827c993d4459,
            limb2: 0x1397a7c4c451ba79
        },
        r1a0: u288 {
            limb0: 0x14785fd9ebb7951eb0c45c13,
            limb1: 0xc19d0edd68ec144cf7994c1b,
            limb2: 0x1372e9d4a3958f7d
        },
        r1a1: u288 {
            limb0: 0xde03c92e18c105a9be59a0b9,
            limb1: 0xf1fe66b962ddcac81bfd7ef7,
            limb2: 0x24e750bdf9b2cc74
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2a2b787d8e718e81970db80,
            limb1: 0x5372abeaf56844dee60d6198,
            limb2: 0x131210153a2217d6
        },
        r0a1: u288 {
            limb0: 0x70421980313e09a8a0e5a82d,
            limb1: 0xf75ca1f68f4b8deafb1d3b48,
            limb2: 0x102113c9b6feb035
        },
        r1a0: u288 {
            limb0: 0x4654c11d73bda84873de9b86,
            limb1: 0xa67601bca2e595339833191a,
            limb2: 0x1c2b76e439adc8cc
        },
        r1a1: u288 {
            limb0: 0x9c53a48cc66c1f4d644105f2,
            limb1: 0xa17a18867557d96fb7c2f849,
            limb2: 0x1deb99799bd8b63a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32026c56341297fa080790c,
            limb1: 0xe23ad2ff283399133533b31f,
            limb2: 0xa6860f5c968f7ad
        },
        r0a1: u288 {
            limb0: 0x2966cf259dc612c6a4d8957d,
            limb1: 0xfba87ea86054f3db5774a08f,
            limb2: 0xc73408b6a646780
        },
        r1a0: u288 {
            limb0: 0x6272ce5976d8eeba08f66b48,
            limb1: 0x7dfbd78fa06509604c0cec8d,
            limb2: 0x181ec0eaa6660e45
        },
        r1a1: u288 {
            limb0: 0x48af37c1a2343555fbf8a357,
            limb1: 0xa7b5e1e20e64d6a9a9ce8e61,
            limb2: 0x1147dcea39a47abd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2066ca5c99f23ebc4f4b0d1,
            limb1: 0xdca83735337ef50fd20fc7d3,
            limb2: 0x1139f61626af669d
        },
        r0a1: u288 {
            limb0: 0x80446852d6d13527b81ab0df,
            limb1: 0xc9dec3dabf89b0400c481c28,
            limb2: 0xb01569f9b5eb7a9
        },
        r1a0: u288 {
            limb0: 0x8425d055e901934f9f5a0d37,
            limb1: 0x1251137834988bea803c8f27,
            limb2: 0x18e0cc7e39f6d11e
        },
        r1a1: u288 {
            limb0: 0x33b588516681d60abe2905e,
            limb1: 0xc4ee0e7167ca58f9d73cf112,
            limb2: 0x2343829ac9b1999c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc324db0e4e6c2a5321e7ca09,
            limb1: 0xc566ad78f7071e8065145adf,
            limb2: 0x2769fb600487c944
        },
        r0a1: u288 {
            limb0: 0x2bf5d3a341328c5cd05f6c2f,
            limb1: 0xfefaf2f6f7efb0f41d17759,
            limb2: 0x50881849ee9ba9d
        },
        r1a0: u288 {
            limb0: 0x8fc2358ed209b01e039b4784,
            limb1: 0x48c2b8b15aa8da63995501c4,
            limb2: 0x2213b34d8ce2587d
        },
        r1a1: u288 {
            limb0: 0xa1664c91f6f394f43f10bbb3,
            limb1: 0x265b706a70ce981026b0e5dd,
            limb2: 0x5b79b24dae0c10d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4033c51e6e469818521cd2ae,
            limb1: 0xb71a4629a4696b2759f8e19e,
            limb2: 0x4f5744e29c1eb30
        },
        r0a1: u288 {
            limb0: 0xa4f47bbc60cb0649dca1c772,
            limb1: 0x835f427106f4a6b897c6cf23,
            limb2: 0x17ca6ea4855756bb
        },
        r1a0: u288 {
            limb0: 0x7f844a35c7eeadf511e67e57,
            limb1: 0x8bb54fb0b3688cac8860f10,
            limb2: 0x1c7258499a6bbebf
        },
        r1a1: u288 {
            limb0: 0x10d269c1779f96946e518246,
            limb1: 0xce6fcef6676d0dacd395dc1a,
            limb2: 0x2cf4c6ae1b55d87d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xba7f41d6b6a1fda90f299cd6,
            limb1: 0x392eadf14031152c633e23b5,
            limb2: 0x23e5ed35aa984c0c
        },
        r0a1: u288 {
            limb0: 0x2d215a51dcf1fb66f5c06544,
            limb1: 0x33c28dc24bb03dc4586e929f,
            limb2: 0xf0a6e03e6dff594
        },
        r1a0: u288 {
            limb0: 0x8e89c512cbf6350c3cf615bb,
            limb1: 0x4da4585e95c316896987a7db,
            limb2: 0x107cd70e9dbef191
        },
        r1a1: u288 {
            limb0: 0xee379b93b88414aea17dd542,
            limb1: 0x8f4ccfca698ad33b188d88c4,
            limb2: 0x2462c22cbee24686
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab74a6bae36b17b1d2cc1081,
            limb1: 0x904cf03d9d30b1fe9dc71374,
            limb2: 0x14ffdd55685b7d82
        },
        r0a1: u288 {
            limb0: 0x277f7180b7cf33feded1583c,
            limb1: 0xc029c3968a75b612303c4298,
            limb2: 0x20ef4ba03605cdc6
        },
        r1a0: u288 {
            limb0: 0xd5a7a27c1baba3791ab18957,
            limb1: 0x973730213d5d70d3e62d6db,
            limb2: 0x24ca121c566eb857
        },
        r1a1: u288 {
            limb0: 0x9f4c2dea0492f548ae7d9e93,
            limb1: 0xe584b6b251a5227c70c5188,
            limb2: 0x22bcecac2bd5e51b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x340c82974f7221a53fc2f3ac,
            limb1: 0x7146f18cd591d423874996e7,
            limb2: 0xa6d154791056f46
        },
        r0a1: u288 {
            limb0: 0x70894ea6418890d53b5ee12a,
            limb1: 0x882290cb53b795b0e7c8c208,
            limb2: 0x1b5777dc18b2899b
        },
        r1a0: u288 {
            limb0: 0x99a0e528d582006a626206b6,
            limb1: 0xb1cf825d80e199c5c9c795b5,
            limb2: 0x2a97495b032f0542
        },
        r1a1: u288 {
            limb0: 0xc7cf5b455d6f3ba73debeba5,
            limb1: 0xbb0a01235687223b7b71d0e5,
            limb2: 0x250024ac44c35e3f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x470c26a9f010d49f57dd361f,
            limb1: 0xcafdae127c0595cd59c9a302,
            limb2: 0x11c9ad00ede12b40
        },
        r0a1: u288 {
            limb0: 0x2049c36ff053380280df0636,
            limb1: 0xd911b57b7de503c475e55d68,
            limb2: 0x2a3a64aced468be5
        },
        r1a0: u288 {
            limb0: 0xc5316a0dd828a13fc0b41231,
            limb1: 0x7ec97d294bdb054f1b41ff88,
            limb2: 0x2e707268889a8b97
        },
        r1a1: u288 {
            limb0: 0xf4c674376706343e558dcee8,
            limb1: 0xaa6b777aae005e941d75977e,
            limb2: 0x146e26271bd6e87f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xaf149e79b6c614b7c6256f31,
            limb1: 0x37c3e60138de620ecf565a8b,
            limb2: 0x134bcfc82503189a
        },
        r0a1: u288 {
            limb0: 0x2c31f66f8505f2b32e564c4e,
            limb1: 0xa9aa8e7d2b436dd79792f022,
            limb2: 0x8ca174679c3342f
        },
        r1a0: u288 {
            limb0: 0x161e4010c589651fea90fe52,
            limb1: 0xe2ff97a2dd145c18a18276c8,
            limb2: 0x2daf7acbe7a3289a
        },
        r1a1: u288 {
            limb0: 0x2c11c84fb911a98da9a22a60,
            limb1: 0x3b1a946c237030a31ea766dd,
            limb2: 0x161c31ff95976b7c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccf841cf5c1cf8f4a0485e28,
            limb1: 0xb5077662d0ce9d755af1446b,
            limb2: 0x2b08658e9d5ba5cb
        },
        r0a1: u288 {
            limb0: 0x6ce62184a15685babd77f27f,
            limb1: 0x5ff9bb7d74505b0542578299,
            limb2: 0x7244563488bab2
        },
        r1a0: u288 {
            limb0: 0xec778048d344ac71275d961d,
            limb1: 0x1273984019753000ad890d33,
            limb2: 0x27c2855e60d361bd
        },
        r1a1: u288 {
            limb0: 0xa7a0071e22af2f3a79a12da,
            limb1: 0xc84a6fd41c20759ff6ff169a,
            limb2: 0x23e7ef2a308e49d1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9d157e543aea6368753be52e,
            limb1: 0x33d7eeb3a7868798c7a44e55,
            limb2: 0x21cdabbca55866e8
        },
        r0a1: u288 {
            limb0: 0x3c564ab0794cacbea981a555,
            limb1: 0x37e92c15eb1b49a166ad4f64,
            limb2: 0x2a1904122b4302d2
        },
        r1a0: u288 {
            limb0: 0x78d5e92e9f040ed3cf46bfb4,
            limb1: 0x16ebaf4bc63691be65fa0202,
            limb2: 0xa7bab2b1e82d8ac
        },
        r1a1: u288 {
            limb0: 0x4218c30922d75d8eb6c2d42b,
            limb1: 0x2512e0ca24f800db27b0ea9b,
            limb2: 0x25674b304ddf29d6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7105024c431a33683d9d0b9d,
            limb1: 0x12e23637b641ab0e5b322ad8,
            limb2: 0x2918e9e08c764c28
        },
        r0a1: u288 {
            limb0: 0x26384979d1f5417e451aeabf,
            limb1: 0xacfb499e362291d0b053bbf6,
            limb2: 0x2a6ad1a1f7b04ef6
        },
        r1a0: u288 {
            limb0: 0xba4db515be70c384080fc9f9,
            limb1: 0x5a983a6afa9cb830fa5b66e6,
            limb2: 0x8cc1fa494726a0c
        },
        r1a1: u288 {
            limb0: 0x59c9af9399ed004284eb6105,
            limb1: 0xef37f66b058b4c971d9c96b0,
            limb2: 0x2c1839afde65bafa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1654c685ae58b5f966b7bca9,
            limb1: 0xb68e82402cb79722bb110ba1,
            limb2: 0xbee2dbfb8bdb72
        },
        r0a1: u288 {
            limb0: 0x8a864bd625fb54e291048ba2,
            limb1: 0xb1211c3cbb0fd14853dc63d2,
            limb2: 0x1bae1d66ecbe403
        },
        r1a0: u288 {
            limb0: 0x8986432b672ac11597eb02,
            limb1: 0x434ed1777e7f06fe49056526,
            limb2: 0x17fbdff4defaa7b5
        },
        r1a1: u288 {
            limb0: 0xae2775049e94ca1bbd5d939c,
            limb1: 0x340604a2ef9372d708cff5cc,
            limb2: 0x2e8849949eabab51
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bf13a27b0f4eb6657abc4b,
            limb1: 0xf78d57f089bffdf07c676bb3,
            limb2: 0x228e4aefbdd738df
        },
        r0a1: u288 {
            limb0: 0x4f41a40b04ec964619823053,
            limb1: 0xfa3fb44f4a80641a9bb3bc09,
            limb2: 0x29bf29a3d071ec4b
        },
        r1a0: u288 {
            limb0: 0x83823dcdff02bdc8a0e6aa03,
            limb1: 0x79ac92f113de29251cd73a98,
            limb2: 0x1ccdb791718d144
        },
        r1a1: u288 {
            limb0: 0xa074add9d066db9a2a6046b6,
            limb1: 0xef3a70034497456c7d001a5,
            limb2: 0x27d09562d815b4a6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x706f93a5c3a1f939d7bee1f6,
            limb1: 0xec1f8b0f94bf523688e7decf,
            limb2: 0xa1fc13b5e2b8598
        },
        r0a1: u288 {
            limb0: 0x5ee564e91c680b454861433a,
            limb1: 0x10109e480766e7477a685fd9,
            limb2: 0x2f46c867b48e35a2
        },
        r1a0: u288 {
            limb0: 0x5a7ab188801df80bf2f975a5,
            limb1: 0x75b891ae0357f17b805cf1c1,
            limb2: 0x78fa67c8eb8077f
        },
        r1a1: u288 {
            limb0: 0x7d3737e35482bfe3a971569c,
            limb1: 0xc4c873fc94a9c39516d823f9,
            limb2: 0xb37f7b6a3829a14
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87a44d343cc761056f4f2eae,
            limb1: 0x18016f16818253360d2c8adf,
            limb2: 0x1bcd5c6e597d735e
        },
        r0a1: u288 {
            limb0: 0x593d7444c376f6d69289660b,
            limb1: 0x1d6d97020b59cf2e4b38be4f,
            limb2: 0x17133b62617f63a7
        },
        r1a0: u288 {
            limb0: 0x88cac99869bb335ec9553a70,
            limb1: 0x95bcfa7f7c0b708b4d737afc,
            limb2: 0x1eec79b9db274c09
        },
        r1a1: u288 {
            limb0: 0xe465a53e9fe085eb58a6be75,
            limb1: 0x868e45cc13e7fd9d34e11839,
            limb2: 0x2b401ce0f05ee6bb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83f48fbac5c1b94486c2d037,
            limb1: 0xf95d9333449543de78c69e75,
            limb2: 0x7bca8163e842be7
        },
        r0a1: u288 {
            limb0: 0x60157b2ff6e4d737e2dac26b,
            limb1: 0x30ab91893fcf39d9dcf1b89,
            limb2: 0x29a58a02490d7f53
        },
        r1a0: u288 {
            limb0: 0x520f9cb580066bcf2ce872db,
            limb1: 0x24a6e42c185fd36abb66c4ba,
            limb2: 0x309b07583317a13
        },
        r1a1: u288 {
            limb0: 0x5a4c61efaa3d09a652c72471,
            limb1: 0xfcb2676d6aa28ca318519d2,
            limb2: 0x1405483699afa209
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb1e3d257fe55819979ab4097,
            limb1: 0xd59603107b5e81deb923d8,
            limb2: 0x715bffe47e2e2dd
        },
        r0a1: u288 {
            limb0: 0x97c0738632d9a93f4e0ba72d,
            limb1: 0xbfd0c3365d01a1f714d3759,
            limb2: 0x1c29c1f411dc540
        },
        r1a0: u288 {
            limb0: 0x7caa61caf0bbdc5230856772,
            limb1: 0x89f5860ecca5e227aa9130e1,
            limb2: 0x188dc30e859f9c1f
        },
        r1a1: u288 {
            limb0: 0xce9b50199b0e992329de2244,
            limb1: 0x27adb223b3f3971d349f8e3d,
            limb2: 0xfdc83ae7b53ef37
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7b183175ca3fbe6641df0888,
            limb1: 0x8693e17464b94ffa3f7b094a,
            limb2: 0x14195da90124cbfd
        },
        r0a1: u288 {
            limb0: 0x8420074c9dde8e3833ed55d3,
            limb1: 0x9e2d180a69fee024630ea607,
            limb2: 0x233ea6f58ff185f2
        },
        r1a0: u288 {
            limb0: 0x173556c2d0eb6248053960aa,
            limb1: 0x8b1eceb8b0b434fcf608c1d6,
            limb2: 0x2e126bf99fa842d5
        },
        r1a1: u288 {
            limb0: 0x5da758a0ee7fb2a3e06be2,
            limb1: 0x6ac18a403f28db43b82c194a,
            limb2: 0x7c4ac106b39547f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbfdfdae86101e29da3e869b8,
            limb1: 0xf969a9b961a28b872e56aac2,
            limb2: 0x1afdc719440d90f0
        },
        r0a1: u288 {
            limb0: 0xee43c995686f13baa9b07266,
            limb1: 0xbfa387a694c641cceee4443a,
            limb2: 0x104d8c02eb7f60c8
        },
        r1a0: u288 {
            limb0: 0x8d451602b3593e798aecd7fb,
            limb1: 0x69ffbefe7c5ac2cf68e8691e,
            limb2: 0x2ea064a1bc373d28
        },
        r1a1: u288 {
            limb0: 0x6e7a663073bfe88a2b02326f,
            limb1: 0x5faadb36847ca0103793fa4a,
            limb2: 0x26c09a8ec9303836
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcfb363de5baf7b45987f876,
            limb1: 0xf2e1d1dc0fe3691acb1225a7,
            limb2: 0x8df8cdde30e2c50
        },
        r0a1: u288 {
            limb0: 0x2d92dfa37ccc7916a95df874,
            limb1: 0xc3b06cd8297a319dabb2174a,
            limb2: 0x2192243c6c5431d4
        },
        r1a0: u288 {
            limb0: 0xfff74746441a12d5bca99700,
            limb1: 0xa518a30b6bd53c844887294,
            limb2: 0x1eacb01385a75dfd
        },
        r1a1: u288 {
            limb0: 0xa21a131c1c6212f8c34bf776,
            limb1: 0xe6feed3cf985360b5cca4490,
            limb2: 0x2f122cdd36d9baa7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d038747ebac16adc1c50bdd,
            limb1: 0xe3706a783e99f73ac742aa1a,
            limb2: 0x17eac23b00b545ff
        },
        r0a1: u288 {
            limb0: 0xdc25ff0bd02abcbe502c4e37,
            limb1: 0x39b92e6ebb65e5f2d8504f90,
            limb2: 0x2415b5f61301dff6
        },
        r1a0: u288 {
            limb0: 0x9cdcb2146d15f37900db82ac,
            limb1: 0x96c3940e2f5c5f8198fadee3,
            limb2: 0x2f662ea79b473fc2
        },
        r1a1: u288 {
            limb0: 0xc0fb95686de65e504ed4c57a,
            limb1: 0xec396c7c4275d4e493b00713,
            limb2: 0x106d2aab8d90d517
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x55a7a903babde47444da0e88,
            limb1: 0xf9b846b2d712d59c50f3d2b5,
            limb2: 0x1faad068848aa9f9
        },
        r0a1: u288 {
            limb0: 0xb0073b0f3a60ae979910a58,
            limb1: 0xa1fa4753c075c875e7046e0f,
            limb2: 0x2359b17e24d79822
        },
        r1a0: u288 {
            limb0: 0x2b6d3712c7d0355b22c3ba9,
            limb1: 0x3953f3faaca0eca303f1b1f9,
            limb2: 0x1defc970eb77e08b
        },
        r1a1: u288 {
            limb0: 0x8579c808ee7b30cf49cb675c,
            limb1: 0x684f046d385ec33dbff8070e,
            limb2: 0x71ad13ba440ad0f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49bbb4d856921e3177c0b5bf,
            limb1: 0x76d84d273694e662bdd5d364,
            limb2: 0xea5dc611bdd369d
        },
        r0a1: u288 {
            limb0: 0x9e9fc3adc530fa3c5c6fd7fe,
            limb1: 0x114bb0c0e8bd247da41b3883,
            limb2: 0x6044124f85d2ce
        },
        r1a0: u288 {
            limb0: 0xa6e604cdb4e40982a97c084,
            limb1: 0xef485caa56c7820be2f6b11d,
            limb2: 0x280de6387dcbabe1
        },
        r1a1: u288 {
            limb0: 0xcaceaf6df5ca9f8a18bf2e1e,
            limb1: 0xc5cce932cc6818b53136c142,
            limb2: 0x12f1cd688682030c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x37497c23dcf629df58a5fa12,
            limb1: 0x4fcd5534ae47bded76245ac9,
            limb2: 0x1715ab081e32ac95
        },
        r0a1: u288 {
            limb0: 0x856275471989e2c288e3c83,
            limb1: 0xb42d81a575b89b127a7821a,
            limb2: 0x5fa75a0e4ae3118
        },
        r1a0: u288 {
            limb0: 0xeb22351e8cd345c23c0a3fef,
            limb1: 0x271feb16d4b47d2267ac9d57,
            limb2: 0x258f9950b9a2dee5
        },
        r1a1: u288 {
            limb0: 0xb5f75468922dc025ba7916fa,
            limb1: 0x7e24515de90edf1bde4edd9,
            limb2: 0x289145b3512d4d81
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x26fe9a50c1cd2dfd0ebf6571,
            limb1: 0x3504192aa5d52a0a41960cf6,
            limb2: 0xfa06166f5cd4518
        },
        r0a1: u288 {
            limb0: 0x6dc88cc5ef7686a62a29375b,
            limb1: 0xc7fea48042275a0bf13fa909,
            limb2: 0x8a30c1e2241ba9f
        },
        r1a0: u288 {
            limb0: 0x1abf0f584b8c5bdf8643f72d,
            limb1: 0xc7e2301a067b2abe2e42c612,
            limb2: 0x13e606c2a81a24e3
        },
        r1a1: u288 {
            limb0: 0xf28946ccde72bfb1ece59ac2,
            limb1: 0x842454c4ab82032a9ee407eb,
            limb2: 0x16fcb522f6c924c7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x570ad19b1fe2403b00fffd77,
            limb1: 0xbc91ff633d96c32ab4118b63,
            limb2: 0x19202770c11c699d
        },
        r0a1: u288 {
            limb0: 0x16b1f143a2b6a17251c80529,
            limb1: 0xdb5a4b833cdc01038d4d4c79,
            limb2: 0x14b32e76b08f281a
        },
        r1a0: u288 {
            limb0: 0x9137e7b13b6690f9ebd5b4eb,
            limb1: 0x60073310031c9259ae07cdbc,
            limb2: 0x26981f5110fcb19a
        },
        r1a1: u288 {
            limb0: 0xbc3832e7d2ff35506454352f,
            limb1: 0xc4f8235ff136d214914dc9e2,
            limb2: 0x18f20eb73a728704
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b7b32bcc3119c64a62a8de,
            limb1: 0xe07184496f17bbd59a4b7bbd,
            limb2: 0x1708c536fd78b531
        },
        r0a1: u288 {
            limb0: 0xfa85b5778c77166c1523a75e,
            limb1: 0x89a00c53309a9e525bef171a,
            limb2: 0x2d2287dd024e421
        },
        r1a0: u288 {
            limb0: 0x31fd0884eaf2208bf8831e72,
            limb1: 0x537e04ea344beb57ee645026,
            limb2: 0x23c7f99715257261
        },
        r1a1: u288 {
            limb0: 0x8c38b3aeea525f3c2d2fdc22,
            limb1: 0xf838a99d9ec8ed6dcec6a2a8,
            limb2: 0x2973d5159ddc479a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f058d8c63fd905d3ca29b42,
            limb1: 0x1f0a90982cc68e4ddcd83e57,
            limb2: 0x240aeaae0783fbfa
        },
        r0a1: u288 {
            limb0: 0xedfee81d80da310fdf0d0d8,
            limb1: 0xc2208e6de8806cf491bd74d4,
            limb2: 0xb7318be62a476af
        },
        r1a0: u288 {
            limb0: 0x3c6920c8a24454c634f388fe,
            limb1: 0x23328a006312a722ae09548b,
            limb2: 0x1d2f1c58b80432e2
        },
        r1a1: u288 {
            limb0: 0xb72980574f7a877586de3a63,
            limb1: 0xcd773b87ef4a29c16784c5ae,
            limb2: 0x1f812c7e22f339c5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x132dcc46317a61e284c3374,
            limb1: 0xdb358da3faa7f3945732407f,
            limb2: 0x11bd27d32ed56622
        },
        r0a1: u288 {
            limb0: 0xa30afc733ba53b0202461024,
            limb1: 0xf10bafc3e66504a2e28c854f,
            limb2: 0x65c1c8aabfc7b5
        },
        r1a0: u288 {
            limb0: 0x5b0fd8350dff1ba9499f63a7,
            limb1: 0x89fd65993dde1ef36c06406d,
            limb2: 0x1af80f749e6cbfae
        },
        r1a1: u288 {
            limb0: 0xc88ef439855754ffe39ab725,
            limb1: 0xa61bc78b07d0ba021efec400,
            limb2: 0x167d1ae0132e5475
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x816085ca8d7b618c114ce230,
            limb1: 0xa8dbcf10c668c1abfa220cdf,
            limb2: 0x19c05dfb20d3bf13
        },
        r0a1: u288 {
            limb0: 0x5455d653ab1837173c7b3323,
            limb1: 0xb6320e5ffe6265800040c7ec,
            limb2: 0x30308e90ba1207aa
        },
        r1a0: u288 {
            limb0: 0x929cb0fd1de7ad4001b9f4e,
            limb1: 0x1e7cbaaed30fa9040c0461d2,
            limb2: 0x2ddf0aab35e662b1
        },
        r1a1: u288 {
            limb0: 0xa589250f8f244c30b12ac7c5,
            limb1: 0x41772435c17ceafc64c0f95b,
            limb2: 0x234fb4b0072ff276
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeebe92941f95b6ea1d095bb,
            limb1: 0x9c7962eb8bbeb95a9ca7cf50,
            limb2: 0x290bdaf3b9a08dc3
        },
        r0a1: u288 {
            limb0: 0x686cfa11c9d4b93675495599,
            limb1: 0xb1d69e17b4b5ebf64f0d51e1,
            limb2: 0x2c18bb4bdc2e9567
        },
        r1a0: u288 {
            limb0: 0x17419b0f6a04bfc98d71527,
            limb1: 0x80eba6ff02787e3de964a4d1,
            limb2: 0x26087bb100e7ff9f
        },
        r1a1: u288 {
            limb0: 0x17c4ee42c3f612c43a08f689,
            limb1: 0x7276bdda2df6d51a291dba69,
            limb2: 0x40a7220ddb393e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5d3a197a4c681e9b87da3b92,
            limb1: 0x4c68eb0784cc8e34285f2395,
            limb2: 0x2ccc1587feb75e76
        },
        r0a1: u288 {
            limb0: 0x735e0fca7ab20eff3e07704d,
            limb1: 0x353ca8591a3e1336d280575c,
            limb2: 0x2af6d1b6002dcc84
        },
        r1a0: u288 {
            limb0: 0x693322c2b415cd20ef610394,
            limb1: 0x5fbfeae5276b7d4e2461721a,
            limb2: 0x9ab0ceabfb62d5d
        },
        r1a1: u288 {
            limb0: 0x68f08c752a0180394ed86877,
            limb1: 0xe0f751492c35de7ba6fc9f89,
            limb2: 0x209269c1a9a26aa1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x830d777c19040571a1d72fd0,
            limb1: 0x651b2c6b8c292020817a633f,
            limb2: 0x268af1e285bc59ff
        },
        r0a1: u288 {
            limb0: 0xede78baa381c5bce077f443d,
            limb1: 0x540ff96bae21cd8b9ae5438b,
            limb2: 0x12a1fa7e3b369242
        },
        r1a0: u288 {
            limb0: 0x797c0608e5a535d8736d4bc5,
            limb1: 0x375faf00f1147656b7c1075f,
            limb2: 0xda60fab2dc5a639
        },
        r1a1: u288 {
            limb0: 0x610d26085cfbebdb30ce476e,
            limb1: 0x5bc55890ff076827a09e8444,
            limb2: 0x14272ee2d25f20b7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x730f734821749530172b0a5d,
            limb1: 0x3db63ceaa82d3c8d9c6dd72c,
            limb2: 0x290017c29c41748c
        },
        r0a1: u288 {
            limb0: 0xee4e15fb0c8b51554c1a3b4c,
            limb1: 0xa2e58b555beb49f57853f15f,
            limb2: 0x161523f6acedf957
        },
        r1a0: u288 {
            limb0: 0x36d49534db67719ac78de4d9,
            limb1: 0xd2fcb09b2a6c9d249345092a,
            limb2: 0x20b12e6af6bab2a0
        },
        r1a1: u288 {
            limb0: 0x63320aacc8c3ae5621724af6,
            limb1: 0x693253bf559407a1c014d53a,
            limb2: 0xa53e9e87ebda23b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6862e1a4ca3b2baf6f8d8aa,
            limb1: 0x96f9066dded3a3d899025af4,
            limb2: 0x1a98af9f0d48fd3
        },
        r0a1: u288 {
            limb0: 0x276b417cc61ea259c114314e,
            limb1: 0x464399e5e0037b159866b246,
            limb2: 0x12cc97dcf32896b5
        },
        r1a0: u288 {
            limb0: 0xef72647f4c2d08fc038c4377,
            limb1: 0x34883cea19be9a490a93cf2b,
            limb2: 0x10d01394daa61ed0
        },
        r1a1: u288 {
            limb0: 0xdf345239ece3acaa62919643,
            limb1: 0x914780908ece64e763cca062,
            limb2: 0xee2a80dbd2012a3
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d5a31f4d08a0ebf7e071e00,
            limb1: 0xcd1244dd95dd30005f531f81,
            limb2: 0xb4cb469a2dcf4f1
        },
        r0a1: u288 {
            limb0: 0x7c5938adaf38b355092de1f1,
            limb1: 0x292ab08995b293abfcba14b,
            limb2: 0x1fd126a2b9f37c67
        },
        r1a0: u288 {
            limb0: 0x6e9d352b02a7cb771fcc33f9,
            limb1: 0x7754d8536eefda2025a07340,
            limb2: 0x1840289291c35a72
        },
        r1a1: u288 {
            limb0: 0xe85f465417b7bd758c547b2e,
            limb1: 0xf7f703c3bc55ff8a01fa9365,
            limb2: 0xfa301227880a841
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcd4289c87a25aa12f298d992,
            limb1: 0xcb9995da2bdee543658f49bc,
            limb2: 0x2cf36ace8424e99e
        },
        r0a1: u288 {
            limb0: 0xe2fc60a11d186a212d612862,
            limb1: 0x3534870f0fbd7041ba462325,
            limb2: 0x2372f8d1cd64dc35
        },
        r1a0: u288 {
            limb0: 0x329857835448ec4c97e6cb6f,
            limb1: 0x79d5949e1e60b3c3df87032d,
            limb2: 0x114a215b1731b392
        },
        r1a1: u288 {
            limb0: 0x2e93c3d86f32b6288c5b23c9,
            limb1: 0x4790adeffd37714e98cf8fec,
            limb2: 0x1fae9b457ff5d602
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7b4cc2a662d86bb7105aba33,
            limb1: 0xcb0da9bd98e883a149f90ba2,
            limb2: 0x29918911ab4144b8
        },
        r0a1: u288 {
            limb0: 0xd4404add08a98f260aca837d,
            limb1: 0xd5bc2931ef69952e5f76222e,
            limb2: 0x61cad46af9baae2
        },
        r1a0: u288 {
            limb0: 0x4d7170278ec33e04b8b5713c,
            limb1: 0xc6078b99ee40a0535fbd9359,
            limb2: 0x1d34244357ab5f13
        },
        r1a1: u288 {
            limb0: 0xb7d100643d04f811f2e66ef5,
            limb1: 0x2546a9bf8cf0c466636b64ac,
            limb2: 0x137663f893f7effb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4058149e82ea51362b79be4,
            limb1: 0x734eba2621918a820ae44684,
            limb2: 0x110a314a02272b1
        },
        r0a1: u288 {
            limb0: 0xe2b43963ef5055df3c249613,
            limb1: 0x409c246f762c0126a1b3b7b7,
            limb2: 0x19aa27f34ab03585
        },
        r1a0: u288 {
            limb0: 0x179aad5f620193f228031d62,
            limb1: 0x6ba32299b05f31b099a3ef0d,
            limb2: 0x157724be2a0a651f
        },
        r1a1: u288 {
            limb0: 0xa33b28d9a50300e4bbc99137,
            limb1: 0x262a51847049d9b4d8cea297,
            limb2: 0x189acb4571d50692
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa1b8eeae25be6b27abd27a4d,
            limb1: 0xb91c0751f8f9e3c58b1f6127,
            limb2: 0xe1e368ea691da8b
        },
        r0a1: u288 {
            limb0: 0xc0d63b8c8d5b0aa71306e9bf,
            limb1: 0x70277751c84c5733d0f5a9f7,
            limb2: 0x1ac351ea3e38f29a
        },
        r1a0: u288 {
            limb0: 0x4374f4d44df9ef89f35ccd53,
            limb1: 0xdffd11bc7a3614b291516794,
            limb2: 0x2e641e61df857c37
        },
        r1a1: u288 {
            limb0: 0x3f305830fc689201ffea1fcd,
            limb1: 0x5f3fc1c8fc065473417b695a,
            limb2: 0x168787ced0e6f158
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x29bd4381ae4afc677ee37ed6,
            limb1: 0x29ed43453f9a008d9176f004,
            limb2: 0x24134eb915104f43
        },
        r0a1: u288 {
            limb0: 0x81597f82bb67e90a3e72bdd2,
            limb1: 0xab3bbde5f7bbb4df6a6b5c19,
            limb2: 0x19ac61eea40a367c
        },
        r1a0: u288 {
            limb0: 0xe30a79342fb3199651aee2fa,
            limb1: 0xf500f028a73ab7b7db0104a3,
            limb2: 0x808b50e0ecb5e4d
        },
        r1a1: u288 {
            limb0: 0x55f2818453c31d942444d9d6,
            limb1: 0xf6dd80c71ab6e893f2cf48db,
            limb2: 0x13c3ac4488abd138
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc64117b0b26641e1d9a02531,
            limb1: 0x282d0efc2ea0edb733cf36c3,
            limb2: 0x11e7def4b9a90bd8
        },
        r0a1: u288 {
            limb0: 0x27f17915f4ef9f79379b0629,
            limb1: 0xa2f020ab66e6852020196df4,
            limb2: 0x18e5cdf992b6cd2f
        },
        r1a0: u288 {
            limb0: 0xc93abe7f37d99d5095c21ef1,
            limb1: 0xb2a89e698e3a1a2ced390258,
            limb2: 0x89f8ce5797b19b0
        },
        r1a1: u288 {
            limb0: 0x6ba9dfa893cc3d028542131,
            limb1: 0x23d301d6545a5340c6df5885,
            limb2: 0x239178408c032315
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1464269bbeafa546f559b8f,
            limb1: 0xab7f7dcd1ac32b86979471cf,
            limb2: 0x6a38256ee96f113
        },
        r0a1: u288 {
            limb0: 0xf14d50984e65f9bc41df4e7e,
            limb1: 0x350aff9be6f9652ad441a3ad,
            limb2: 0x1b1e60534b0a6aba
        },
        r1a0: u288 {
            limb0: 0x9e98507da6cc50a56f023849,
            limb1: 0xcf8925e03f2bb5c1ba0962dd,
            limb2: 0x2b18961810a62f87
        },
        r1a1: u288 {
            limb0: 0x3a4c61b937d4573e3f2da299,
            limb1: 0x6f4c6c13fd90f4edc322796f,
            limb2: 0x13f4e99b6a2f025e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72dd374b897ed162386b3769,
            limb1: 0xd40658346c52e9f4412b704d,
            limb2: 0x2c447463b283aa38
        },
        r0a1: u288 {
            limb0: 0x29985f7f5fa0fe82c2cb20b5,
            limb1: 0x34a9cb6f5adde6b524c7e8e,
            limb2: 0x120dfebcf223ead1
        },
        r1a0: u288 {
            limb0: 0x169140bb5a6459446ed9ad7b,
            limb1: 0x254c802bd99895957551caa7,
            limb2: 0x16bf472003d2b695
        },
        r1a1: u288 {
            limb0: 0xb5e98e39c00a523d09bd97ff,
            limb1: 0x70956ec86c16af27837e8f93,
            limb2: 0x1ba55d7f2649a04d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0115a79120ae892a72f3dcb,
            limb1: 0xec67b5fc9ea414a4020135f,
            limb2: 0x1ee364e12321904a
        },
        r0a1: u288 {
            limb0: 0xa74d09666f9429c1f2041cd9,
            limb1: 0x57ffe0951f863dd0c1c2e97a,
            limb2: 0x154877b2d1908995
        },
        r1a0: u288 {
            limb0: 0xcbe5e4d2d2c91cdd4ccca0,
            limb1: 0xe6acea145563a04b2821d120,
            limb2: 0x18213221f2937afb
        },
        r1a1: u288 {
            limb0: 0xfe20afa6f6ddeb2cb768a5ae,
            limb1: 0x1a3b509131945337c3568fcf,
            limb2: 0x127b5788263a927e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x42ace79ae5d834f2997671a2,
            limb1: 0x4b392c148b6a776ff5cb40f8,
            limb2: 0x1a6ce34e13f71dfc
        },
        r0a1: u288 {
            limb0: 0x8b4ee70a3f5fac82b2c2949,
            limb1: 0xa63c64457af98be4a4c964ec,
            limb2: 0x24ae9a40c7f7b573
        },
        r1a0: u288 {
            limb0: 0xab266bfd37d4fd7ca9cec11a,
            limb1: 0x7d589d73ee1b742a781a59d5,
            limb2: 0x9a86f719a232741
        },
        r1a1: u288 {
            limb0: 0x430068f4a48927b6e17d672f,
            limb1: 0x263691388e8e961a1180ebea,
            limb2: 0xacc0f9b61fc00ac
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7c658aecdab4db3c83f7927,
            limb1: 0xfbf162264ca04ee50c70bde8,
            limb2: 0x2a20f4565b7ff885
        },
        r0a1: u288 {
            limb0: 0x45b1c2f0a1226361f42683c0,
            limb1: 0x9acdd892c48c08de047296bc,
            limb2: 0x27836373108925d4
        },
        r1a0: u288 {
            limb0: 0xc0ea9294b345e6d4892676a7,
            limb1: 0xcba74eca77086af245d1606e,
            limb2: 0xf20edac89053e72
        },
        r1a1: u288 {
            limb0: 0x4c92a28f2779a527a68a938c,
            limb1: 0x3a1c3c55ff9d20eac109fab3,
            limb2: 0x21c4a8c524b1ee7d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d659481d48c0453e71e62f2,
            limb1: 0x7c2cc957a226b518c4c8e4b0,
            limb2: 0x2dea839f9447769f
        },
        r0a1: u288 {
            limb0: 0x5d926101ab305e417cdb3b5e,
            limb1: 0xa2e00d71a7b721c64d7cb824,
            limb2: 0xe43f5614c43ea51
        },
        r1a0: u288 {
            limb0: 0xf03e23950e09a60b0ad84aa2,
            limb1: 0xfc7b796dce59aada087d014e,
            limb2: 0x212181dbbb528358
        },
        r1a1: u288 {
            limb0: 0x47389c1e57349405c1255be,
            limb1: 0x59276164b039cbc68963f9be,
            limb2: 0xbecabd31af6b864
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa68021d593c46246af22559e,
            limb1: 0x5c2cfc5bc4cd1b48f4704134,
            limb2: 0x296066ede1298f8c
        },
        r0a1: u288 {
            limb0: 0xfe17dd6765eb9b9625eb6a84,
            limb1: 0x4e35dd8e8f6088bb14299f8d,
            limb2: 0x1a380ab2689106e4
        },
        r1a0: u288 {
            limb0: 0x82bacf337ca09853df42bc59,
            limb1: 0xa15de4ef34a30014c5a2e9ae,
            limb2: 0x243cc0cec53c778b
        },
        r1a1: u288 {
            limb0: 0xcb2a1bf18e3ba9349b0a8bf2,
            limb1: 0x35134b2505cbb5a4c91f0ac4,
            limb2: 0x25e45206b13f43c4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e97b007ffd9891bd0e77650,
            limb1: 0x77671278ac33f17df6b1db88,
            limb2: 0x243daddc47f5d5c2
        },
        r0a1: u288 {
            limb0: 0x655fe4c8bbe5ee06aaa0054b,
            limb1: 0xf751450b02c93c7ddea95938,
            limb2: 0x21aa988e950d563f
        },
        r1a0: u288 {
            limb0: 0xb51b3b6b8582de3eb0549518,
            limb1: 0x84a1031766b7e465f5bbf40c,
            limb2: 0xd46c2d5b95e5532
        },
        r1a1: u288 {
            limb0: 0x50b6ddd8a5eef0067652191e,
            limb1: 0x298832a0bc46ebed8bff6190,
            limb2: 0xb568b4fe8311f93
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8dc3110c7c3f3d91e7be019c,
            limb1: 0x29370e917005dbcbdd53a4e9,
            limb2: 0x279e08f64e56c168
        },
        r0a1: u288 {
            limb0: 0x7733455d55eba01524c49047,
            limb1: 0x244bd260e24f0e00c36245c2,
            limb2: 0x22231e8c96239f7a
        },
        r1a0: u288 {
            limb0: 0xfef999ef8f5ce7affebc6ab7,
            limb1: 0x52c36be4d8ce09e1134c70c4,
            limb2: 0x1f83c1dcbb903e0b
        },
        r1a1: u288 {
            limb0: 0x4aac4b3bf3e8f8a635eca807,
            limb1: 0x2635806e90b60ee26b526404,
            limb2: 0x4902ab0e84c01ac
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2cbf71ce7e4bcc8083f23225,
            limb1: 0xe6e8b1306e91e2ab2fc2f289,
            limb2: 0x2e1af524f56994ba
        },
        r0a1: u288 {
            limb0: 0x6f53d60b2ca37339ada55dbd,
            limb1: 0x11fc40be0814f54d10247012,
            limb2: 0x1a756d0342bc0e9c
        },
        r1a0: u288 {
            limb0: 0xb781f33f38c009d61bd29552,
            limb1: 0xe623db428c45e43dfea62352,
            limb2: 0x41908001bdf9423
        },
        r1a1: u288 {
            limb0: 0x4ea2d80fcc1590ae7e0e7fc9,
            limb1: 0x505a28e31f6469aaad17c5db,
            limb2: 0x24ffffad8817bd91
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddb4db99db681d35f71a159c,
            limb1: 0xf71a330019414e6fdee75700,
            limb2: 0x14d9838e7d1918bb
        },
        r0a1: u288 {
            limb0: 0x203c8bac71951a5f2c653710,
            limb1: 0x9fc93f8da38ecc2957313982,
            limb2: 0x7b6d981259cabd9
        },
        r1a0: u288 {
            limb0: 0xa7297cdb5be0cc45d48ca6af,
            limb1: 0xa07b4b025ebe6c960eddfc56,
            limb2: 0xef2a5c30ef00652
        },
        r1a1: u288 {
            limb0: 0xb7f05c76d860e9122b36ecd7,
            limb1: 0x407d6522e1f9ce2bcbf80eda,
            limb2: 0x197625a558f32c36
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce34c9b596019f97ef723c1c,
            limb1: 0x8bc8330bcc22273c8ccb5c85,
            limb2: 0x224cac7a00990724
        },
        r0a1: u288 {
            limb0: 0xc9273521f9712b2dc913c15a,
            limb1: 0x161dcb07badb523282dfc311,
            limb2: 0x25563459275ea523
        },
        r1a0: u288 {
            limb0: 0xd50caff54eee6352e730c42c,
            limb1: 0xe90da51a335af90d8b4ce6ab,
            limb2: 0x2c3b001c1162fd2d
        },
        r1a1: u288 {
            limb0: 0x604fff9cd1da55afefdd1fa7,
            limb1: 0xf8a10f5b096ad4cca7e99aff,
            limb2: 0x2db992d4fb247d9b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0f04df9dec94801e48a6ff7,
            limb1: 0xdc59d087c627d38334e5b969,
            limb2: 0x3d36e11420be053
        },
        r0a1: u288 {
            limb0: 0xc80f070001aa1586189e0215,
            limb1: 0xff849fcbbbe7c00c83ab5282,
            limb2: 0x2a2354b2882706a6
        },
        r1a0: u288 {
            limb0: 0x48cf70c80f08b6c7dc78adb2,
            limb1: 0xc6632efa77b36a4a1551d003,
            limb2: 0xc2d3533ece75879
        },
        r1a1: u288 {
            limb0: 0x63e82ba26617416a0b76ddaa,
            limb1: 0xdaceb24adda5a049bed29a50,
            limb2: 0x1a82061a3344043b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x723a22b60f47ac09877252ac,
            limb1: 0x7b3648273000c582b20b0b81,
            limb2: 0x2da5e2e6387bcec1
        },
        r0a1: u288 {
            limb0: 0xdbf730a5e2dbeb57f91aa1bc,
            limb1: 0x892e6be870c2de2d21145568,
            limb2: 0x4e59c34e8360365
        },
        r1a0: u288 {
            limb0: 0xdc38d77d37d461897e639ced,
            limb1: 0xaa42d8de4b53a2f223318878,
            limb2: 0x2368f7b93df89f7c
        },
        r1a1: u288 {
            limb0: 0x7f6309cbac28013641096fc0,
            limb1: 0xc6e19ae4c2dcd940c185e82e,
            limb2: 0x21ecb23634162edd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9152fecf0f523415acc7c7be,
            limb1: 0xd9632cbfccc4ea5d7bf31177,
            limb2: 0x2d7288c5f8c83ab1
        },
        r0a1: u288 {
            limb0: 0x53144bfe4030f3f9f5efda8,
            limb1: 0xfeec394fbf392b11c66bae27,
            limb2: 0x28840813ab8a200b
        },
        r1a0: u288 {
            limb0: 0xdec3b11fbc28b305d9996ec7,
            limb1: 0x5b5f8d9d17199e149c9def6e,
            limb2: 0x10c1a149b6751bae
        },
        r1a1: u288 {
            limb0: 0x665e8eb7e7d376a2d921c889,
            limb1: 0xfdd76d06e46ee1a943b8788d,
            limb2: 0x8bb21d9960e837b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a67c28a175200e631aa506a,
            limb1: 0x7397303a34968ff17c06e801,
            limb2: 0x1b81e0c63123688b
        },
        r0a1: u288 {
            limb0: 0x3490cfd4f076c621dac4a12c,
            limb1: 0xec183578c91b90b72e5887b7,
            limb2: 0x179fb354f608da00
        },
        r1a0: u288 {
            limb0: 0x9322bde2044dde580a78ba33,
            limb1: 0xfc74821b668d3570cad38f8b,
            limb2: 0x8cec54a291f5e57
        },
        r1a1: u288 {
            limb0: 0xc2818b6a9530ee85d4b2ae49,
            limb1: 0x8d7b651ad167f2a43d7a2d0a,
            limb2: 0x7c9ca9bab0ffc7f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9057759e87aad2300c7d6c9b,
            limb1: 0xc2c5c531ee256a9c4b7bc1f,
            limb2: 0x10168450f5a4f0b8
        },
        r0a1: u288 {
            limb0: 0x322686e429197d46f6b03e6e,
            limb1: 0x5ab39ea1c7e363b4e9551c77,
            limb2: 0x214a5030709986af
        },
        r1a0: u288 {
            limb0: 0x8e997ba3adff1299fc50071c,
            limb1: 0x3dcde1af5093d0af6236e584,
            limb2: 0x406f0b1ea3efc4b
        },
        r1a1: u288 {
            limb0: 0xfd6bfe531943f46e25589c6f,
            limb1: 0xfe17c88985e677d398d19d7a,
            limb2: 0x1da00317fc64690a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6568b9fe1059cab1d8c79452,
            limb1: 0xb0554992e5a2257d6fda06c3,
            limb2: 0x2fb8dfdcb3838a4c
        },
        r0a1: u288 {
            limb0: 0x3b0dc3b6131ff42baeb57724,
            limb1: 0x24eabf967c2b1914febd416a,
            limb2: 0x33f09f4f2a8e4d8
        },
        r1a0: u288 {
            limb0: 0xa32917ed850322d62358ba50,
            limb1: 0x2f767d677133da21a0dbb6c3,
            limb2: 0x2c6ec16d637bef7a
        },
        r1a1: u288 {
            limb0: 0x62f738cc02cf1c431453f3fb,
            limb1: 0x58108d7e4df217d7d7d947e,
            limb2: 0x2d5d3fbc4d3a4053
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa576408f8300de3a7714e6ae,
            limb1: 0xe1072c9a16f202ecf37fbc34,
            limb2: 0x1b0cb1e2b5871263
        },
        r0a1: u288 {
            limb0: 0x2128e2314694b663286e231e,
            limb1: 0x54bea71957426f002508f715,
            limb2: 0x36ecc5dbe069dca
        },
        r1a0: u288 {
            limb0: 0x17c77cd88f9d5870957850ce,
            limb1: 0xb7f4ec2bc270ce30538fe9b8,
            limb2: 0x766279e588592bf
        },
        r1a1: u288 {
            limb0: 0x1b6caddf18de2f30fa650122,
            limb1: 0x40b77237a29cada253c126c6,
            limb2: 0x74ff1349b1866c8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x68c9e45012178c32f079445c,
            limb1: 0xf569a7939d14efec6c300ef,
            limb2: 0x2bce37a679a1ec41
        },
        r0a1: u288 {
            limb0: 0xa02db4c40aa8a6dd28bc10f4,
            limb1: 0x50cdc6648881531c380cc2dd,
            limb2: 0x3e369153c099bac
        },
        r1a0: u288 {
            limb0: 0xbbeb8d91bc43b6e59aaa8ff,
            limb1: 0xf2207d329c43ae972649bf68,
            limb2: 0x2f6ae67faef73977
        },
        r1a1: u288 {
            limb0: 0xb6da80e70c620ae1c1302b03,
            limb1: 0xbecf4b8e7c904f56c15050a5,
            limb2: 0x51d34f8d4a68016
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3603266e05560becab36faef,
            limb1: 0x8c3b88c9390278873dd4b048,
            limb2: 0x24a715a5d9880f38
        },
        r0a1: u288 {
            limb0: 0xe9f595b111cfd00d1dd28891,
            limb1: 0x75c6a392ab4a627f642303e1,
            limb2: 0x17b34a30def82ab6
        },
        r1a0: u288 {
            limb0: 0xe706de8f35ac8372669fc8d3,
            limb1: 0x16cc7f4032b3f3ebcecd997d,
            limb2: 0x166eba592eb1fc78
        },
        r1a1: u288 {
            limb0: 0x7d584f102b8e64dcbbd1be9,
            limb1: 0x2ead4092f009a9c0577f7d3,
            limb2: 0x2fe2c31ee6b1d41e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72253d939632f8c28fb5763,
            limb1: 0x9b943ab13cad451aed1b08a2,
            limb2: 0xdb9b2068e450f10
        },
        r0a1: u288 {
            limb0: 0x80f025dcbce32f6449fa7719,
            limb1: 0x8a0791d4d1ed60b86e4fe813,
            limb2: 0x1b1bd5dbce0ea966
        },
        r1a0: u288 {
            limb0: 0xaa72a31de7d815ae717165d4,
            limb1: 0x501c29c7b6aebc4a1b44407f,
            limb2: 0x464aa89f8631b3a
        },
        r1a1: u288 {
            limb0: 0x6b8d137e1ea43cd4b1f616b1,
            limb1: 0xdd526a510cc84f150cc4d55a,
            limb2: 0x1da2ed980ebd3f29
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbe3b288511ab3bbbfab567f2,
            limb1: 0x2b73c8a38c97245d35f59b84,
            limb2: 0x7ff54e7beef9d78
        },
        r0a1: u288 {
            limb0: 0x71ade4ec93f9d453fc80341a,
            limb1: 0xdef799ffa882c7786486dfee,
            limb2: 0x8e5b4a598221ce4
        },
        r1a0: u288 {
            limb0: 0xcd4701dd1a96ccb4d578d426,
            limb1: 0xe69dd97c7351bc40841b46a1,
            limb2: 0x1e167a930d5de60e
        },
        r1a1: u288 {
            limb0: 0xfd90816a7bc4fa469a5a2ddb,
            limb1: 0x834d36f058d26f8583e687d,
            limb2: 0x208f305a1159c491
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9f28c8418bc5a987d3bdc92c,
            limb1: 0x2909401dee0c6925dd85d65d,
            limb2: 0x8031bcc5b98c720
        },
        r0a1: u288 {
            limb0: 0x6eca2d3b673b4f78699f5848,
            limb1: 0xf0a2deecfc45814463c93a7e,
            limb2: 0x13927e8764900f4a
        },
        r1a0: u288 {
            limb0: 0x2f7f338e03270d74dedeedc4,
            limb1: 0x43b1d5d7609edf37b63b9caf,
            limb2: 0xe6db13b9bd6b13e
        },
        r1a1: u288 {
            limb0: 0x181dfc1b5904fd1954ad12d2,
            limb1: 0x8290f07f34f16f2301a8cbb0,
            limb2: 0x61a61ed6d561178
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x867cced8a010850958f41ff5,
            limb1: 0x6a37fdb2b8993eed18bafe8e,
            limb2: 0x21b9f782109e5a7
        },
        r0a1: u288 {
            limb0: 0x7307477d650618e66de38d0f,
            limb1: 0xacb622ce92a7e393dbe10ba1,
            limb2: 0x236e70838cee0ed5
        },
        r1a0: u288 {
            limb0: 0xb564a308aaf5dda0f4af0f0d,
            limb1: 0x55fc71e2f13d8cb12bd51e74,
            limb2: 0x294cf115a234a9e9
        },
        r1a1: u288 {
            limb0: 0xbd166057df55c135b87f35f3,
            limb1: 0xf9f29b6c50f1cce9b85ec9b,
            limb2: 0x2e8448d167f20f96
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9837175cce253b1155f6f6cd,
            limb1: 0x4aa73ddeaa4d90e104093b8,
            limb2: 0xf2fb88f94f9f96c
        },
        r0a1: u288 {
            limb0: 0x58b5d70737d1e48aab43a49d,
            limb1: 0x171354bf705589f4be88d7b,
            limb2: 0x159406cafdc2ec51
        },
        r1a0: u288 {
            limb0: 0xb16ff6902659ba1b910b6940,
            limb1: 0xb90210211ba83d93b9f3eea8,
            limb2: 0x2c0ea9c86bce5375
        },
        r1a1: u288 {
            limb0: 0xc12d6dc9a6176bab1d7b6fbe,
            limb1: 0x6332e79847ebacaa0f9d9e9,
            limb2: 0x17e2738b833bcb13
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdedaff3205bb953b2c390b8a,
            limb1: 0xe1a899da21c1dafb485c707e,
            limb2: 0x1ec897e7a041493e
        },
        r0a1: u288 {
            limb0: 0xf52c3c30cd4d3202b34089e0,
            limb1: 0xc652aa1ff533e1aad7532305,
            limb2: 0x2a1df766e5e3aa2e
        },
        r1a0: u288 {
            limb0: 0x7ac695d3e19d79b234daaf3d,
            limb1: 0x5ce2f92666aec92a650feee1,
            limb2: 0x21ab4fe20d978e77
        },
        r1a1: u288 {
            limb0: 0xa64a913a29a1aed4e0798664,
            limb1: 0x66bc208b511503d127ff5ede,
            limb2: 0x2389ba056de56a8d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce16972a735d83f206930a55,
            limb1: 0x5a91855bdc2b07f88d19d7bf,
            limb2: 0x2eef164ad6e4267c
        },
        r0a1: u288 {
            limb0: 0xa70b9d91e2cd8e0127a1a53c,
            limb1: 0x7f6f9bf2aa34519a780cab14,
            limb2: 0x273a42ec63e12828
        },
        r1a0: u288 {
            limb0: 0x4d3292029127f6f4cd04071a,
            limb1: 0xd5782bc4859081ddbc7bae46,
            limb2: 0x36d4f1fc10e6742
        },
        r1a1: u288 {
            limb0: 0x3d20c4d068a276a1bc1fc773,
            limb1: 0xdca7c9fc5dcbf19138e952ce,
            limb2: 0x2d3b924bcd8818b0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd88b16e68600a12e6c1f6006,
            limb1: 0x333243b43d3b7ff18d0cc671,
            limb2: 0x2b84b2a9b0f03ed8
        },
        r0a1: u288 {
            limb0: 0xf3e2b57ddaac822c4da09991,
            limb1: 0xd7c894b3fe515296bb054d2f,
            limb2: 0x10a75e4c6dddb441
        },
        r1a0: u288 {
            limb0: 0x73c65fbbb06a7b21b865ac56,
            limb1: 0x21f4ecd1403bb78729c7e99b,
            limb2: 0xaf88a160a6b35d4
        },
        r1a1: u288 {
            limb0: 0xade61ce10b8492d659ff68d0,
            limb1: 0x1476e76cf3a8e0df086ad9eb,
            limb2: 0x2e28cfc65d61e946
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf8b54b244108008e7f93350,
            limb1: 0x2ae9a68b9d6b96f392decd6b,
            limb2: 0x160b19eed152271c
        },
        r0a1: u288 {
            limb0: 0xc18a8994cfbb2e8df446e449,
            limb1: 0x408d51e7e4adedd8f4f94d06,
            limb2: 0x27661b404fe90162
        },
        r1a0: u288 {
            limb0: 0x1390b2a3b27f43f7ac73832c,
            limb1: 0x14d57301f6002fd328f2d64d,
            limb2: 0x17f3fa337367dddc
        },
        r1a1: u288 {
            limb0: 0x79cab8ff5bf2f762c5372f80,
            limb1: 0xc979d6f385fae4b5e4785acf,
            limb2: 0x60c5307a735b00f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4126e832464f48a0dcdd9a64,
            limb1: 0xb5cb066fcac5e0523636141f,
            limb2: 0x10eec9dea0455278
        },
        r0a1: u288 {
            limb0: 0x60da637fb6333ace83ef576e,
            limb1: 0x5b031463aa5438618be29354,
            limb2: 0xabcb8b8a708c29c
        },
        r1a0: u288 {
            limb0: 0xa37eb299e20c56cb6a8d9aab,
            limb1: 0x256a2f993effea98adb6e138,
            limb2: 0x1ea4d187b587fc8c
        },
        r1a1: u288 {
            limb0: 0x30db307a63a2629053cde978,
            limb1: 0x8258f702f30f98e4de8fb407,
            limb2: 0x187f1d3684e96913
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8aaa1ec98944062a46fa8a5b,
            limb1: 0xde11da30d4844b84d49f8f88,
            limb2: 0x22db714d61e043a1
        },
        r0a1: u288 {
            limb0: 0xa7660ea52ed45707b6ebadaf,
            limb1: 0xcb6f4b62638d0a9ee0cc0673,
            limb2: 0x7094a71765d63b0
        },
        r1a0: u288 {
            limb0: 0xb2360c45f57c46947c5abcd4,
            limb1: 0x69414953c049e7c8dce0bd04,
            limb2: 0x2040fd55931de01b
        },
        r1a1: u288 {
            limb0: 0x3553a1d0220fb17af3d521ff,
            limb1: 0x1679fba661bae54ca52821fd,
            limb2: 0x2fcbed3c31149b3c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x386d7b23c6dccb87637018c9,
            limb1: 0xfed2ea478e9a2210289079e2,
            limb2: 0x100aa83cb843353e
        },
        r0a1: u288 {
            limb0: 0x229c5c285f049d04c3dc5ce7,
            limb1: 0x28110670fe1d38c53ffcc6f7,
            limb2: 0x1778918279578f50
        },
        r1a0: u288 {
            limb0: 0xe9ad2c7b8a17a1f1627ff09d,
            limb1: 0xedff5563c3c3e7d2dcc402ec,
            limb2: 0xa8bd6770b6d5aa8
        },
        r1a1: u288 {
            limb0: 0x66c5c1aeed5c04470b4e8a3d,
            limb1: 0x846e73d11f2d18fe7e1e1aa2,
            limb2: 0x10a60eabe0ec3d78
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd00f6b2e65649d7edc0bd676,
            limb1: 0x409f1acbd9641ce26176fba4,
            limb2: 0x231a79a54883c1ec
        },
        r0a1: u288 {
            limb0: 0x2e45de03ef3c9e137a2c75df,
            limb1: 0x540cab38a495525355241f08,
            limb2: 0x8c7ecb40c714a66
        },
        r1a0: u288 {
            limb0: 0x77d4e5e9cf2e98e4ba5482a6,
            limb1: 0x6f817a202c75445da647e5a5,
            limb2: 0xc8c8f26eef897ee
        },
        r1a1: u288 {
            limb0: 0xe7b975b1db4348ab720bf3ff,
            limb1: 0x2ebb3912dfcacb4388c54d87,
            limb2: 0x14195b8d92d2a4f2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88ca191d85be1f6c205257ef,
            limb1: 0xd0cecf5c5f80926c77fd4870,
            limb2: 0x16ec42b5cae83200
        },
        r0a1: u288 {
            limb0: 0x154cba82460752b94916186d,
            limb1: 0x564f6bebac05a4f3fb1353ac,
            limb2: 0x2d47a47da836d1a7
        },
        r1a0: u288 {
            limb0: 0xb39c4d6150bd64b4674f42ba,
            limb1: 0x93c967a38fe86f0779bf4163,
            limb2: 0x1a51995a49d50f26
        },
        r1a1: u288 {
            limb0: 0xeb7bdec4b7e304bbb0450608,
            limb1: 0x11fc9a124b8c74b3d5560ea4,
            limb2: 0xbfa9bd7f55ad8ac
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2c803bd030aee0093b6b1b2b,
            limb1: 0x902bf0b4cebaf5512b9e4bc1,
            limb2: 0xd73ea14ef989f49
        },
        r0a1: u288 {
            limb0: 0x3a9b67d06f720adfa93f99b7,
            limb1: 0xe1ce54c6223b48963c776fce,
            limb2: 0x22a453eb2cab1d9e
        },
        r1a0: u288 {
            limb0: 0xcad8c3e523967c925d5695b5,
            limb1: 0xb4016ca56eb28ea277ac9b14,
            limb2: 0x1e99957844298031
        },
        r1a1: u288 {
            limb0: 0xad852b26d867658e67f48bda,
            limb1: 0xdc042d71d951e60527a0cf01,
            limb2: 0x1cceb17cc16d3e28
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fdc574c85cf0c0ce5e07a51,
            limb1: 0xd2439bf7b00bddc4cfb01b0c,
            limb2: 0x125c3bbdeb0bd2da
        },
        r0a1: u288 {
            limb0: 0x9d664714bae53cafcb5ef55d,
            limb1: 0x495c01724790853548f5e4de,
            limb2: 0x2ce5e2e263725941
        },
        r1a0: u288 {
            limb0: 0x98071eb7fe88c9124aee3774,
            limb1: 0xc3f66947a52bd2f6d520579f,
            limb2: 0x2eaf775dbd52f7d3
        },
        r1a1: u288 {
            limb0: 0x23e5594948e21db2061dca92,
            limb1: 0xd0ffa6f6c77290531c185431,
            limb2: 0x604c085de03afb1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5d486ae500873c404283b10c,
            limb1: 0xf6325dd2391e41fc20440d2e,
            limb2: 0x2fbf05eb15a5bbe
        },
        r0a1: u288 {
            limb0: 0x369e448f6bdfff9d3d82f2b0,
            limb1: 0xfbafaad38a22da0f70762926,
            limb2: 0x16d7af7538c749d1
        },
        r1a0: u288 {
            limb0: 0x752c7fe60a32f6ea585e14ac,
            limb1: 0x16298284bd4cf22ad1a2f5fd,
            limb2: 0xf689c46969bc5ee
        },
        r1a1: u288 {
            limb0: 0xe922a382139c6758d82fa22c,
            limb1: 0x3bc2dcbace755d4eeb4982b5,
            limb2: 0x1b99687618fc363e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeec2912e15f6bda39d4e005e,
            limb1: 0x2b8610c44d27bdbc6ba2aac5,
            limb2: 0x78ddc4573fc1fed
        },
        r0a1: u288 {
            limb0: 0x48099a0da11ea21de015229d,
            limb1: 0x5fe937100967d5cc544f4af1,
            limb2: 0x2c9ffe6d7d7e9631
        },
        r1a0: u288 {
            limb0: 0xa70d251296ef1ae37ceb7d03,
            limb1: 0x2adadcb7d219bb1580e6e9c,
            limb2: 0x180481a57f22fd03
        },
        r1a1: u288 {
            limb0: 0xacf46db9631037dd933eb72a,
            limb1: 0x8a58491815c7656292a77d29,
            limb2: 0x261e3516c348ae12
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4dd48fcaeea29e1eaf6790b3,
            limb1: 0xea06e9ea0ac1141168558244,
            limb2: 0x17204ea5b6452bf0
        },
        r0a1: u288 {
            limb0: 0xbe51b0c06bd813e676ebbe5a,
            limb1: 0xadb47e0eb7aa0d9091070759,
            limb2: 0x7eba41f725f344e
        },
        r1a0: u288 {
            limb0: 0x49743f631826164952a170d1,
            limb1: 0x48f2a3f767263f1bcd09b04b,
            limb2: 0x300797912b4f77b4
        },
        r1a1: u288 {
            limb0: 0x80a6d2129615e6f549d83903,
            limb1: 0x3e9122e9b46bc512867af814,
            limb2: 0x1551c6b343dc2622
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bfa32f0a09c3e2cfb8f6a38,
            limb1: 0x7a24df3ff3c7119a59d49318,
            limb2: 0x10e42281d64907ba
        },
        r0a1: u288 {
            limb0: 0xce42177a66cdeb4207d11e0c,
            limb1: 0x3322aa425a9ca270152372ad,
            limb2: 0x2f7fa83db407600c
        },
        r1a0: u288 {
            limb0: 0x62a8ff94fd1c7b9035af4446,
            limb1: 0x3ad500601bbb6e7ed1301377,
            limb2: 0x254d253ca06928f
        },
        r1a1: u288 {
            limb0: 0xf8f1787cd8e730c904b4386d,
            limb1: 0x7fd3744349918d62c42d24cc,
            limb2: 0x28a05e105d652eb8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ef31e059d602897fa8e80a8,
            limb1: 0x66a0710847b6609ceda5140,
            limb2: 0x228c0e568f1eb9c0
        },
        r0a1: u288 {
            limb0: 0x7b47b1b133c1297b45cdd79b,
            limb1: 0x6b4f04ed71b58dafd06b527b,
            limb2: 0x13ae6db5254df01a
        },
        r1a0: u288 {
            limb0: 0xbeca2fccf7d0754dcf23ddda,
            limb1: 0xe3d0bcd7d9496d1e5afb0a59,
            limb2: 0x305a0afb142cf442
        },
        r1a1: u288 {
            limb0: 0x2d299847431477c899560ecf,
            limb1: 0xbcd9e6c30bedee116b043d8d,
            limb2: 0x79473a2a7438353
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x594d512774a5cb2ef64e9582,
            limb1: 0x8ccd5724c2384b9f2699c593,
            limb2: 0x2c1c65ee6159d2bf
        },
        r0a1: u288 {
            limb0: 0x95e84a64fa4adc987144a5c4,
            limb1: 0xd9024aad637c118c960c4c99,
            limb2: 0x5dd36f586c4595
        },
        r1a0: u288 {
            limb0: 0xfab4f422b9209ce0559eeaf,
            limb1: 0x290d73b6a1d4f18c1c2d8b90,
            limb2: 0xf7e36e5d73a8765
        },
        r1a1: u288 {
            limb0: 0xed62dbf5c718d6ebac8329d2,
            limb1: 0x8033e6438f6fabf38c645276,
            limb2: 0x142771fbf6e221eb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49dbca3500b7590cda4075a5,
            limb1: 0x956bdfd743d19ecef2236d17,
            limb2: 0x1bbc0ca5032257b7
        },
        r0a1: u288 {
            limb0: 0x6eeba3ad773b73b30ecd29e8,
            limb1: 0x54465e760c566d229376f43d,
            limb2: 0x15c6d2f04293ce84
        },
        r1a0: u288 {
            limb0: 0x652a9fd37066a33b6fb0a523,
            limb1: 0x4b32a68aa99c968ca020d5f4,
            limb2: 0x26a10c68843138f2
        },
        r1a1: u288 {
            limb0: 0x6cdb3508110e1a6e6f6d2c4d,
            limb1: 0x5257e9a0affdcf361bb4a5a0,
            limb2: 0xf73be28c1013851
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65b71fe695e7ccd4b460dace,
            limb1: 0xa6ceba62ef334e6fe91301d5,
            limb2: 0x299f578d0f3554e6
        },
        r0a1: u288 {
            limb0: 0xaf781dd030a274e7ecf0cfa4,
            limb1: 0x2095020d373a14d7967797aa,
            limb2: 0x6a7f9df6f185bf8
        },
        r1a0: u288 {
            limb0: 0x8e91e2dba67d130a0b274df3,
            limb1: 0xe192a19fce285c12c6770089,
            limb2: 0x6e9acf4205c2e22
        },
        r1a1: u288 {
            limb0: 0xbcd5c206b5f9c77d667189bf,
            limb1: 0x656a7e2ebc78255d5242ca9,
            limb2: 0x25f43fec41d2b245
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1dca6ff7ee21ccb3600dfba,
            limb1: 0x8a6b13bf4a6442e0c0abbb05,
            limb2: 0x3913d1701ad2578
        },
        r0a1: u288 {
            limb0: 0x2e7467ca2b36445db3746928,
            limb1: 0xb4f8b8f4a3f2be957c58ebbc,
            limb2: 0x2cdc0831970cfffa
        },
        r1a0: u288 {
            limb0: 0xdd80333a545fdbea6d585af8,
            limb1: 0xb6329d53d0ab95c005f8a912,
            limb2: 0x14e565d290f33112
        },
        r1a1: u288 {
            limb0: 0x446ee148aa3d3094b05522a,
            limb1: 0x68d0a029fa89a1b615222b56,
            limb2: 0x2e866f86e590147d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e56e6733cce20d9c5b16d96,
            limb1: 0xc7ef260535fb75b9d3e089f,
            limb2: 0x292dd4aa636e7729
        },
        r0a1: u288 {
            limb0: 0x6e7e1038b336f36519c9faaf,
            limb1: 0x3c66bd609510309485e225c7,
            limb2: 0x10cacac137411eb
        },
        r1a0: u288 {
            limb0: 0x4a3e8b96278ac092fe4f3b15,
            limb1: 0xba47e583e2750b42f93c9631,
            limb2: 0x125da6bd69495bb9
        },
        r1a1: u288 {
            limb0: 0xae7a56ab4b959a5f6060d529,
            limb1: 0xc3c263bfd58c0030c063a48e,
            limb2: 0x2f4d15f13fae788c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x301e0885c84d273b6d323124,
            limb1: 0x11fd5c75e269f7a30fa4154f,
            limb2: 0x19afdcfdcce2fc0d
        },
        r0a1: u288 {
            limb0: 0x3d13519f934526be815c38b0,
            limb1: 0xd43735909547da73838874fc,
            limb2: 0x255d8aca30f4e0f6
        },
        r1a0: u288 {
            limb0: 0x90a505b76f25a3396e2cea79,
            limb1: 0x3957a2d0848c54b9079fc114,
            limb2: 0x1ba0cd3a9fe6d4bb
        },
        r1a1: u288 {
            limb0: 0xc47930fba77a46ebb1db30a9,
            limb1: 0x993a1cb166e9d40bebab02b2,
            limb2: 0x1deb16166d48118b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9ec4eb852badb07f7d1babda,
            limb1: 0xcf1bed6b7d0f6a34c62adb98,
            limb2: 0x22900bc6ca6e70ce
        },
        r0a1: u288 {
            limb0: 0x222fd46673458bfea643216e,
            limb1: 0x6ac5b87a2f5c3f22c3bc9328,
            limb2: 0x186abdc11b10794f
        },
        r1a0: u288 {
            limb0: 0xf9750fdac53676f291ad3ab1,
            limb1: 0xe29f83aa81beaea18917de29,
            limb2: 0x72a7bdac80c4c41
        },
        r1a1: u288 {
            limb0: 0x637a466edde77642dcba6bf1,
            limb1: 0x34e8c3d918d5ff8034ff0b3e,
            limb2: 0x2340ff3af10fce1a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6cd724f8248acf9ad56e693,
            limb1: 0xce31b67741f5324c3810232a,
            limb2: 0x2ba7a292e73b2776
        },
        r0a1: u288 {
            limb0: 0xedadf256e7b4c9eb91b61dd6,
            limb1: 0x6b9b1c58e9cf58da3122521e,
            limb2: 0x2ef654178bfcd4e8
        },
        r1a0: u288 {
            limb0: 0xbab14d3cf8ae6181ad585e67,
            limb1: 0xb76790d7be18b16a2c5fa43d,
            limb2: 0x2956cfb6a9d46d9e
        },
        r1a1: u288 {
            limb0: 0x7310edc93fad4fd73a2202c4,
            limb1: 0xaa1e9789ef64c53c9221f477,
            limb2: 0x243fcb2449b47546
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb15bbaec50ff49d30e49f74a,
            limb1: 0xc90a8c79fb045c5468f14151,
            limb2: 0x25e47927e92df0e3
        },
        r0a1: u288 {
            limb0: 0x57f66909d5d40dfb8c7b4d5c,
            limb1: 0xea5265282e2139c48c1953f2,
            limb2: 0x2d7f5e6aff2381f6
        },
        r1a0: u288 {
            limb0: 0x2a2f573b189a3c8832231394,
            limb1: 0x738abc15844895ffd4733587,
            limb2: 0x20aa11739c4b9bb4
        },
        r1a1: u288 {
            limb0: 0x51695ec614f1ff4cce2f65d1,
            limb1: 0x6765aae6cb895a2406a6dd7e,
            limb2: 0x1126ee431c522da0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x50d567dca66f618638856679,
            limb1: 0xe5842687f7a1012b6d096fe2,
            limb2: 0x23857a1bf1fc6b17
        },
        r0a1: u288 {
            limb0: 0x8732f0f1419b9eae1a5d06f9,
            limb1: 0x627fc51c6cecf2027992afa0,
            limb2: 0x2009b6a7468e7e7d
        },
        r1a0: u288 {
            limb0: 0x9921853b83800d877c34f209,
            limb1: 0x3533d1f3db10e1f29be45a89,
            limb2: 0x2f6dee2c4dac4dfd
        },
        r1a1: u288 {
            limb0: 0x963a64d198894d592ed6b7e9,
            limb1: 0x9b2457a3a053a49b466beb11,
            limb2: 0x207b58d2dda42cad
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9214fc3209f1518b05fd21c6,
            limb1: 0x9bc8ce4f56423009710770e8,
            limb2: 0x32445cc6972799c
        },
        r0a1: u288 {
            limb0: 0x93ef401ecd9cfae3644d22e6,
            limb1: 0xce5a741a9847a144cfaf8c96,
            limb2: 0xf7a814d5726da4a
        },
        r1a0: u288 {
            limb0: 0xd19264d986f163b133a91c0c,
            limb1: 0x529dc5ce4b193c0f672c6a32,
            limb2: 0x2e9a118959353374
        },
        r1a1: u288 {
            limb0: 0x3d97d6e8f45072cc9e85e412,
            limb1: 0x4dafecb04c3bb23c374f0486,
            limb2: 0xa174dd4ac8ee628
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xba5ae7aa16cfa20be1c999b5,
            limb1: 0xbb1393ff19c97fa606de8428,
            limb2: 0x195990383799ef28
        },
        r0a1: u288 {
            limb0: 0xcd03d977564a762fdab57779,
            limb1: 0xee73767b1cf1668318e828f,
            limb2: 0x1f3250870c1cfe22
        },
        r1a0: u288 {
            limb0: 0xa956319ac9aa2efa867e87b6,
            limb1: 0xaf4fae7dbd03576483e998df,
            limb2: 0x1007e34acb10298a
        },
        r1a1: u288 {
            limb0: 0x61adf7b70c65f041f66d78c3,
            limb1: 0x4e9f994fde77dd13a6853830,
            limb2: 0x9d749123827ecb2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98d8b0c4adcf27bceb305c2c,
            limb1: 0x859afa9c7668ed6152d8cba3,
            limb2: 0x29e7694f46e3a272
        },
        r0a1: u288 {
            limb0: 0x1d970845365594307ba97556,
            limb1: 0xd002d93ad793e154afe5b49b,
            limb2: 0x12ca77d3fb8eee63
        },
        r1a0: u288 {
            limb0: 0x9f2934faefb8268e20d0e337,
            limb1: 0xbc4b5e1ec056881319f08766,
            limb2: 0x2e103461759a9ee4
        },
        r1a1: u288 {
            limb0: 0x7adc6cb87d6b43000e2466b6,
            limb1: 0x65e5cefa42b25a7ee8925fa6,
            limb2: 0x2560115898d7362a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x337a76c56feba76d9c34f8b1,
            limb1: 0x718331fd7a4f955de42f78a,
            limb2: 0xddb9259a6f7d080
        },
        r0a1: u288 {
            limb0: 0xb72348756b54d0bc1568485,
            limb1: 0xcfcb76044b6e84b6080f8e04,
            limb2: 0x1ee318569ec806f0
        },
        r1a0: u288 {
            limb0: 0x10b0fb5c7831cf2afe20e0ae,
            limb1: 0x88d8383b747bf53b292a025b,
            limb2: 0x1dd2c98a93ff8999
        },
        r1a1: u288 {
            limb0: 0x2c23675714f2d9296166f58d,
            limb1: 0x3160427b8869f2ecaaf1ba71,
            limb2: 0x171287a31a8aada3
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64d864643668392c0e357cc4,
            limb1: 0x4c9bf66853f1b287015ab84c,
            limb2: 0x2f5f1b92ad7ee4d4
        },
        r0a1: u288 {
            limb0: 0xdc33c8da5c575eef6987a0e1,
            limb1: 0x51cc07c7ef28e1b8d934bc32,
            limb2: 0x2358d94a17ec2a44
        },
        r1a0: u288 {
            limb0: 0xf659845b829bbba363a2497b,
            limb1: 0x440f348e4e7bed1fb1eb47b2,
            limb2: 0x1ad0eaab0fb0bdab
        },
        r1a1: u288 {
            limb0: 0x1944bb6901a1af6ea9afa6fc,
            limb1: 0x132319df135dedddf5baae67,
            limb2: 0x52598294643a4aa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76fd94c5e6f17fa6741bd7de,
            limb1: 0xc2e0831024f67d21013e0bdd,
            limb2: 0x21e2af6a43119665
        },
        r0a1: u288 {
            limb0: 0xad290eab38c64c0d8b13879b,
            limb1: 0xdd67f881be32b09d9a6c76a0,
            limb2: 0x8000712ce0392f2
        },
        r1a0: u288 {
            limb0: 0xd30a46f4ba2dee3c7ace0a37,
            limb1: 0x3914314f4ec56ff61e2c29e,
            limb2: 0x22ae1ba6cd84d822
        },
        r1a1: u288 {
            limb0: 0x5d888a78f6dfce9e7544f142,
            limb1: 0x9439156de974d3fb6d6bda6e,
            limb2: 0x106c8f9a27d41a4f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb43a0a5c6b0cca4414858107,
            limb1: 0xee9adc1f972a6d7a4ecbaa7b,
            limb2: 0x87694dd0b73f4d8
        },
        r0a1: u288 {
            limb0: 0x8cf54157baab2fdfb75e903f,
            limb1: 0x61a1d7bde4fb31a92aeb2bf2,
            limb2: 0x224af7ed77b90f7c
        },
        r1a0: u288 {
            limb0: 0x4ac827c68bc8303f93a00cc9,
            limb1: 0x6113bd1e2a7c49ebbe496032,
            limb2: 0x7744146fd360cd9
        },
        r1a1: u288 {
            limb0: 0x5641d1ff89b5696fdadc6291,
            limb1: 0xffa29c19ad2b87502eaecd50,
            limb2: 0x29efd1b85cddefd2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43819fc4d51810dfb0d7c0dd,
            limb1: 0xe677434f9e4d46dffd645f36,
            limb2: 0x288412d30359dd17
        },
        r0a1: u288 {
            limb0: 0xd8ab9ae7750c403d0bf9468a,
            limb1: 0x3a3e1804a5a39f355b4d2b67,
            limb2: 0x1ddaba87b1602454
        },
        r1a0: u288 {
            limb0: 0x7ec5be40fa69828561f66f88,
            limb1: 0xd33cae5c2285f30b925048b3,
            limb2: 0x29ff2ac10b353c26
        },
        r1a1: u288 {
            limb0: 0xd3b38d86990d461cd708d2f9,
            limb1: 0x334feabbcdef874f4d8a4d98,
            limb2: 0x117f506777597ae2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x92c09e4796207b802168341b,
            limb1: 0xd2d9d6acffd7829066cc49ce,
            limb2: 0xc89c2d0a7b2c81e
        },
        r0a1: u288 {
            limb0: 0x47e3c1cf6cdb6f3efe778c7f,
            limb1: 0x66b347099b6436794cf062eb,
            limb2: 0x18b4ccc64ae0a857
        },
        r1a0: u288 {
            limb0: 0x7d5793606a73b2740c71484a,
            limb1: 0xa0070135ca2dc571b28e3c9c,
            limb2: 0x1bc03576e04b94cf
        },
        r1a1: u288 {
            limb0: 0x1ba85b29875e638c10f16c99,
            limb1: 0x158f2f2acc3c2300bb9f9225,
            limb2: 0x42d8a8c36ea97c6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1fce0c410280157da7ca49b2,
            limb1: 0x4b51be8c583df7e822248404,
            limb2: 0x1106cddb75caf91
        },
        r0a1: u288 {
            limb0: 0x1cb9cd1808d8d105174d7667,
            limb1: 0x232aa46618d11a99ecc59a5e,
            limb2: 0x302caed41c8a2654
        },
        r1a0: u288 {
            limb0: 0x1d3241575a869a8d8255c2ac,
            limb1: 0x8e955af7a23bf99da6db1ed8,
            limb2: 0x1bb671eb17470168
        },
        r1a1: u288 {
            limb0: 0x569deb83fe3fc1033924c6e1,
            limb1: 0x97743fcb069e26fd071f1bd4,
            limb2: 0x258ef6208c3e35bf
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9440ad13408319cecb07087b,
            limb1: 0x537afc0c0cfe8ff761c24e08,
            limb2: 0x48e4ac10081048d
        },
        r0a1: u288 {
            limb0: 0xa37fb82b03a2c0bb2aa50c4f,
            limb1: 0xd3797f05c8fb84f6b630dfb,
            limb2: 0x2dffde2d6c7e43ff
        },
        r1a0: u288 {
            limb0: 0xc55d2eb1ea953275e780e65b,
            limb1: 0xe141cf680cab57483c02e4c7,
            limb2: 0x1b71395ce5ce20ae
        },
        r1a1: u288 {
            limb0: 0xe4fab521f1212a1d301065de,
            limb1: 0x4f8d31c78df3dbe4ab721ef2,
            limb2: 0x2828f21554706a0e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8cefc2f2af2a3082b790784e,
            limb1: 0x97ac13b37c6fbfc736a3d456,
            limb2: 0x683b1cdffd60acd
        },
        r0a1: u288 {
            limb0: 0xa266a8188a8c933dcffe2d02,
            limb1: 0x18d3934c1838d7bce81b2eeb,
            limb2: 0x206ac5cdda42377
        },
        r1a0: u288 {
            limb0: 0x90332652437f6e177dc3b28c,
            limb1: 0x75bd8199433d607735414ee8,
            limb2: 0x29d6842d8298cf7e
        },
        r1a1: u288 {
            limb0: 0xadedf46d8ea11932db0018e1,
            limb1: 0xbc7239ae9d1453258037befb,
            limb2: 0x22e7ebdd72c6f7a1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ff31ddcda84242c6c198e7,
            limb1: 0x3c64fbe146123423a0881e66,
            limb2: 0x19d04a5295c47b19
        },
        r0a1: u288 {
            limb0: 0xb6d47c3dfc43af2b52d10777,
            limb1: 0xe5411c3f4ce0af5ed53dcc0e,
            limb2: 0x2367cfdb52b7bd6a
        },
        r1a0: u288 {
            limb0: 0x7567d3d7acc850e360105ec3,
            limb1: 0x760184e2e6ba3a1153ac491b,
            limb2: 0x7247eb8422500c
        },
        r1a1: u288 {
            limb0: 0xd3617ba9e23d04a82f0142c3,
            limb1: 0xcf9814490d39f6e61ab44251,
            limb2: 0x1421076264f8cb2c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x252acf8e550a7f8057893425,
            limb1: 0xd1b106d190f504bb1d614398,
            limb2: 0x2891720b30c66883
        },
        r0a1: u288 {
            limb0: 0x83e4d44a85ef2eaece7947be,
            limb1: 0x5486742b6e96fb7b0bf38b53,
            limb2: 0xdf52a28df0bc89
        },
        r1a0: u288 {
            limb0: 0x678a9fe2085b2fb2d63d901,
            limb1: 0x2beb88d661ec0ae22db87741,
            limb2: 0x153dfe38155b1225
        },
        r1a1: u288 {
            limb0: 0xb7286322986b866283ec71fe,
            limb1: 0x9427e7a6b3c941d5c2f4293e,
            limb2: 0xaf083af8fc50bb4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x348e15357d9299e582033136,
            limb1: 0x53578c46b15abb39da35a56e,
            limb2: 0x1043b711f86bb33f
        },
        r0a1: u288 {
            limb0: 0x9fa230a629b75217f0518e7c,
            limb1: 0x77012a4bb8751322a406024d,
            limb2: 0x121e2d845d972695
        },
        r1a0: u288 {
            limb0: 0x5600f2d51f21d9dfac35eb10,
            limb1: 0x6fde61f876fb76611fb86c1a,
            limb2: 0x2bf4fbaf5bd0d0df
        },
        r1a1: u288 {
            limb0: 0xd732aa0b6161aaffdae95324,
            limb1: 0xb3c4f8c3770402d245692464,
            limb2: 0x2a0f1740a293e6f0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x420ba848b5af33b7ef6ab013,
            limb1: 0x35264df0b416a9c1c4ec45df,
            limb2: 0x1bb332c38bf25963
        },
        r0a1: u288 {
            limb0: 0xfc789ca1b9b30fe23146e131,
            limb1: 0x19506e44de01304aab67225c,
            limb2: 0x935944cdd3a3732
        },
        r1a0: u288 {
            limb0: 0xdda06353d93e76a8b0279c07,
            limb1: 0xc10c3f2d6a6f42756901572f,
            limb2: 0x8bf835e16e3ae53
        },
        r1a1: u288 {
            limb0: 0xf2bff0122aa006f5c17b8f10,
            limb1: 0xedd2cc68fd354ee8762b7d4e,
            limb2: 0x5a00b5d1e8ec8d6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e2efa41aaa98ab59728940,
            limb1: 0x163c0425f66ce72daef2f53e,
            limb2: 0x2feaf1b1770aa7d8
        },
        r0a1: u288 {
            limb0: 0x3bb7afd3c0a79b6ac2c4c063,
            limb1: 0xee5cb42e8b2bc999e312e032,
            limb2: 0x1af2071ae77151c3
        },
        r1a0: u288 {
            limb0: 0x1cef1c0d8956d7ceb2b162e7,
            limb1: 0x202b4af9e51edfc81a943ded,
            limb2: 0xc9e943ffbdcfdcb
        },
        r1a1: u288 {
            limb0: 0xe18b1b34798b0a18d5ad43dd,
            limb1: 0x55e8237731941007099af6b8,
            limb2: 0x1472c0290db54042
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xee3e0e78d989b384c36fa350,
            limb1: 0x442388de020b1f0c96308f6e,
            limb2: 0x10413302e041ece
        },
        r0a1: u288 {
            limb0: 0xb6c2f3f62bdc74ca0f341c5b,
            limb1: 0x60e7ab2b536c4743fbe4e5ee,
            limb2: 0xfb67a311b1cacf0
        },
        r1a0: u288 {
            limb0: 0x12f963870ae2442a35c4cd9b,
            limb1: 0x8a0cc25dd4cfcb2ed09b764b,
            limb2: 0x41be217ac78fcb2
        },
        r1a1: u288 {
            limb0: 0x741d0475c81b1dad32190713,
            limb1: 0x6bfeb47eb2576a6b8bf34f7,
            limb2: 0x2103ce2ddaedf8e0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4c7963e0d1dc082de0725e,
            limb1: 0x375a7a3d765918de24804223,
            limb2: 0xf177b77b031596d
        },
        r0a1: u288 {
            limb0: 0x87a7b9c5f10500b0b40d7a1e,
            limb1: 0x6f234d1dc7f1394b55858810,
            limb2: 0x26288146660a3914
        },
        r1a0: u288 {
            limb0: 0xa6308c89cebe40447abf4a9a,
            limb1: 0x657f0fdda13b1f8ee314c22,
            limb2: 0x1701aabc250a9cc7
        },
        r1a1: u288 {
            limb0: 0x9db9bf660dc77cbe2788a755,
            limb1: 0xbdf9c1c15a4bd502a119fb98,
            limb2: 0x14b4de3d26bd66e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53c49c62ca96007e14435295,
            limb1: 0x85aeb885e4123ca8d3232fdf,
            limb2: 0x750017ce108abf3
        },
        r0a1: u288 {
            limb0: 0xba6bf3e25d370182e4821239,
            limb1: 0x39de83bf370bd2ba116e8405,
            limb2: 0x2b8417a72ba6d940
        },
        r1a0: u288 {
            limb0: 0xa922f50550d349849b14307b,
            limb1: 0x569766b6feca6143a5ddde9d,
            limb2: 0x2c3c6765b25a01d
        },
        r1a1: u288 {
            limb0: 0x6016011bdc3b506563b0f117,
            limb1: 0xbab4932beab93dde9b5b8a5c,
            limb2: 0x1bf3f698de0ace60
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe68ffe2dc69d38650ec3221e,
            limb1: 0x28c3ea9387bf313859ef9140,
            limb2: 0xc915d55f723cb62
        },
        r0a1: u288 {
            limb0: 0x2b676335e835da9dd3c465a7,
            limb1: 0x112ef1a49099cf466da3c7b2,
            limb2: 0x15dedf09d129e274
        },
        r1a0: u288 {
            limb0: 0x645b64d64bcabe30a2183fa8,
            limb1: 0x9983f7c1dad6f4d38baa804e,
            limb2: 0x12e33659eafcce20
        },
        r1a1: u288 {
            limb0: 0xbffffaab24d3c1837077b3e,
            limb1: 0x60b5f1c8bc8c38c4214eabe1,
            limb2: 0x490785f8aae243
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x71d6f8e9874d79df456c5576,
            limb1: 0xb9345089a817ab2ba4b025a2,
            limb2: 0x13764cf889a82c2a
        },
        r0a1: u288 {
            limb0: 0xd14e98687f676e328d043bc,
            limb1: 0x2cbf24b2b18aa57965d835cd,
            limb2: 0x1d022b9985037e0f
        },
        r1a0: u288 {
            limb0: 0x112c04789cc8b14147051468,
            limb1: 0xc1d9d2736a2db14c3884a694,
            limb2: 0x1586d4857dfd5ac2
        },
        r1a1: u288 {
            limb0: 0x3e21ce2912c3b6a623176cf6,
            limb1: 0xb0b1f3c26c81a0d112689708,
            limb2: 0x2e07a6fc0a088522
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9f05ffda3ee208f990ff3a8,
            limb1: 0x6201d08440b28ea672b9ea93,
            limb2: 0x1ed60e5a5e778b42
        },
        r0a1: u288 {
            limb0: 0x8e8468b937854c9c00582d36,
            limb1: 0x7888fa8b2850a0c555adb743,
            limb2: 0xd1342bd01402f29
        },
        r1a0: u288 {
            limb0: 0xf5c4c66a974d45ec754b3873,
            limb1: 0x34322544ed59f01c835dd28b,
            limb2: 0x10fe4487a871a419
        },
        r1a1: u288 {
            limb0: 0xedf4af2df7c13d6340069716,
            limb1: 0x8592eea593ece446e8b2c83b,
            limb2: 0x12f9280ce8248724
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf5a403064aef88d5b1ff96fc,
            limb1: 0xb1b6aea4a2a0c91bdd7c2009,
            limb2: 0x1cb58f64f290288c
        },
        r0a1: u288 {
            limb0: 0x518f8dda02bc8e8f4464d818,
            limb1: 0x1dc545d2ea9686db1fc1ab12,
            limb2: 0x22d29ec55a392739
        },
        r1a0: u288 {
            limb0: 0x2e48b1895fea173f59f0427f,
            limb1: 0xc9c23d9848bd4b06eb3b1f02,
            limb2: 0x2f094fc7f4996cb7
        },
        r1a1: u288 {
            limb0: 0xffe1e8df8ea1a56143d2bc50,
            limb1: 0x959e08f30620c389e2dce389,
            limb2: 0x102a52f58cebbc3b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe67f72c6d45f1bb04403139f,
            limb1: 0x9233e2a95d3f3c3ff2f7e5b8,
            limb2: 0x1f931e8e4343b028
        },
        r0a1: u288 {
            limb0: 0x20ef53907af71803ce3ca5ca,
            limb1: 0xd99b6637ee9c73150b503ea4,
            limb2: 0x1c9759def8a98ea8
        },
        r1a0: u288 {
            limb0: 0xa0a3b24c9089d224822fad53,
            limb1: 0xdfa2081342a7a895062f3e50,
            limb2: 0x185e8cf6b3e494e6
        },
        r1a1: u288 {
            limb0: 0x8752a12394b29d0ba799e476,
            limb1: 0x1493421da067a42e7f3d0f8f,
            limb2: 0x67e7fa3e3035edf
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdb3fb65d8f54377bb92fef28,
            limb1: 0x87b852122e9682d5c1ed074d,
            limb2: 0x1ab726f9c6a231e9
        },
        r0a1: u288 {
            limb0: 0xa7df843e929b0e0353fae764,
            limb1: 0x8906292f1c8fb57b39b1efe0,
            limb2: 0xbc6941dccb6ac7
        },
        r1a0: u288 {
            limb0: 0xfd98a3285ad878959243cb27,
            limb1: 0x11bc86c4da18d3dd39e70b66,
            limb2: 0x1fa9880d2705afa7
        },
        r1a1: u288 {
            limb0: 0x9d407bfde6ac3601cb290e72,
            limb1: 0x758d8643670d81cd40312e1d,
            limb2: 0xb7d3b4ca640cf5b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d6138c95464e5e774ae7ba0,
            limb1: 0xe6ca73a5498e4ccd4bb68fc7,
            limb2: 0x15bf8aa8ed1beff6
        },
        r0a1: u288 {
            limb0: 0xabd7c55a134ed405b4966d3c,
            limb1: 0xe69dd725ccc4f9dd537fe558,
            limb2: 0x2df4a03e2588a8f1
        },
        r1a0: u288 {
            limb0: 0x7cf42890de0355ffc2480d46,
            limb1: 0xe33c2ad9627bcb4b028c2358,
            limb2: 0x2a18767b40de20bd
        },
        r1a1: u288 {
            limb0: 0x79737d4a87fab560f3d811c6,
            limb1: 0xa88fee5629b91721f2ccdcf7,
            limb2: 0x2b51c831d3404d5e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x55df9349c12c00893ca62e88,
            limb1: 0x2b95f9f9637008d85b90f36,
            limb2: 0xb74a757dfab3843
        },
        r0a1: u288 {
            limb0: 0x476303598f4d61a6f345a4a4,
            limb1: 0xfea8659510cd6f9e5b9c7adb,
            limb2: 0xcbbe146d2e5d8da
        },
        r1a0: u288 {
            limb0: 0x24be94630913dc889bd42793,
            limb1: 0xac257391bc7b006ba07ce8ab,
            limb2: 0x166a93565fb85a13
        },
        r1a1: u288 {
            limb0: 0xe3d17ad9ee32d0d2fdde3a7d,
            limb1: 0x5e8053ac0106c102f38d322b,
            limb2: 0x16979e35c4043b8b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9812f6145cf7e949fa207f20,
            limb1: 0x4061c36b08d5bcd408b14f19,
            limb2: 0x8332e08b2eb51ed
        },
        r0a1: u288 {
            limb0: 0xa4a7ae8f65ba180c523cb33,
            limb1: 0xb71fabbdc78b1128712d32a5,
            limb2: 0x2acd1052fd0fefa7
        },
        r1a0: u288 {
            limb0: 0x6ea5598e221f25bf27efc618,
            limb1: 0xa2c2521a6dd8f306f86d6db7,
            limb2: 0x13af144288655944
        },
        r1a1: u288 {
            limb0: 0xea469c4b390716a6810fff5d,
            limb1: 0xf8052694d0fdd3f40b596c20,
            limb2: 0x24d0ea6c86e48c5c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e39be614d904bafea58a8cd,
            limb1: 0xf53f0a6a20a1f1783b0ea2d0,
            limb2: 0x99c451b7bb726d7
        },
        r0a1: u288 {
            limb0: 0x28ec54a4ca8da838800c573d,
            limb1: 0xb78365fa47b5e192307b7b87,
            limb2: 0x2df87aa88e012fec
        },
        r1a0: u288 {
            limb0: 0xfb7022881c6a6fdfb18de4aa,
            limb1: 0xb9bd30f0e93c5b93ad333bab,
            limb2: 0x1dd20cbccdeb9924
        },
        r1a1: u288 {
            limb0: 0x16d8dfdf790a6be16a0e55ba,
            limb1: 0x90ab884395509b9a264472d4,
            limb2: 0xeaec571657b6e9d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd943a362e10744aa868c1acc,
            limb1: 0xdacd8ede78edefe32b9579f8,
            limb2: 0x2a3e21ef3097e9bc
        },
        r0a1: u288 {
            limb0: 0x38c242beb839995e25210b8b,
            limb1: 0x2b3049dd82b43b68f96c4ca,
            limb2: 0x2082b59a0e36cbed
        },
        r1a0: u288 {
            limb0: 0x1f8261e3445147798f7a08f2,
            limb1: 0x945f0e478146f993601901f,
            limb2: 0x86fd399017b146c
        },
        r1a1: u288 {
            limb0: 0x7fe9f335f94ea925e950e89d,
            limb1: 0x8cac1ab685b4bec89800d1ed,
            limb2: 0xf4c7daf1ca4824c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53cf4c40bd10a8511c56ce83,
            limb1: 0xea9f81eea6c377b6722ab04d,
            limb2: 0x1fc8eadc08508c2b
        },
        r0a1: u288 {
            limb0: 0xbba6100052b235a2e4378282,
            limb1: 0x514522fca1cf9f37e09c77b8,
            limb2: 0x13daeafac9773a7c
        },
        r1a0: u288 {
            limb0: 0x84a828df8d62d1a005123d88,
            limb1: 0x3de6319c5a24ce069ca06be0,
            limb2: 0x2db01c2f63bb2a7f
        },
        r1a1: u288 {
            limb0: 0x36d2cb906e18e988b734d463,
            limb1: 0xd3fe6d0a85bb11a653a8fd2f,
            limb2: 0x26dba863d6eec14a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce78fc6505db036c10fac771,
            limb1: 0x61f8c0bc7f60ad6415d5e419,
            limb2: 0x59009c5cf9ea663
        },
        r0a1: u288 {
            limb0: 0xb3b3f697fc34d64ba053b914,
            limb1: 0x317af5815ce5bfffc5a6bc97,
            limb2: 0x23f97fee4deda847
        },
        r1a0: u288 {
            limb0: 0xf559e09cf7a02674ac2fa642,
            limb1: 0x4fa7548b79cdd054e203689c,
            limb2: 0x2173b379d546fb47
        },
        r1a1: u288 {
            limb0: 0x758feb5b51caccff9da0f78f,
            limb1: 0xd7f37a1008233b74c4894f55,
            limb2: 0x917c640b4b9627e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x32e3970bf39d91451d4b0a20,
            limb1: 0x38953b660652271ef6e262a3,
            limb2: 0x886e03e2aa2c2e5
        },
        r0a1: u288 {
            limb0: 0xd04be8b5fa65457024f87318,
            limb1: 0xf88b5de69d0ccabdcc37a71c,
            limb2: 0x4712b2e145f72bf
        },
        r1a0: u288 {
            limb0: 0x33d4f06d2207ffaf4f8da449,
            limb1: 0x344394ab2b55bd1f61114c21,
            limb2: 0x2fb19c14be64dde9
        },
        r1a1: u288 {
            limb0: 0x7dce61a35d7417faf3409f18,
            limb1: 0x890d9aa72d8ace4e4c9b1a9,
            limb2: 0x202cd7f4a3e2807d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72548e0d946b796842cfecd8,
            limb1: 0x78b54b355e3c26476b0fab82,
            limb2: 0x2dc9f32c90b6ba31
        },
        r0a1: u288 {
            limb0: 0xa943be83a6fc90414320753b,
            limb1: 0xd708fde97241095833ce5a08,
            limb2: 0x142111e6a73d2e82
        },
        r1a0: u288 {
            limb0: 0xc79e8d5465ec5f28781e30a2,
            limb1: 0x697fb9430b9ad050ced6cce,
            limb2: 0x1a9d647149842c53
        },
        r1a1: u288 {
            limb0: 0x9bab496952559362586725cd,
            limb1: 0xbe78e5a416d9665be64806de,
            limb2: 0x147b550afb4b8b84
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x584f3dde304b9af5f6d11ec7,
            limb1: 0x5433228a7f280611fc258811,
            limb2: 0x86e77b6b6b67a13
        },
        r0a1: u288 {
            limb0: 0xea4739df4ab62a0a0ea0bfd5,
            limb1: 0x40d91e38bab35bd791c40ecb,
            limb2: 0x11ff9d8fe2ac172f
        },
        r1a0: u288 {
            limb0: 0x92f07bc1a76d27e09938ce9b,
            limb1: 0x95cb72b6fcbbd87e7a049517,
            limb2: 0x2ce474e7f965f879
        },
        r1a1: u288 {
            limb0: 0x79cac7554d0f089cd6352e09,
            limb1: 0xd3f75875d4ba17f186f25c83,
            limb2: 0x10a42bbde0165e95
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1422e11013fe6cdd7f843391,
            limb1: 0xfb96092ab69fc530e27d8d8e,
            limb2: 0xe39e04564fedd0
        },
        r0a1: u288 {
            limb0: 0xbd4e81e3b4db192e11192788,
            limb1: 0x805257d3c2bdbc344a15ce0d,
            limb2: 0x10ddd4f47445106b
        },
        r1a0: u288 {
            limb0: 0x87ab7f750b693ec75bce04e1,
            limb1: 0x128ba38ebed26d74d26e4d69,
            limb2: 0x2f1d22a64c983ab8
        },
        r1a1: u288 {
            limb0: 0x74207c17f5c8335183649f77,
            limb1: 0x7144cd3520ac2e1be3204133,
            limb2: 0xb38d0645ab3499d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfbf07709f338adcde419c171,
            limb1: 0xd291d331e8d492de24d8b2dc,
            limb2: 0x1f80bef14ba13cf8
        },
        r0a1: u288 {
            limb0: 0x683859579a86831cb02dbbf4,
            limb1: 0x25dd541f85671a660633cee1,
            limb2: 0x3e528d2291ce7a9
        },
        r1a0: u288 {
            limb0: 0x1d21ce00ea3808a5a05ecf86,
            limb1: 0x33441f4a40c76de253c217c3,
            limb2: 0x1f8f1de7ad954d83
        },
        r1a1: u288 {
            limb0: 0xff1d0b33350067cf78bc5d05,
            limb1: 0x14dced4757aa80eb9016c5ac,
            limb2: 0x26e393f262af4816
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49173a889c697b0ab07f35bc,
            limb1: 0xdcffb65f4b4c21ced6b623af,
            limb2: 0x1366d12ee6022f7b
        },
        r0a1: u288 {
            limb0: 0x285fdce362f7a79b89c49b5c,
            limb1: 0xae9358c8eaf26e2fed7353f5,
            limb2: 0x21c91fefaf522b5f
        },
        r1a0: u288 {
            limb0: 0x748798f96436e3b18c64964a,
            limb1: 0xfc3bb221103d3966d0510599,
            limb2: 0x167859ae2ebc5e27
        },
        r1a1: u288 {
            limb0: 0xe3b55b05bb30e23fa7eba05b,
            limb1: 0xa5fc8b7f7bc6abe91c90ddd5,
            limb2: 0xe0da83c6cdebb5a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x30a4abff5957209783681bfb,
            limb1: 0x82d868d5ca421e4f1a0daf79,
            limb2: 0x1ba96ef98093d510
        },
        r0a1: u288 {
            limb0: 0xd9132c7f206a6c036a39e432,
            limb1: 0x8a2dfb94aba29a87046110b8,
            limb2: 0x1fad2fd5e5e37395
        },
        r1a0: u288 {
            limb0: 0x76b136dc82b82e411b2c44f6,
            limb1: 0xe405f12052823a54abb9ea95,
            limb2: 0xf125ba508c26ddc
        },
        r1a1: u288 {
            limb0: 0x1bae07f5f0cc48e5f7aac169,
            limb1: 0x47d1288d741496a960e1a979,
            limb2: 0xa0911f6cc5eb84e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ecf5608b24601f4a0e91154,
            limb1: 0xf02cdfc0474f8e2792c8421e,
            limb2: 0x23d33a29f63c48b9
        },
        r0a1: u288 {
            limb0: 0xbfca27be87ce3a480fe7e017,
            limb1: 0x7f8bae1ac8ccda4519d78cec,
            limb2: 0x239be5c2161523c7
        },
        r1a0: u288 {
            limb0: 0x7524a291610f66ee1022c46f,
            limb1: 0xa07f33617e28132b0337bc3f,
            limb2: 0xb570788895a7839
        },
        r1a1: u288 {
            limb0: 0xc2f342bebd82993e46c2c21f,
            limb1: 0x554c84decdd235c943f0e705,
            limb2: 0xc4c0f50a2c48133
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x637e457bc54fdf4e6dc92e3f,
            limb1: 0x9c6d698c8df7f7a4f72faae4,
            limb2: 0x3006a0466a0cf1a2
        },
        r0a1: u288 {
            limb0: 0x97f37e3f7bac4574e82cdb54,
            limb1: 0x298867d1ac6150551a4e93d4,
            limb2: 0x10241f96ac729c5e
        },
        r1a0: u288 {
            limb0: 0x635451c530de49a38bdea971,
            limb1: 0xac0b405b193981f6360571fe,
            limb2: 0x188fa5eb1ede90b5
        },
        r1a1: u288 {
            limb0: 0x9d93224bfbdc4cd3d99bf2a4,
            limb1: 0x6011f1749bdbd3e6b006b484,
            limb2: 0x81058d3a68f2637
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e7b3a5a35456f42e87968e6,
            limb1: 0xb4303f5093c3a460674a2fcd,
            limb2: 0x2b5331f03b8fa15f
        },
        r0a1: u288 {
            limb0: 0x7cea371d64d8bd0fc5b9427e,
            limb1: 0x76208e15fc175e352c274fbe,
            limb2: 0x5ceb46647d41234
        },
        r1a0: u288 {
            limb0: 0x6cdac06bfcf041a30435a560,
            limb1: 0x15a7ab7ed1df6d7ed12616a6,
            limb2: 0x2520b0f462ad4724
        },
        r1a1: u288 {
            limb0: 0xe8b65c5fff04e6a19310802f,
            limb1: 0xc96324a563d5dab3cd304c64,
            limb2: 0x230de25606159b1e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd53d0aba8edcaa3183a80d81,
            limb1: 0x596b4875de2a7b63b05d5a51,
            limb2: 0x93d93979a719a57
        },
        r0a1: u288 {
            limb0: 0x7c9159bf69af6761581ddbac,
            limb1: 0x9efdc910e0927ccb2b4c7cfe,
            limb2: 0x2dcd94b1b6eb8cdd
        },
        r1a0: u288 {
            limb0: 0x8f462b6e47e1a4efcea8c49c,
            limb1: 0x21f6e36c00f249d86ef2d548,
            limb2: 0x19bde84a3db0e520
        },
        r1a1: u288 {
            limb0: 0xb17de2654b8c783f2c7347b1,
            limb1: 0x3b2a3a4a00ebb167d68fbc07,
            limb2: 0x755c8735abc0c2b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2236e5462d1e11842039bb5,
            limb1: 0x8d746dd0bb8bb2a455d505c1,
            limb2: 0x2fd3f4a905e027ce
        },
        r0a1: u288 {
            limb0: 0x3d6d9836d71ddf8e3b741b09,
            limb1: 0x443f16e368feb4cb20a5a1ab,
            limb2: 0xb5f19dda13bdfad
        },
        r1a0: u288 {
            limb0: 0x4e5612c2b64a1045a590a938,
            limb1: 0xbca215d075ce5769db2a29d7,
            limb2: 0x161e651ebdfb5065
        },
        r1a1: u288 {
            limb0: 0xc02a55b6685351f24e4bf9c7,
            limb1: 0x4134240119050f22bc4991c8,
            limb2: 0x300bd9f8d76bbc11
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9296a3a3aed4c4143d2e0ba,
            limb1: 0x7de973514b499b2da739b3e6,
            limb2: 0x1b4b807986fcdee0
        },
        r0a1: u288 {
            limb0: 0xb9295fecce961afe0c5e6dad,
            limb1: 0xc4e30c322bcae6d526c4de95,
            limb2: 0x1fee592f513ed6b2
        },
        r1a0: u288 {
            limb0: 0x7245f5e5e803d0d448fafe21,
            limb1: 0xcbdc032ecb3b7a63899c53d0,
            limb2: 0x1fde9ffc17accfc3
        },
        r1a1: u288 {
            limb0: 0x8edcc1b2fdd35c87a7814a87,
            limb1: 0x99d54b5c2fe171c49aa9cb08,
            limb2: 0x130ef740e416a6fe
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3427dcfb01618baf7fa75387,
            limb1: 0x2152e1a27f43eb1486242712,
            limb2: 0x44177bc19b7684f
        },
        r0a1: u288 {
            limb0: 0x2c6044a85cea9cf3d84b7ca0,
            limb1: 0xd92dea87faeafdc212b77162,
            limb2: 0x1f711f410039c435
        },
        r1a0: u288 {
            limb0: 0x60c5c89d8b58dd52d960bd4f,
            limb1: 0x76a7d7e9a18b4b6a432e1a28,
            limb2: 0x138dabd6d3c75d3d
        },
        r1a1: u288 {
            limb0: 0xf9194037fa0674a837213489,
            limb1: 0xd88b25bb1b022fd49daa812c,
            limb2: 0xd44c6e47df0f26e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdfcb8c6712c9f5219ef8b7a9,
            limb1: 0x4eff3d675339fb8ddd376cfc,
            limb2: 0xaeb81b8d9777a03
        },
        r0a1: u288 {
            limb0: 0x3c2cf15155fc85fe1016ebda,
            limb1: 0x813b29354e76caf96d438f1a,
            limb2: 0x2eecdad2aa12e529
        },
        r1a0: u288 {
            limb0: 0x2df0285de55c6946ba75e38b,
            limb1: 0xd37adf4a27c9a77a6ac96557,
            limb2: 0x1a2c1d11752ed989
        },
        r1a1: u288 {
            limb0: 0xe8ed37631194b960e3a9293c,
            limb1: 0xc1b7f56173876bba681a4335,
            limb2: 0x2ad94fee1adad7d7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x537ecf0916b38aeea21d4e47,
            limb1: 0x181a00de27ba4be1b380d6c8,
            limb2: 0x8c2fe2799316543
        },
        r0a1: u288 {
            limb0: 0xe68fff5ee73364fff3fe403b,
            limb1: 0x7b8685c8a725ae79cfac8f99,
            limb2: 0x7b4be349766aba4
        },
        r1a0: u288 {
            limb0: 0xdf7c93c0095545ad5e5361ea,
            limb1: 0xce316c76191f1e7cd7d03f3,
            limb2: 0x22ea21f18ddec947
        },
        r1a1: u288 {
            limb0: 0xa19620b4c32db68cc1c2ef0c,
            limb1: 0xffa1e4be3bed5faba2ccbbf4,
            limb2: 0x16fc78a64c45f518
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b6af476f520b4bf804415bc,
            limb1: 0xd949ee7f9e8874698b090fca,
            limb2: 0x34db5e5ec2180cf
        },
        r0a1: u288 {
            limb0: 0x3e06a324f038ac8abcfb28d7,
            limb1: 0xc2e6375b7a83c0a0145f8942,
            limb2: 0x2247e79161483763
        },
        r1a0: u288 {
            limb0: 0x708773d8ae3a13918382fb9d,
            limb1: 0xaf83f409556e32aa85ae92bf,
            limb2: 0x9af0a924ae43ba
        },
        r1a1: u288 {
            limb0: 0xa6fded212ff5b2ce79755af7,
            limb1: 0x55a2adfb2699ef5de6581b21,
            limb2: 0x2476e83cfe8daa5c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xaba3905354a465fb6a18a0f,
            limb1: 0x180399d5a7c1a6c98b0c005,
            limb2: 0x2a5f54aface38eba
        },
        r0a1: u288 {
            limb0: 0x6b7a13e7b4a29bd85aa83bd4,
            limb1: 0x7a8fcbf0b9e860479c22de07,
            limb2: 0x2840f93e68a1fc71
        },
        r1a0: u288 {
            limb0: 0x1eee4b16033210e1af14f791,
            limb1: 0xfcccf2f8a806a4f820f4d6,
            limb2: 0x1c8a75112cde9ba9
        },
        r1a1: u288 {
            limb0: 0x39ca616dc7a7520b915ac942,
            limb1: 0x68f6d0ce7318c0947e4791db,
            limb2: 0x2abc4f2ac7a2cd48
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x712fbc8cda08e0de229b87fd,
            limb1: 0xd6f72cd76253f71781b002ea,
            limb2: 0x27007ff9c00bc1c
        },
        r0a1: u288 {
            limb0: 0x3288c7aa316753e74804dfbb,
            limb1: 0x5aa289458cb1e682ed25874,
            limb2: 0x2cbdf521ccd0ce7
        },
        r1a0: u288 {
            limb0: 0xeff9f79552bb5ffdb3343013,
            limb1: 0x8971455de18cfe8c92befcf1,
            limb2: 0x1775dbe40c865a06
        },
        r1a1: u288 {
            limb0: 0x9584b442cf0a01974dd410b9,
            limb1: 0xa920130fa8cb84a5cffbfec,
            limb2: 0x16957216e34d24fd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c4759bcf7c607fe3f839d4d,
            limb1: 0xea91f311da73327e2ed40785,
            limb2: 0x2017052c72360f42
        },
        r0a1: u288 {
            limb0: 0x38cf8a4368c0709980199fc3,
            limb1: 0xfc9047885996c19e84d7d4ea,
            limb2: 0x1795549eb0b97783
        },
        r1a0: u288 {
            limb0: 0xb70f7ecfbec0eaf46845e8cc,
            limb1: 0x9ddf274c2a9f89ea3bc4d66f,
            limb2: 0xcc6f106abfcf377
        },
        r1a1: u288 {
            limb0: 0xf6ff11ce29186237468c2698,
            limb1: 0x5c629ad27bb61e4826bb1313,
            limb2: 0x2014c6623f1fb55e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7bef7f3d9c7814b549ccf0fa,
            limb1: 0xfe8abc9f4ac32cd18a232c0e,
            limb2: 0x6d65e902ff26957
        },
        r0a1: u288 {
            limb0: 0xf2346cfd60f2e58579c11eb2,
            limb1: 0x999602a18593639d48e23bba,
            limb2: 0x6476c6d882d22bb
        },
        r1a0: u288 {
            limb0: 0x4d1b12a38611f8c72f1cb85b,
            limb1: 0xcccc1ed56cd454f7cd4e5071,
            limb2: 0xdb7fc6001a99623
        },
        r1a1: u288 {
            limb0: 0xc9ebd6587fdcbf7b7f29c6b5,
            limb1: 0x2c23d94396d771032bbb9080,
            limb2: 0x1dc3623838548120
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc648054e4b6134bbfd68487f,
            limb1: 0xdf0506dad3f3d098c13a6386,
            limb2: 0x26bebeb6f46c2e8c
        },
        r0a1: u288 {
            limb0: 0x9d0cdb28a94204776c6e6ba6,
            limb1: 0x303f02dfe619752b1607951d,
            limb2: 0x1127d8b17ef2c064
        },
        r1a0: u288 {
            limb0: 0xe34ca1188b8db4e4694a696c,
            limb1: 0x243553602481d9b88ca1211,
            limb2: 0x1f8ef034831d0132
        },
        r1a1: u288 {
            limb0: 0xe3a5dfb1785690dad89ad10c,
            limb1: 0xd690b583ace24ba033dd23e0,
            limb2: 0x405d0709e110c03
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83ec2a2378b446fbc99133eb,
            limb1: 0xdc3b7d5088008d29ff2c5873,
            limb2: 0x22d25f4721f85afd
        },
        r0a1: u288 {
            limb0: 0xb6368d58e48bf81bccb8dca7,
            limb1: 0x26ea828822b367a0e6895fa,
            limb2: 0x25ee11a736ddf2bb
        },
        r1a0: u288 {
            limb0: 0xf72088db06b2ccecd9c75c4f,
            limb1: 0x1a42cb1419929d9347809420,
            limb2: 0x274caa4f8ff8b80a
        },
        r1a1: u288 {
            limb0: 0x793b7dfbd62434fe6a1817,
            limb1: 0xce1ee4d9cf04c765e8dd66ae,
            limb2: 0x1d3becb2b82dd6a2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72cc2cef2785ce4ff4e9b7af,
            limb1: 0x60ed5b9c207d7f31fb6234ab,
            limb2: 0x1bb17a4bc7b643ed
        },
        r0a1: u288 {
            limb0: 0x9424eb15b502cde7927c7530,
            limb1: 0xa0e33edbbaa9de8e9c206059,
            limb2: 0x2b9a3a63bbf4af99
        },
        r1a0: u288 {
            limb0: 0x423811cb6386e606cf274a3c,
            limb1: 0x8adcc0e471ecfe526f56dc39,
            limb2: 0x9169a8660d14368
        },
        r1a1: u288 {
            limb0: 0xf616c863890c3c8e33127931,
            limb1: 0xcc9414078a6da6989dae6b91,
            limb2: 0x594d6a7e6b34ab2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd957f00c6d4ee1651cc7b890,
            limb1: 0xaee1b317ae3d000446ca3fc6,
            limb2: 0x98318515dae20b5
        },
        r0a1: u288 {
            limb0: 0x3ae636bfd31b12ca6f47961,
            limb1: 0xdb052be31bfcd6a4f3fc96c7,
            limb2: 0xc0751710559a840
        },
        r1a0: u288 {
            limb0: 0xbeccec0caca523dbe6e305dd,
            limb1: 0x6c8dd5f0fe49866a97d2a690,
            limb2: 0xe4ce1bd7c4b9ece
        },
        r1a1: u288 {
            limb0: 0x1888220f7189671f825d6f77,
            limb1: 0x1119e8e76d71b5062d4aa52f,
            limb2: 0x303e3cb240d3065d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2d619ae78049bf9141c35cf,
            limb1: 0x717f8b10d469a1ee2d91f191,
            limb2: 0x2c72c82fa8afe345
        },
        r0a1: u288 {
            limb0: 0xb89321223b82a2dc793c0185,
            limb1: 0x71506a0cf4adb8e51bb7b759,
            limb2: 0x2c13b92a98651492
        },
        r1a0: u288 {
            limb0: 0x4947ef2c89276f77f9d20942,
            limb1: 0xb454d68685ab6b6976e71ec5,
            limb2: 0x19a938d0e78a3593
        },
        r1a1: u288 {
            limb0: 0xbe883eb119609b489c01c905,
            limb1: 0xaa06779922047f52feac5ce6,
            limb2: 0x76977a3015dc164
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43a96a588005043a46aadf2c,
            limb1: 0xa37b89d8a1784582f0c52126,
            limb2: 0x22e9ef3f5d4b2297
        },
        r0a1: u288 {
            limb0: 0x8c6f6d8474cf6e5a58468a31,
            limb1: 0xeb1ce6ac75930ef1c79b07e5,
            limb2: 0xf49839a756c7230
        },
        r1a0: u288 {
            limb0: 0x82b84693a656c8e8c1f962fd,
            limb1: 0x2c1c8918ae80282208b6b23d,
            limb2: 0x14d3504b5c8d428f
        },
        r1a1: u288 {
            limb0: 0x60ef4f4324d5619b60a3bb84,
            limb1: 0x6d3090caefeedbc33638c77a,
            limb2: 0x159264c370c89fec
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7752bcf8d40e6f9b39864655,
            limb1: 0x482ba6fe0791c261311f2ec3,
            limb2: 0x2d291277801aead3
        },
        r0a1: u288 {
            limb0: 0x3da1b48d64a3ed85625fb16d,
            limb1: 0x13ea302fa3805bf21c9cc074,
            limb2: 0xad76bb8e0678194
        },
        r1a0: u288 {
            limb0: 0xf2fd685d5f5d891abc7d0900,
            limb1: 0x9e14338241a450dfb3074181,
            limb2: 0x1b23d6d024e29ff5
        },
        r1a1: u288 {
            limb0: 0xeba1df239b83b752c9a8f04,
            limb1: 0x4b56fcd077470349fcfefe4e,
            limb2: 0x374638ea81a20d2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc0da63b1e53db95174ceacea,
            limb1: 0x33835613f1b71b5aeaba7a86,
            limb2: 0x2a2d7628bf1c5e69
        },
        r0a1: u288 {
            limb0: 0xa6cf79024211d5860a7379c0,
            limb1: 0x83e39b6ecfb65d99e22dce14,
            limb2: 0x116fff17ed0cf02f
        },
        r1a0: u288 {
            limb0: 0x338c8dd269009e686b73fed2,
            limb1: 0x39e456c1e0a29784d6bc8984,
            limb2: 0x1742df66aa169532
        },
        r1a1: u288 {
            limb0: 0x4f4f68b44d9aef756c6e4f33,
            limb1: 0x327df76a2c0fa2b798b861d1,
            limb2: 0x27db5933899918e2
        }
    },
];

