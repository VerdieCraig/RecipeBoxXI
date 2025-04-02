; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [415 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [830 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 299
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 249
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 168
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 256
	i64 160518225272466977, ; 4: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 241
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 57
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 286
	i64 229794953483747371, ; 7: System.ValueTuple.dll => 0x330654aed93802b => 148
	i64 232391251801502327, ; 8: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 327
	i64 295915112840604065, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 330
	i64 316157742385208084, ; 10: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 293
	i64 350667413455104241, ; 11: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 131
	i64 374214195677100225, ; 12: Microsoft.CodeAnalysis.Razor => 0x53179d40b3df8c1 => 219
	i64 422779754995088667, ; 13: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 55
	i64 435118502366263740, ; 14: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 329
	i64 482535784737928357, ; 15: Microsoft.AspNetCore.Diagnostics.Abstractions.dll => 0x6b24fbd58b7f4a5 => 186
	i64 535107122908063503, ; 16: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 247
	i64 545109961164950392, ; 17: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 387
	i64 560278790331054453, ; 18: System.Reflection.Primitives => 0x7c6829760de3975 => 94
	i64 634256334200181332, ; 19: Microsoft.CodeAnalysis.CSharp.dll => 0x8cd54c6888b1254 => 218
	i64 634308326490598313, ; 20: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 312
	i64 648449422406355874, ; 21: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 230
	i64 649145001856603771, ; 22: System.Security.SecureString => 0x90239f09b62167b => 128
	i64 668723562677762733, ; 23: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 229
	i64 683390398661839228, ; 24: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 238
	i64 750875890346172408, ; 25: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 142
	i64 798450721097591769, ; 26: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 287
	i64 799765834175365804, ; 27: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805577115177244796, ; 28: Bogus => 0xb2dfc1e3d52d87c => 170
	i64 849051935479314978, ; 29: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 390
	i64 864641107619353643, ; 30: Microsoft.AspNetCore.Mvc.DataAnnotations => 0xbffd2819dda142b => 202
	i64 870603111519317375, ; 31: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 263
	i64 872800313462103108, ; 32: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 298
	i64 895210737996778430, ; 33: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 313
	i64 940822596282819491, ; 34: System.Transactions => 0xd0e792aa81923a3 => 147
	i64 960778385402502048, ; 35: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 103
	i64 982068613551266738, ; 36: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll => 0xda1023367c89bb2 => 213
	i64 989127641070905171, ; 37: cs\Microsoft.CodeAnalysis.CSharp.resources => 0xdba1659538d2753 => 367
	i64 1001381392624924420, ; 38: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 174
	i64 1010599046655515943, ; 39: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 94
	i64 1120440138749646132, ; 40: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 342
	i64 1121665720830085036, ; 41: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 398
	i64 1268860745194512059, ; 42: System.Drawing.dll => 0x119be62002c19ebb => 35
	i64 1301485588176585670, ; 43: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 262
	i64 1301626418029409250, ; 44: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 27
	i64 1315114680217950157, ; 45: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 282
	i64 1369545283391376210, ; 46: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 320
	i64 1404195534211153682, ; 47: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 49
	i64 1425944114962822056, ; 48: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 114
	i64 1476839205573959279, ; 49: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 69
	i64 1486715745332614827, ; 50: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 253
	i64 1492407416628141526, ; 51: it\Microsoft.CodeAnalysis.CSharp.resources => 0x14b618a368475dd6 => 371
	i64 1492954217099365037, ; 52: System.Net.HttpListener => 0x14b809f350210aad => 64
	i64 1513467482682125403, ; 53: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 167
	i64 1518315023656898250, ; 54: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 264
	i64 1537168428375924959, ; 55: System.Threading.Thread.dll => 0x15551e8a954ae0df => 142
	i64 1556147632182429976, ; 56: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 396
	i64 1576750169145655260, ; 57: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 341
	i64 1578461236315596192, ; 58: zh-Hant\Microsoft.CodeAnalysis.resources => 0x15e7d221a250a5a0 => 366
	i64 1624659445732251991, ; 59: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 281
	i64 1628611045998245443, ; 60: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 316
	i64 1636321030536304333, ; 61: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 306
	i64 1639340239664632727, ; 62: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 183
	i64 1651782184287836205, ; 63: System.Globalization.Calendars => 0x16ec4f2524cb982d => 39
	i64 1659332977923810219, ; 64: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 88
	i64 1672383392659050004, ; 65: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 220
	i64 1682513316613008342, ; 66: System.Net.dll => 0x17597cf276952bd6 => 80
	i64 1718000862390545637, ; 67: ru/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x17d790ae969a6ce5 => 376
	i64 1731380447121279447, ; 68: Newtonsoft.Json => 0x18071957e9b889d7 => 259
	i64 1735388228521408345, ; 69: System.Net.Mail.dll => 0x181556663c69b759 => 65
	i64 1743969030606105336, ; 70: System.Memory.dll => 0x1833d297e88f2af8 => 61
	i64 1767386781656293639, ; 71: System.Private.Uri.dll => 0x188704e9f5582107 => 85
	i64 1776954265264967804, ; 72: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 251
	i64 1795316252682057001, ; 73: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 280
	i64 1825687700144851180, ; 74: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 105
	i64 1835311033149317475, ; 75: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 386
	i64 1836611346387731153, ; 76: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 327
	i64 1854145951182283680, ; 77: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 101
	i64 1875417405349196092, ; 78: System.Drawing.Primitives => 0x1a06d2319b6c713c => 34
	i64 1875917498431009007, ; 79: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 277
	i64 1881198190668717030, ; 80: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 408
	i64 1897575647115118287, ; 81: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 329
	i64 1920760634179481754, ; 82: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 254
	i64 1956582621840560024, ; 83: de\Microsoft.CodeAnalysis.CSharp.resources => 0x1b272d8734824f98 => 368
	i64 1959996714666907089, ; 84: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 408
	i64 1972384582241139858, ; 85: Microsoft.CodeAnalysis.CSharp => 0x1b5f5153d0f0bc92 => 218
	i64 1972385128188460614, ; 86: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 118
	i64 1981742497975770890, ; 87: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 314
	i64 1983698669889758782, ; 88: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 382
	i64 2019660174692588140, ; 89: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 400
	i64 2040001226662520565, ; 90: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 139
	i64 2062890601515140263, ; 91: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 138
	i64 2064708342624596306, ; 92: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 350
	i64 2080945842184875448, ; 93: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 52
	i64 2102659300918482391, ; 94: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 34
	i64 2106033277907880740, ; 95: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 138
	i64 2133195048986300728, ; 96: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 259
	i64 2165310824878145998, ; 97: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 274
	i64 2165725771938924357, ; 98: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 284
	i64 2192948757939169934, ; 99: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 222
	i64 2200176636225660136, ; 100: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 246
	i64 2219986950236918443, ; 101: tr\Microsoft.CodeAnalysis.CSharp.resources => 0x1ecefa5e86dfd2ab => 377
	i64 2262844636196693701, ; 102: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 298
	i64 2269733267185212154, ; 103: Microsoft.AspNetCore.Html.Abstractions.dll => 0x1f7fb66185761afa => 189
	i64 2287834202362508563, ; 104: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 105: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 106: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 181
	i64 2302323944321350744, ; 107: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 404
	i64 2304837677853103545, ; 108: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 326
	i64 2315304989185124968, ; 109: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 50
	i64 2323958648452149394, ; 110: cs\Microsoft.CodeAnalysis.resources => 0x20405c13f1aff092 => 354
	i64 2329709569556905518, ; 111: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 309
	i64 2335503487726329082, ; 112: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 269
	i64 2337758774805907496, ; 113: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 100
	i64 2414730492268170344, ; 114: Microsoft.AspNetCore.Mvc.Localization.dll => 0x2182d896c3f2cc68 => 204
	i64 2470498323731680442, ; 115: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 291
	i64 2479423007379663237, ; 116: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 336
	i64 2497223385847772520, ; 117: System.Runtime => 0x22a7eb7046413568 => 115
	i64 2547086958574651984, ; 118: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 275
	i64 2592350477072141967, ; 119: System.Xml.dll => 0x23f9e10627330e8f => 160
	i64 2602673633151553063, ; 120: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 407
	i64 2624866290265602282, ; 121: mscorlib.dll => 0x246d65fbde2db8ea => 163
	i64 2632269733008246987, ; 122: System.Net.NameResolution => 0x2487b36034f808cb => 66
	i64 2656907746661064104, ; 123: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 232
	i64 2662981627730767622, ; 124: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 382
	i64 2706075432581334785, ; 125: System.Net.WebSockets => 0x258de944be6c0701 => 79
	i64 2781169761569919449, ; 126: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 251
	i64 2783046991838674048, ; 127: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 100
	i64 2787234703088983483, ; 128: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 331
	i64 2815524396660695947, ; 129: System.Security.AccessControl => 0x2712c0857f68238b => 116
	i64 2895129759130297543, ; 130: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 387
	i64 2915341129155406726, ; 131: fr/Microsoft.CodeAnalysis.resources.dll => 0x28755f4f9264eb86 => 357
	i64 2923871038697555247, ; 132: Jsr305Binding => 0x2893ad37e69ec52f => 343
	i64 2974029546067041986, ; 133: Microsoft.AspNetCore.Mvc.Formatters.Json.dll => 0x2945e01d74d79ec2 => 203
	i64 3017136373564924869, ; 134: System.Net.WebProxy => 0x29df058bd93f63c5 => 77
	i64 3017704767998173186, ; 135: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 342
	i64 3021884968805928991, ; 136: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 176
	i64 3106852385031680087, ; 137: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 113
	i64 3110390492489056344, ; 138: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 120
	i64 3135773902340015556, ; 139: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 47
	i64 3168817962471953758, ; 140: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 241
	i64 3168887168596639127, ; 141: Microsoft.AspNetCore.Mvc.Razor.Extensions.dll => 0x2bfa2617217efd97 => 206
	i64 3266690593535380875, ; 142: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 175
	i64 3276991435551191081, ; 143: tr\Microsoft.CodeAnalysis.resources => 0x2d7a36593006b029 => 364
	i64 3281594302220646930, ; 144: System.Security.Principal => 0x2d8a90a198ceba12 => 127
	i64 3289520064315143713, ; 145: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 307
	i64 3303437397778967116, ; 146: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 278
	i64 3311221304742556517, ; 147: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 81
	i64 3325875462027654285, ; 148: System.Runtime.Numerics => 0x2e27e21c8958b48d => 109
	i64 3328853167529574890, ; 149: System.Net.Sockets.dll => 0x2e327651a008c1ea => 74
	i64 3344514922410554693, ; 150: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 353
	i64 3396143930648122816, ; 151: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 236
	i64 3429672777697402584, ; 152: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 256
	i64 3437845325506641314, ; 153: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 52
	i64 3493805808809882663, ; 154: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 333
	i64 3494946837667399002, ; 155: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 227
	i64 3508450208084372758, ; 156: System.Net.Ping => 0x30b084e02d03ad16 => 68
	i64 3522470458906976663, ; 157: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 332
	i64 3523004241079211829, ; 158: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 226
	i64 3531994851595924923, ; 159: System.Numerics => 0x31042a9aade235bb => 82
	i64 3551103847008531295, ; 160: System.Private.CoreLib.dll => 0x31480e226177735f => 169
	i64 3567343442040498961, ; 161: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 402
	i64 3571415421602489686, ; 162: System.Runtime.dll => 0x319037675df7e556 => 115
	i64 3638003163729360188, ; 163: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 228
	i64 3647754201059316852, ; 164: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 153
	i64 3655542548057982301, ; 165: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 227
	i64 3659371656528649588, ; 166: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 272
	i64 3716579019761409177, ; 167: netstandard.dll => 0x3393f0ed5c8c5c99 => 164
	i64 3727469159507183293, ; 168: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 325
	i64 3753897248517198740, ; 169: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 180
	i64 3772598417116884899, ; 170: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 299
	i64 3794322307918838949, ; 171: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 196
	i64 3869221888984012293, ; 172: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 244
	i64 3869649043256705283, ; 173: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 31
	i64 3889433610606858880, ; 174: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 239
	i64 3890352374528606784, ; 175: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 254
	i64 3919223565570527920, ; 176: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 121
	i64 3933965368022646939, ; 177: System.Net.Requests => 0x369840a8bfadc09b => 71
	i64 3966267475168208030, ; 178: System.Memory => 0x370b03412596249e => 61
	i64 3979027889843957915, ; 179: zh-Hant/Microsoft.CodeAnalysis.resources.dll => 0x373858c8b585709b => 366
	i64 3992675920548082773, ; 180: ru/Microsoft.CodeAnalysis.resources.dll => 0x3768d5987b863455 => 363
	i64 4005135229510678782, ; 181: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 185
	i64 4006972109285359177, ; 182: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 158
	i64 4009997192427317104, ; 183: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 112
	i64 4073500526318903918, ; 184: System.Private.Xml.dll => 0x3887fb25779ae26e => 87
	i64 4073631083018132676, ; 185: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 252
	i64 4120493066591692148, ; 186: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 413
	i64 4148881117810174540, ; 187: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 104
	i64 4154383907710350974, ; 188: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 189: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 143
	i64 4168469861834746866, ; 190: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 117
	i64 4187479170553454871, ; 191: System.Linq.Expressions => 0x3a1cea1e912fa117 => 57
	i64 4201423742386704971, ; 192: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 293
	i64 4202567570116092282, ; 193: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 260
	i64 4205801962323029395, ; 194: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4225924121207573736, ; 195: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 173
	i64 4235503420553921860, ; 196: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 51
	i64 4243591448627561453, ; 197: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 192
	i64 4250192876909962317, ; 198: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 187
	i64 4282138915307457788, ; 199: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 91
	i64 4337444564132831293, ; 200: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 261
	i64 4356591372459378815, ; 201: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 410
	i64 4373617458794931033, ; 202: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 54
	i64 4384840217421645357, ; 203: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 178
	i64 4397634830160618470, ; 204: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 128
	i64 4431618353714093320, ; 205: Microsoft.AspNetCore.Antiforgery => 0x3d804569b93add08 => 172
	i64 4477672992252076438, ; 206: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 149
	i64 4484706122338676047, ; 207: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 40
	i64 4513320955448359355, ; 208: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 223
	i64 4533124835995628778, ; 209: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 91
	i64 4612482779465751747, ; 210: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 222
	i64 4633188143799146779, ; 211: fr\Microsoft.CodeAnalysis.resources => 0x404c6411b0b3191b => 357
	i64 4636684751163556186, ; 212: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 337
	i64 4672453897036726049, ; 213: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 49
	i64 4679594760078841447, ; 214: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 380
	i64 4716677666592453464, ; 215: System.Xml.XmlSerializer => 0x417501590542f358 => 159
	i64 4743821336939966868, ; 216: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 217: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 311
	i64 4794310189461587505, ; 218: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 275
	i64 4795410492532947900, ; 219: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 332
	i64 4809057822547766521, ; 220: System.Drawing => 0x42bd349c3145ecf9 => 35
	i64 4814660307502931973, ; 221: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 66
	i64 4853321196694829351, ; 222: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 108
	i64 5055365687667823624, ; 223: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 276
	i64 5067185811007923773, ; 224: Bogus.dll => 0x465242a5e406e63d => 170
	i64 5081566143765835342, ; 225: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 98
	i64 5083120864858317402, ; 226: zh-Hans\Microsoft.CodeAnalysis.resources => 0x468adf7ebc41a25a => 365
	i64 5099468265966638712, ; 227: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 98
	i64 5103417709280584325, ; 228: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5107702058248948463, ; 229: ru\Microsoft.CodeAnalysis.CSharp.resources => 0x46e233f5d075caef => 376
	i64 5112836352847824253, ; 230: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 216
	i64 5129462924058778861, ; 231: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 220
	i64 5177565741364132164, ; 232: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 190
	i64 5182934613077526976, ; 233: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 234: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 179
	i64 5205316157927637098, ; 235: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 318
	i64 5223612245689175824, ; 236: Microsoft.AspNetCore.Mvc.Localization => 0x487dffa95caf0f10 => 204
	i64 5244375036463807528, ; 237: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 238: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 127
	i64 5278787618751394462, ; 239: System.Net.WebClient.dll => 0x4942055efc68329e => 75
	i64 5280980186044710147, ; 240: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 310
	i64 5290786973231294105, ; 241: System.Runtime.Loader => 0x496ca6b869b72699 => 108
	i64 5376510917114486089, ; 242: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 336
	i64 5408338804355907810, ; 243: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 334
	i64 5423376490970181369, ; 244: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 105
	i64 5440320908473006344, ; 245: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 246: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 247: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 289
	i64 5457765010617926378, ; 248: System.Xml.Serialization => 0x4bbde05c557002ea => 154
	i64 5471532531798518949, ; 249: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 406
	i64 5507995362134886206, ; 250: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 251: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 409
	i64 5527431512186326818, ; 252: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 48
	i64 5570799893513421663, ; 253: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 42
	i64 5573260873512690141, ; 254: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 125
	i64 5574231584441077149, ; 255: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 279
	i64 5586474322064658720, ; 256: fr\Microsoft.CodeAnalysis.CSharp.resources => 0x4d8724cc29815120 => 370
	i64 5591791169662171124, ; 257: System.Linq.Parallel => 0x4d9a087135e137f4 => 58
	i64 5593115988096097561, ; 258: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 214
	i64 5610815111739789596, ; 259: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 174
	i64 5650097808083101034, ; 260: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 118
	i64 5692067934154308417, ; 261: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 339
	i64 5697338526674305454, ; 262: pl\Microsoft.CodeAnalysis.CSharp.resources => 0x4f1103344791c1ae => 374
	i64 5724799082821825042, ; 263: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 302
	i64 5741990095351817038, ; 264: Microsoft.Extensions.Localization.Abstractions.dll => 0x4fafa591c141a34e => 243
	i64 5757522595884336624, ; 265: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 288
	i64 5783556987928984683, ; 266: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 267: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 308
	i64 5959344983920014087, ; 268: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 328
	i64 5979151488806146654, ; 269: System.Formats.Asn1 => 0x52fa3699a489d25e => 37
	i64 5981100626307227755, ; 270: pt-BR\Microsoft.CodeAnalysis.CSharp.resources => 0x5301235494e8a06b => 375
	i64 5984759512290286505, ; 271: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 123
	i64 6068057819846744445, ; 272: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 403
	i64 6102788177522843259, ; 273: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 328
	i64 6167632067760390963, ; 274: ja/Microsoft.CodeAnalysis.resources.dll => 0x5597d4b0282a8333 => 359
	i64 6183170893902868313, ; 275: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 261
	i64 6200764641006662125, ; 276: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 403
	i64 6222399776351216807, ; 277: System.Text.Json.dll => 0x565a67a0ffe264a7 => 270
	i64 6251069312384999852, ; 278: System.Transactions.Local => 0x56c0426b870da1ac => 146
	i64 6278736998281604212, ; 279: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 84
	i64 6284145129771520194, ; 280: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 89
	i64 6296727896078076854, ; 281: ja/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x576278a8f506cbb6 => 372
	i64 6319713645133255417, ; 282: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 312
	i64 6357457916754632952, ; 283: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 414
	i64 6397768165450447711, ; 284: es\Microsoft.CodeAnalysis.CSharp.resources => 0x58c9703fe8f9fb5f => 369
	i64 6401687960814735282, ; 285: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 309
	i64 6459596646370694080, ; 286: Microsoft.AspNetCore.JsonPatch.dll => 0x59a518eceb3ad3c0 => 194
	i64 6478287442656530074, ; 287: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 391
	i64 6504860066809920875, ; 288: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 284
	i64 6548213210057960872, ; 289: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 295
	i64 6557084851308642443, ; 290: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 340
	i64 6560151584539558821, ; 291: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 248
	i64 6589202984700901502, ; 292: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 345
	i64 6591971792923354531, ; 293: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 310
	i64 6617685658146568858, ; 294: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 132
	i64 6702137467294796250, ; 295: Microsoft.AspNetCore.Mvc.Razor => 0x5d02c6845df149da => 205
	i64 6713440830605852118, ; 296: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 95
	i64 6739853162153639747, ; 297: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 298: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 399
	i64 6772837112740759457, ; 299: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 104
	i64 6777482997383978746, ; 300: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 402
	i64 6786606130239981554, ; 301: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 32
	i64 6798329586179154312, ; 302: System.Windows => 0x5e5884bd523ca188 => 151
	i64 6814185388980153342, ; 303: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 155
	i64 6876862101832370452, ; 304: System.Xml.Linq => 0x5f6f85a57d108914 => 152
	i64 6894844156784520562, ; 305: System.Numerics.Vectors => 0x5faf683aead1ad72 => 81
	i64 6911788284027924527, ; 306: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 188
	i64 6916425539059316312, ; 307: de\Microsoft.CodeAnalysis.resources => 0x5ffc14620b11f658 => 355
	i64 6920570528939222495, ; 308: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 180
	i64 7011053663211085209, ; 309: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 304
	i64 7060448593242414269, ; 310: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 268
	i64 7060896174307865760, ; 311: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 140
	i64 7083547580668757502, ; 312: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 86
	i64 7101497697220435230, ; 313: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 314: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 305
	i64 7105430439328552570, ; 315: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 267
	i64 7112547816752919026, ; 316: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 50
	i64 7123594442286643413, ; 317: Microsoft.AspNetCore.Razor.Runtime => 0x62dc1767207138d5 => 212
	i64 7192745174564810625, ; 318: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 274
	i64 7219616639871433054, ; 319: ja\Microsoft.CodeAnalysis.CSharp.resources => 0x64313b153209395e => 372
	i64 7220009545223068405, ; 320: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 406
	i64 7270811800166795866, ; 321: System.Linq => 0x64e71ccf51a90a5a => 60
	i64 7299370801165188114, ; 322: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 53
	i64 7316205155833392065, ; 323: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7331765743953618630, ; 324: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 190
	i64 7338192458477945005, ; 325: System.Reflection => 0x65d67f295d0740ad => 96
	i64 7349431895026339542, ; 326: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 273
	i64 7377312882064240630, ; 327: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7412872140774854801, ; 328: pt-BR/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x66dfcfefdc465091 => 375
	i64 7488575175965059935, ; 329: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 152
	i64 7489048572193775167, ; 330: System.ObjectModel => 0x67ee71ff6b419e3f => 83
	i64 7592577537120840276, ; 331: System.Diagnostics.Process => 0x695e410af5b2aa54 => 28
	i64 7637303409920963731, ; 332: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 44
	i64 7654504624184590948, ; 333: System.Net.Http => 0x6a3a4366801b8264 => 63
	i64 7694700312542370399, ; 334: System.Net.Mail => 0x6ac9112a7e2cda5f => 65
	i64 7708790323521193081, ; 335: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 397
	i64 7714652370974252055, ; 336: System.Private.CoreLib => 0x6b0ff375198b9c17 => 169
	i64 7725404731275645577, ; 337: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 313
	i64 7735176074855944702, ; 338: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 339: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 348
	i64 7791074099216502080, ; 340: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 46
	i64 7820441508502274321, ; 341: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7824823231109474690, ; 342: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 176
	i64 7836164640616011524, ; 343: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 281
	i64 7872210730649581996, ; 344: de/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x6d3fb5f36562f9ac => 368
	i64 7880754438529995359, ; 345: ko/Microsoft.CodeAnalysis.resources.dll => 0x6d5e106866a9d25f => 360
	i64 7919757340696389605, ; 346: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 235
	i64 7972383140441761405, ; 347: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 225
	i64 8014722069583580780, ; 348: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 178
	i64 8025517457475554965, ; 349: WindowsBase => 0x6f605d9b4786ce95 => 162
	i64 8031450141206250471, ; 350: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 107
	i64 8064050204834738623, ; 351: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 352: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 307
	i64 8085230611270010360, ; 353: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 62
	i64 8087206902342787202, ; 354: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 265
	i64 8103644804370223335, ; 355: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 356: System.Reflection.Extensions => 0x70995ab73cf916ec => 92
	i64 8138277578025671259, ; 357: Microsoft.AspNetCore.Cors => 0x70f0f856b9bf1a5b => 182
	i64 8167236081217502503, ; 358: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 165
	i64 8185542183669246576, ; 359: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 360: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 352
	i64 8246048515196606205, ; 361: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 257
	i64 8264926008854159966, ; 362: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 28
	i64 8290740647658429042, ; 363: System.Runtime.Extensions => 0x730ea0b15c929a72 => 102
	i64 8318905602908530212, ; 364: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8342572048615572890, ; 365: Microsoft.AspNetCore.Cors.dll => 0x73c6c513ced5859a => 182
	i64 8368701292315763008, ; 366: System.Security.Cryptography => 0x7423997c6fd56140 => 125
	i64 8398329775253868912, ; 367: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 290
	i64 8399132193771933415, ; 368: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 250
	i64 8400357532724379117, ; 369: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 322
	i64 8410671156615598628, ; 370: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 90
	i64 8426919725312979251, ; 371: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 311
	i64 8452111768915975231, ; 372: ko/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x754beedf64229c3f => 373
	i64 8518412311883997971, ; 373: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8519205576476231015, ; 374: Microsoft.AspNetCore.Mvc.Core.dll => 0x763a4c55ca648567 => 200
	i64 8538413690921358003, ; 375: tr/Microsoft.CodeAnalysis.resources.dll => 0x767e8a0370b312b3 => 364
	i64 8563666267364444763, ; 376: System.Private.Uri => 0x76d841191140ca5b => 85
	i64 8595707132524137149, ; 377: cs/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x774a161853648abd => 367
	i64 8598790081731763592, ; 378: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 301
	i64 8601935802264776013, ; 379: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 334
	i64 8611142787134128904, ; 380: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 188
	i64 8614108721271900878, ; 381: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 401
	i64 8623059219396073920, ; 382: System.Net.Quic.dll => 0x77ab42ac514299c0 => 70
	i64 8626175481042262068, ; 383: Java.Interop => 0x77b654e585b55834 => 165
	i64 8638972117149407195, ; 384: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 385: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 321
	i64 8648495978913578441, ; 386: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 387: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 401
	i64 8684531736582871431, ; 388: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 43
	i64 8725526185868997716, ; 389: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 265
	i64 8747977504141423047, ; 390: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources => 0x79670f30f57531c7 => 378
	i64 8853378295825400934, ; 391: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 349
	i64 8886598895004054153, ; 392: Microsoft.AspNetCore.Mvc.Cors.dll => 0x7b538a9c9e187289 => 201
	i64 8893249077141143629, ; 393: Microsoft.AspNetCore.Mvc.ApiExplorer.dll => 0x7b6b2aeace11804d => 199
	i64 8941376889969657626, ; 394: System.Xml.XDocument => 0x7c1626e87187471a => 155
	i64 8951477988056063522, ; 395: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 324
	i64 8954753533646919997, ; 396: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 111
	i64 9045785047181495996, ; 397: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 411
	i64 9111603110219107042, ; 398: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 226
	i64 9138683372487561558, ; 399: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 120
	i64 9146833000203878303, ; 400: pl/Microsoft.CodeAnalysis.resources.dll => 0x7ef01426d4f8ff9f => 361
	i64 9165872221346508209, ; 401: es/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x7f33b838f1faadb1 => 369
	i64 9250544137016314866, ; 402: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 221
	i64 9312692141327339315, ; 403: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 339
	i64 9324707631942237306, ; 404: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 280
	i64 9413000421947348542, ; 405: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 187
	i64 9468215723722196442, ; 406: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 156
	i64 9554839972845591462, ; 407: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 130
	i64 9575902398040817096, ; 408: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 344
	i64 9584643793929893533, ; 409: System.IO.dll => 0x85037ebfbbd7f69d => 56
	i64 9640812368965969847, ; 410: it/Microsoft.CodeAnalysis.resources.dll => 0x85cb0bc53668a7b7 => 358
	i64 9650158550865574924, ; 411: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 231
	i64 9659729154652888475, ; 412: System.Text.RegularExpressions => 0x860e407c9991dd9b => 135
	i64 9662334977499516867, ; 413: System.Numerics.dll => 0x8617827802b0cfc3 => 82
	i64 9667360217193089419, ; 414: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 29
	i64 9678050649315576968, ; 415: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 291
	i64 9702891218465930390, ; 416: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9776157902332307015, ; 417: de/Microsoft.CodeAnalysis.resources.dll => 0x87abe3d0dca52647 => 355
	i64 9780093022148426479, ; 418: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 341
	i64 9808709177481450983, ; 419: Mono.Android.dll => 0x881f890734e555e7 => 168
	i64 9815966120248698980, ; 420: it\Microsoft.CodeAnalysis.resources => 0x8839512ddcb16864 => 358
	i64 9825649861376906464, ; 421: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 288
	i64 9834056768316610435, ; 422: System.Transactions.dll => 0x8879968718899783 => 147
	i64 9836529246295212050, ; 423: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 93
	i64 9864374015518639636, ; 424: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 183
	i64 9864956466380592553, ; 425: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 224
	i64 9907349773706910547, ; 426: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 301
	i64 9933555792566666578, ; 427: System.Linq.Queryable.dll => 0x89db145cf475c552 => 59
	i64 9938556199016768930, ; 428: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 214
	i64 9956195530459977388, ; 429: Microsoft.Maui => 0x8a2b8315b36616ac => 255
	i64 9974604633896246661, ; 430: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 154
	i64 9991543690424095600, ; 431: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 386
	i64 9994308163963284983, ; 432: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 260
	i64 10017511394021241210, ; 433: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 246
	i64 10038780035334861115, ; 434: System.Net.Http.dll => 0x8b50e941206af13b => 63
	i64 10051358222726253779, ; 435: System.Private.Xml => 0x8b7d990c97ccccd3 => 87
	i64 10078727084704864206, ; 436: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 78
	i64 10089571585547156312, ; 437: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 46
	i64 10092835686693276772, ; 438: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 253
	i64 10105485790837105934, ; 439: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 140
	i64 10143853363526200146, ; 440: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 383
	i64 10205853378024263619, ; 441: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 229
	i64 10226222362177979215, ; 442: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 350
	i64 10229024438826829339, ; 443: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 295
	i64 10236703004850800690, ; 444: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 73
	i64 10243523786148452761, ; 445: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 191
	i64 10245369515835430794, ; 446: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 90
	i64 10321854143672141184, ; 447: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 347
	i64 10347389959537838075, ; 448: ru\Microsoft.CodeAnalysis.resources => 0x8f9950586ab247fb => 363
	i64 10357309525532190134, ; 449: Microsoft.AspNetCore.Mvc.RazorPages.dll => 0x8fbc8e235a1da5b6 => 207
	i64 10360651442923773544, ; 450: System.Text.Encoding => 0x8fc86d98211c1e68 => 134
	i64 10364469296367737616, ; 451: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 89
	i64 10376576884623852283, ; 452: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 333
	i64 10406448008575299332, ; 453: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 353
	i64 10426284384445314437, ; 454: es\Microsoft.CodeAnalysis.resources => 0x90b19a682610b585 => 356
	i64 10430153318873392755, ; 455: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 292
	i64 10458986597687352396, ; 456: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 215
	i64 10503238815856555353, ; 457: ko\Microsoft.CodeAnalysis.resources => 0x91c3000df2397559 => 360
	i64 10506226065143327199, ; 458: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 381
	i64 10521980565667308266, ; 459: Microsoft.AspNetCore.Razor.dll => 0x920595939e29e2ea => 210
	i64 10546663366131771576, ; 460: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 111
	i64 10566960649245365243, ; 461: System.Globalization.dll => 0x92a562b96dcd13fb => 41
	i64 10595762989148858956, ; 462: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 156
	i64 10670374202010151210, ; 463: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 464: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 102
	i64 10734191584620811116, ; 465: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 238
	i64 10785150219063592792, ; 466: System.Net.Primitives => 0x95ac8cfb68830758 => 69
	i64 10811915265162633087, ; 467: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 223
	i64 10822644899632537592, ; 468: System.Linq.Queryable => 0x9631c23204ca5ff8 => 59
	i64 10830817578243619689, ; 469: System.Formats.Tar => 0x964ecb340a447b69 => 38
	i64 10847732767863316357, ; 470: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 282
	i64 10886537869755453065, ; 471: RecipeBox.dll => 0x9714c083609c8e89 => 0
	i64 10899834349646441345, ; 472: System.Web => 0x9743fd975946eb81 => 150
	i64 10929237632997888614, ; 473: Microsoft.AspNetCore.Html.Abstractions => 0x97ac73b8bcab9266 => 189
	i64 10943875058216066601, ; 474: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 55
	i64 10964653383833615866, ; 475: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 33
	i64 10972388274974066310, ; 476: Microsoft.AspNetCore.Razor.Language => 0x9845c1007b7d8686 => 211
	i64 11002576679268595294, ; 477: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 245
	i64 11009005086950030778, ; 478: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 255
	i64 11011906640654766267, ; 479: pl/Microsoft.CodeAnalysis.CSharp.resources.dll => 0x98d226befffe10bb => 374
	i64 11019817191295005410, ; 480: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 279
	i64 11023048688141570732, ; 481: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 482: System.Xml => 0x992e31d0412bf7fc => 160
	i64 11050168729868392624, ; 483: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 193
	i64 11051904132540108364, ; 484: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 237
	i64 11071824625609515081, ; 485: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 345
	i64 11103970607964515343, ; 486: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 392
	i64 11136029745144976707, ; 487: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 343
	i64 11162124722117608902, ; 488: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 338
	i64 11188319605227840848, ; 489: System.Threading.Overlapped => 0x9b44e5671724e550 => 137
	i64 11218356222449480316, ; 490: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 177
	i64 11220793807500858938, ; 491: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 395
	i64 11226290749488709958, ; 492: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 248
	i64 11235648312900863002, ; 493: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 88
	i64 11329751333533450475, ; 494: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 144
	i64 11340910727871153756, ; 495: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 294
	i64 11347436699239206956, ; 496: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 159
	i64 11392833485892708388, ; 497: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 323
	i64 11398376662953476300, ; 498: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 224
	i64 11432101114902388181, ; 499: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 500: Mono.Android.Export => 0x9edabf8623efc131 => 166
	i64 11448276831755070604, ; 501: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 30
	i64 11485890710487134646, ; 502: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 106
	i64 11508496261504176197, ; 503: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 304
	i64 11513602507638267977, ; 504: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 266
	i64 11518296021396496455, ; 505: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 393
	i64 11529969570048099689, ; 506: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 338
	i64 11530571088791430846, ; 507: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 244
	i64 11564861549255168062, ; 508: Microsoft.CodeAnalysis.dll => 0xa07ea44e47ed903e => 217
	i64 11580057168383206117, ; 509: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 277
	i64 11591352189662810718, ; 510: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 331
	i64 11597940890313164233, ; 511: netstandard => 0xa0f429ca8d1805c9 => 164
	i64 11672361001936329215, ; 512: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 305
	i64 11691353810037938030, ; 513: pl\Microsoft.CodeAnalysis.resources => 0xa2400858c6b8976e => 361
	i64 11692977985522001935, ; 514: System.Threading.Overlapped.dll => 0xa245cd869980680f => 137
	i64 11705530742807338875, ; 515: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 389
	i64 11707554492040141440, ; 516: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 58
	i64 11743665907891708234, ; 517: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 141
	i64 11868746509924019608, ; 518: Microsoft.AspNetCore.Mvc.ApiExplorer => 0xa4b64211452dad98 => 199
	i64 11991047634523762324, ; 519: System.Net => 0xa668c24ad493ae94 => 80
	i64 12040886584167504988, ; 520: System.Net.ServicePoint => 0xa719d28d8e121c5c => 73
	i64 12048689113179125827, ; 521: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 239
	i64 12058074296353848905, ; 522: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 240
	i64 12063623837170009990, ; 523: System.Security => 0xa76a99f6ce740786 => 129
	i64 12096697103934194533, ; 524: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 525: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 526: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 92
	i64 12137774235383566651, ; 527: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 335
	i64 12145679461940342714, ; 528: System.Text.Json => 0xa88e1f1ebcb62fba => 270
	i64 12191646537372739477, ; 529: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 271
	i64 12201331334810686224, ; 530: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 112
	i64 12269460666702402136, ; 531: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12279246230491828964, ; 532: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 264
	i64 12310909314810916455, ; 533: Microsoft.Extensions.Localization.dll => 0xaad922cbbb5a2e67 => 242
	i64 12313367145828839434, ; 534: System.IO.Pipelines => 0xaae1de2e1c17f00a => 266
	i64 12332222936682028543, ; 535: System.Runtime.Handles => 0xab24db6c07db5dff => 103
	i64 12375446203996702057, ; 536: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12441092376399691269, ; 537: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 173
	i64 12449521524599790614, ; 538: Microsoft.AspNetCore.Mvc.dll => 0xacc595ddc1599c16 => 197
	i64 12451044538927396471, ; 539: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 303
	i64 12466513435562512481, ; 540: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 317
	i64 12475113361194491050, ; 541: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 414
	i64 12487638416075308985, ; 542: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 297
	i64 12517810545449516888, ; 543: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 32
	i64 12538491095302438457, ; 544: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 285
	i64 12550732019250633519, ; 545: System.IO.Compression => 0xae2d28465e8e1b2f => 45
	i64 12681088699309157496, ; 546: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 394
	i64 12699999919562409296, ; 547: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 29
	i64 12700543734426720211, ; 548: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 286
	i64 12708238894395270091, ; 549: System.IO => 0xb05cbbf17d3ba3cb => 56
	i64 12708922737231849740, ; 550: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 133
	i64 12717050818822477433, ; 551: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 113
	i64 12742166704152928552, ; 552: Microsoft.CodeAnalysis.Razor.dll => 0xb0d5451b45d86128 => 219
	i64 12753841065332862057, ; 553: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 340
	i64 12822330414412999099, ; 554: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources => 0xb1f2119387c629bb => 379
	i64 12823819093633476069, ; 555: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 407
	i64 12828192437253469131, ; 556: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 351
	i64 12831179148886114003, ; 557: it/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb211817412c17ed3 => 371
	i64 12835242264250840079, ; 558: System.IO.Pipes => 0xb21ff0d5d6c0740f => 54
	i64 12835543923467107475, ; 559: pt-BR\Microsoft.CodeAnalysis.resources => 0xb2210331592e3c93 => 362
	i64 12843321153144804894, ; 560: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 249
	i64 12843770487262409629, ; 561: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 562: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 76
	i64 12982280885948128408, ; 563: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 296
	i64 12991459499837607210, ; 564: Microsoft.CodeAnalysis => 0xb44aef9559b1cd2a => 217
	i64 13003699287675270979, ; 565: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 181
	i64 13039467033719597668, ; 566: tr/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb4f57e2e5d45ea64 => 377
	i64 13068258254871114833, ; 567: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 110
	i64 13070736518021853291, ; 568: Microsoft.AspNetCore.JsonPatch => 0xb564959c856b306b => 194
	i64 13086625805112021739, ; 569: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 185
	i64 13122923747915422861, ; 570: Microsoft.AspNetCore.Localization => 0xb61dfd9ed9095c8d => 195
	i64 13129914918964716986, ; 571: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 300
	i64 13166897321255124987, ; 572: ko\Microsoft.CodeAnalysis.CSharp.resources => 0xb6ba375a3b743ffb => 373
	i64 13173818576982874404, ; 573: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 101
	i64 13221551921002590604, ; 574: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 381
	i64 13222659110913276082, ; 575: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 395
	i64 13270034446771288861, ; 576: zh-Hant/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb828a2058cfffb1d => 379
	i64 13308002692117796025, ; 577: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 215
	i64 13343850469010654401, ; 578: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 167
	i64 13370592475155966277, ; 579: System.Runtime.Serialization => 0xb98de304062ea945 => 114
	i64 13381594904270902445, ; 580: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 389
	i64 13401370062847626945, ; 581: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 335
	i64 13404347523447273790, ; 582: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 290
	i64 13404984788036896679, ; 583: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 191
	i64 13431476299110033919, ; 584: System.Net.WebClient => 0xba663087f18829ff => 75
	i64 13454009404024712428, ; 585: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 346
	i64 13463706743370286408, ; 586: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 84
	i64 13465488254036897740, ; 587: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 348
	i64 13467053111158216594, ; 588: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 409
	i64 13491513212026656886, ; 589: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 283
	i64 13540124433173649601, ; 590: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 410
	i64 13545416393490209236, ; 591: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 393
	i64 13550417756503177631, ; 592: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 236
	i64 13572454107664307259, ; 593: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 325
	i64 13578472628727169633, ; 594: System.Xml.XPath => 0xbc706ce9fba5c261 => 157
	i64 13580399111273692417, ; 595: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13618112415141049676, ; 596: Microsoft.AspNetCore.Mvc.Core => 0xbcfd4116f7d1b54c => 200
	i64 13621154251410165619, ; 597: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 296
	i64 13637569584472253285, ; 598: Microsoft.AspNetCore.Mvc => 0xbd4261483a23e365 => 197
	i64 13647894001087880694, ; 599: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 600: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 276
	i64 13702626353344114072, ; 601: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 31
	i64 13710614125866346983, ; 602: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 116
	i64 13713329104121190199, ; 603: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 36
	i64 13717397318615465333, ; 604: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 605: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 388
	i64 13768883594457632599, ; 606: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 51
	i64 13814445057219246765, ; 607: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 391
	i64 13828521679616088467, ; 608: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 349
	i64 13881769479078963060, ; 609: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 610: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 122
	i64 13921917134693230900, ; 611: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 216
	i64 13928444506500929300, ; 612: System.Windows.dll => 0xc14bc67b8bba9714 => 151
	i64 13939962644205322370, ; 613: Microsoft.AspNetCore.Razor.Language.dll => 0xc174b22af612c082 => 211
	i64 13955418299340266673, ; 614: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 234
	i64 13959074834287824816, ; 615: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 303
	i64 14075334701871371868, ; 616: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 130
	i64 14082136096249122791, ; 617: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 196
	i64 14100563506285742564, ; 618: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 383
	i64 14124974489674258913, ; 619: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 285
	i64 14125464355221830302, ; 620: System.Threading.dll => 0xc407bafdbc707a9e => 145
	i64 14133832980772275001, ; 621: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 221
	i64 14178052285788134900, ; 622: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 272
	i64 14199657271608119382, ; 623: Microsoft.AspNetCore.Localization.dll => 0xc50f510e367e9056 => 195
	i64 14212104595480609394, ; 624: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 119
	i64 14220608275227875801, ; 625: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 27
	i64 14226382999226559092, ; 626: System.ServiceProcess => 0xc56e43f6938e2a74 => 131
	i64 14232023429000439693, ; 627: System.Resources.Writer.dll => 0xc5824de7789ba78d => 99
	i64 14236779789349124699, ; 628: cs/Microsoft.CodeAnalysis.resources.dll => 0xc59333c9e99d7a5b => 354
	i64 14254574811015963973, ; 629: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 133
	i64 14261073672896646636, ; 630: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 323
	i64 14261232074598307362, ; 631: Microsoft.AspNetCore.Mvc.Abstractions => 0xc5ea130339d6d622 => 198
	i64 14298246716367104064, ; 632: System.Web.dll => 0xc66d93a217f4e840 => 150
	i64 14327695147300244862, ; 633: System.Reflection.dll => 0xc6d632d338eb4d7e => 96
	i64 14327709162229390963, ; 634: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 124
	i64 14331727281556788554, ; 635: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 273
	i64 14346402571976470310, ; 636: System.Net.Ping.dll => 0xc718a920f3686f26 => 68
	i64 14461014870687870182, ; 637: System.Net.Requests.dll => 0xc8afd8683afdece6 => 71
	i64 14464374589798375073, ; 638: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 404
	i64 14486659737292545672, ; 639: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 308
	i64 14495724990987328804, ; 640: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 326
	i64 14522721392235705434, ; 641: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 385
	i64 14528548208938697926, ; 642: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0xc99fc59ed7edc4c6 => 198
	i64 14551742072151931844, ; 643: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 269
	i64 14561513370130550166, ; 644: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 123
	i64 14569958227297576184, ; 645: Microsoft.AspNetCore.Mvc.Razor.Extensions => 0xca32e3d0125a24f8 => 206
	i64 14574160591280636898, ; 646: System.Net.Quic => 0xca41d1d72ec783e2 => 70
	i64 14622043554576106986, ; 647: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 110
	i64 14644440854989303794, ; 648: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 318
	i64 14669215534098758659, ; 649: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 232
	i64 14690985099581930927, ; 650: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 149
	i64 14705122255218365489, ; 651: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 396
	i64 14711489710198462279, ; 652: Microsoft.AspNetCore.Mvc.ViewFeatures.dll => 0xcc29b5f255319747 => 209
	i64 14744092281598614090, ; 653: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 412
	i64 14750122696836505903, ; 654: RecipeBox => 0xccb2f6717a5de12f => 0
	i64 14792063746108907174, ; 655: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 346
	i64 14832630590065248058, ; 656: System.Security.Claims => 0xcdd816ef5d6e873a => 117
	i64 14835122486566269605, ; 657: Microsoft.AspNetCore.Mvc.TagHelpers.dll => 0xcde0f14d3b3132a5 => 208
	i64 14852515768018889994, ; 658: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 294
	i64 14889905118082851278, ; 659: GoogleGson.dll => 0xcea391d0969961ce => 171
	i64 14892012299694389861, ; 660: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 413
	i64 14904040806490515477, ; 661: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 380
	i64 14912225920358050525, ; 662: System.Security.Principal.Windows => 0xcef2de7759506add => 126
	i64 14935719434541007538, ; 663: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 132
	i64 14954917835170835695, ; 664: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 233
	i64 14984936317414011727, ; 665: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 76
	i64 14987728460634540364, ; 666: System.IO.Compression.dll => 0xcfff1ba06622494c => 45
	i64 14988210264188246988, ; 667: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 297
	i64 14997925763760621062, ; 668: Microsoft.AspNetCore.Razor.Runtime.dll => 0xd02356050ca18606 => 212
	i64 15015154896917945444, ; 669: System.Net.Security.dll => 0xd0608bd33642dc64 => 72
	i64 15024878362326791334, ; 670: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 62
	i64 15051741671811457419, ; 671: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 235
	i64 15071021337266399595, ; 672: System.Resources.Reader.dll => 0xd127060e7a18a96b => 97
	i64 15076659072870671916, ; 673: System.ObjectModel.dll => 0xd13b0d8c1620662c => 83
	i64 15111608613780139878, ; 674: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 397
	i64 15115185479366240210, ; 675: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 42
	i64 15133485256822086103, ; 676: System.Linq.dll => 0xd204f0a9127dd9d7 => 60
	i64 15150743910298169673, ; 677: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 324
	i64 15188318564056798176, ; 678: Microsoft.AspNetCore.Mvc.TagHelpers => 0xd2c7bf434a1393e0 => 208
	i64 15195733091524337868, ; 679: ja\Microsoft.CodeAnalysis.resources => 0xd2e216bc7df4e0cc => 359
	i64 15227001540531775957, ; 680: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 228
	i64 15234786388537674379, ; 681: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 36
	i64 15250465174479574862, ; 682: System.Globalization.Calendars.dll => 0xd3a489469852174e => 39
	i64 15272359115529052076, ; 683: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 287
	i64 15279429628684179188, ; 684: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 352
	i64 15299439993936780255, ; 685: System.Xml.XPath.dll => 0xd452879d55019bdf => 157
	i64 15332518387094693223, ; 686: Microsoft.AspNetCore.Mvc.DataAnnotations.dll => 0xd4c80c3ce6eca567 => 202
	i64 15338463749992804988, ; 687: System.Resources.Reader => 0xd4dd2b839286f27c => 97
	i64 15344154949114261798, ; 688: fr/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xd4f163a12081f126 => 370
	i64 15370028218478381000, ; 689: Microsoft.Extensions.Localization.Abstractions => 0xd54d4f3b162247c8 => 243
	i64 15370334346939861994, ; 690: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 292
	i64 15376059877735500810, ; 691: es/Microsoft.CodeAnalysis.resources.dll => 0xd562bcfe318f8c0a => 356
	i64 15389372189903242610, ; 692: zh-Hans/Microsoft.CodeAnalysis.resources.dll => 0xd592087867754572 => 365
	i64 15391712275433856905, ; 693: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 233
	i64 15427448221306938193, ; 694: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 179
	i64 15481710163200268842, ; 695: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 237
	i64 15526743539506359484, ; 696: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 134
	i64 15527772828719725935, ; 697: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 698: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 64
	i64 15536481058354060254, ; 699: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 384
	i64 15541854775306130054, ; 700: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 124
	i64 15557562860424774966, ; 701: System.Net.Sockets => 0xd7e790fe7a6dc536 => 74
	i64 15565247197164990907, ; 702: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 192
	i64 15582737692548360875, ; 703: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 316
	i64 15592226634512578529, ; 704: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 175
	i64 15609085926864131306, ; 705: System.dll => 0xd89e9cf3334914ea => 161
	i64 15620595871140898079, ; 706: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 234
	i64 15637608551555227372, ; 707: Microsoft.AspNetCore.Mvc.Razor.dll => 0xd903f220440f5eec => 205
	i64 15661133872274321916, ; 708: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 153
	i64 15664356999916475676, ; 709: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 384
	i64 15710114879900314733, ; 710: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15735700225633954557, ; 711: Microsoft.Extensions.Localization => 0xda606ffbe0f22afd => 242
	i64 15743187114543869802, ; 712: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 392
	i64 15755368083429170162, ; 713: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 48
	i64 15777549416145007739, ; 714: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 330
	i64 15783653065526199428, ; 715: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 385
	i64 15817206913877585035, ; 716: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 141
	i64 15827202283623377193, ; 717: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 231
	i64 15847085070278954535, ; 718: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 136
	i64 15852824340364052161, ; 719: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 193
	i64 15885744048853936810, ; 720: System.Resources.Writer => 0xdc75800bd0b6eaaa => 99
	i64 15928521404965645318, ; 721: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 252
	i64 15934062614519587357, ; 722: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 122
	i64 15937190497610202713, ; 723: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 119
	i64 15963349826457351533, ; 724: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 139
	i64 15971679995444160383, ; 725: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 38
	i64 16018552496348375205, ; 726: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 67
	i64 16027684189145026053, ; 727: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 184
	i64 16046481083542319511, ; 728: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 247
	i64 16053592439138609341, ; 729: pt-BR/Microsoft.CodeAnalysis.resources.dll => 0xdec9d1448fc0e8bd => 362
	i64 16054465462676478687, ; 730: System.Globalization.Extensions => 0xdecceb47319bdadf => 40
	i64 16153500642854367575, ; 731: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 250
	i64 16154507427712707110, ; 732: System => 0xe03056ea4e39aa26 => 161
	i64 16219561732052121626, ; 733: System.Net.Security => 0xe1177575db7c781a => 72
	i64 16288847719894691167, ; 734: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 398
	i64 16315482530584035869, ; 735: WindowsBase.dll => 0xe26c3ceb1e8d821d => 162
	i64 16321164108206115771, ; 736: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 245
	i64 16337011941688632206, ; 737: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 126
	i64 16344871930018146979, ; 738: Microsoft.AspNetCore.ResponseCaching.Abstractions => 0xe2d4a66be7fc2aa3 => 213
	i64 16361933716545543812, ; 739: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 302
	i64 16423015068819898779, ; 740: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 351
	i64 16454459195343277943, ; 741: System.Net.NetworkInformation => 0xe459fb756d988f77 => 67
	i64 16496768397145114574, ; 742: Mono.Android.Export.dll => 0xe4f04b741db987ce => 166
	i64 16523284800709429098, ; 743: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 184
	i64 16586971685355653868, ; 744: Microsoft.AspNetCore.Mvc.RazorPages => 0xe630c2ddc5160aec => 207
	i64 16589693266713801121, ; 745: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 315
	i64 16621146507174665210, ; 746: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 289
	i64 16649148416072044166, ; 747: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 257
	i64 16677317093839702854, ; 748: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 322
	i64 16702652415771857902, ; 749: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 148
	i64 16709499819875633724, ; 750: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 44
	i64 16737807731308835127, ; 751: System.Runtime.Intrinsics => 0xe848a3736f733137 => 107
	i64 16755018182064898362, ; 752: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 262
	i64 16758309481308491337, ; 753: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 47
	i64 16762783179241323229, ; 754: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 95
	i64 16765015072123548030, ; 755: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 30
	i64 16793451114543296636, ; 756: Microsoft.AspNetCore.Mvc.ViewFeatures => 0xe90e52d02b3db07c => 209
	i64 16822611501064131242, ; 757: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 758: mscorlib => 0xe99c30c1484d7f4f => 163
	i64 16856067890322379635, ; 759: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 760: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 135
	i64 16933958494752847024, ; 761: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 77
	i64 16942731696432749159, ; 762: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 405
	i64 16977952268158210142, ; 763: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 53
	i64 16989020923549080504, ; 764: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 315
	i64 16998075588627545693, ; 765: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 320
	i64 17008137082415910100, ; 766: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 767: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 278
	i64 17031351772568316411, ; 768: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 319
	i64 17037200463775726619, ; 769: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 306
	i64 17047433665992082296, ; 770: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 230
	i64 17047637518392099970, ; 771: Microsoft.AspNetCore.Antiforgery.dll => 0xec9560002f620482 => 172
	i64 17062143951396181894, ; 772: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17079998892748052666, ; 773: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 177
	i64 17089008752050867324, ; 774: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 412
	i64 17118171214553292978, ; 775: System.Threading.Channels => 0xed8ff6060fc420b2 => 136
	i64 17126545051278881272, ; 776: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 258
	i64 17187273293601214786, ; 777: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 778: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 779: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 121
	i64 17205988430934219272, ; 780: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 240
	i64 17230721278011714856, ; 781: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 86
	i64 17234219099804750107, ; 782: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 146
	i64 17260702271250283638, ; 783: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17311256152179951039, ; 784: Microsoft.AspNetCore.Mvc.Formatters.Json => 0xf03defc05e7b45bf => 203
	i64 17333249706306540043, ; 785: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 33
	i64 17338386382517543202, ; 786: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 78
	i64 17342750010158924305, ; 787: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 390
	i64 17360349973592121190, ; 788: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 344
	i64 17438153253682247751, ; 789: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 405
	i64 17470386307322966175, ; 790: System.Threading.Timer => 0xf27347c8d0d5709f => 144
	i64 17509662556995089465, ; 791: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 79
	i64 17514990004910432069, ; 792: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 388
	i64 17522591619082469157, ; 793: GoogleGson => 0xf32cc03d27a5bf25 => 171
	i64 17590473451926037903, ; 794: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 271
	i64 17623389608345532001, ; 795: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 400
	i64 17627500474728259406, ; 796: System.Globalization => 0xf4a176498a351f4e => 41
	i64 17685921127322830888, ; 797: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 798: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 411
	i64 17704177640604968747, ; 799: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 317
	i64 17710060891934109755, ; 800: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 314
	i64 17712670374920797664, ; 801: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 106
	i64 17727630781806093631, ; 802: Microsoft.AspNetCore.Diagnostics.Abstractions => 0xf605324562d5253f => 186
	i64 17777860260071588075, ; 803: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 109
	i64 17830780619298983968, ; 804: Microsoft.AspNetCore.Razor => 0xf773a880713c5020 => 210
	i64 17838668724098252521, ; 805: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17877291088293713194, ; 806: zh-Hans/Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf818e586e000d52a => 378
	i64 17891337867145587222, ; 807: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 347
	i64 17911643751311784505, ; 808: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 258
	i64 17928294245072900555, ; 809: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 43
	i64 17992315986609351877, ; 810: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 158
	i64 18017743553296241350, ; 811: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 225
	i64 18025913125965088385, ; 812: System.Threading => 0xfa28e87b91334681 => 145
	i64 18099568558057551825, ; 813: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 399
	i64 18116111925905154859, ; 814: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 283
	i64 18121036031235206392, ; 815: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 319
	i64 18146411883821974900, ; 816: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 37
	i64 18146811631844267958, ; 817: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18203743254473369877, ; 818: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 267
	i64 18225059387460068507, ; 819: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 143
	i64 18245806341561545090, ; 820: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 821: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 300
	i64 18305135509493619199, ; 822: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 321
	i64 18318849532986632368, ; 823: System.Security.dll => 0xfe39a097c37fa8b0 => 129
	i64 18324163916253801303, ; 824: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 394
	i64 18370042311372477656, ; 825: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 263
	i64 18380184030268848184, ; 826: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 337
	i64 18427086088365902170, ; 827: Microsoft.AspNetCore.Mvc.Cors => 0xffba292a9e97895a => 201
	i64 18428404840311395189, ; 828: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 268
	i64 18439108438687598470 ; 829: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 93
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [830 x i32] [
	i32 299, ; 0
	i32 249, ; 1
	i32 168, ; 2
	i32 256, ; 3
	i32 241, ; 4
	i32 57, ; 5
	i32 286, ; 6
	i32 148, ; 7
	i32 327, ; 8
	i32 330, ; 9
	i32 293, ; 10
	i32 131, ; 11
	i32 219, ; 12
	i32 55, ; 13
	i32 329, ; 14
	i32 186, ; 15
	i32 247, ; 16
	i32 387, ; 17
	i32 94, ; 18
	i32 218, ; 19
	i32 312, ; 20
	i32 230, ; 21
	i32 128, ; 22
	i32 229, ; 23
	i32 238, ; 24
	i32 142, ; 25
	i32 287, ; 26
	i32 18, ; 27
	i32 170, ; 28
	i32 390, ; 29
	i32 202, ; 30
	i32 263, ; 31
	i32 298, ; 32
	i32 313, ; 33
	i32 147, ; 34
	i32 103, ; 35
	i32 213, ; 36
	i32 367, ; 37
	i32 174, ; 38
	i32 94, ; 39
	i32 342, ; 40
	i32 398, ; 41
	i32 35, ; 42
	i32 262, ; 43
	i32 27, ; 44
	i32 282, ; 45
	i32 320, ; 46
	i32 49, ; 47
	i32 114, ; 48
	i32 69, ; 49
	i32 253, ; 50
	i32 371, ; 51
	i32 64, ; 52
	i32 167, ; 53
	i32 264, ; 54
	i32 142, ; 55
	i32 396, ; 56
	i32 341, ; 57
	i32 366, ; 58
	i32 281, ; 59
	i32 316, ; 60
	i32 306, ; 61
	i32 183, ; 62
	i32 39, ; 63
	i32 88, ; 64
	i32 220, ; 65
	i32 80, ; 66
	i32 376, ; 67
	i32 259, ; 68
	i32 65, ; 69
	i32 61, ; 70
	i32 85, ; 71
	i32 251, ; 72
	i32 280, ; 73
	i32 105, ; 74
	i32 386, ; 75
	i32 327, ; 76
	i32 101, ; 77
	i32 34, ; 78
	i32 277, ; 79
	i32 408, ; 80
	i32 329, ; 81
	i32 254, ; 82
	i32 368, ; 83
	i32 408, ; 84
	i32 218, ; 85
	i32 118, ; 86
	i32 314, ; 87
	i32 382, ; 88
	i32 400, ; 89
	i32 139, ; 90
	i32 138, ; 91
	i32 350, ; 92
	i32 52, ; 93
	i32 34, ; 94
	i32 138, ; 95
	i32 259, ; 96
	i32 274, ; 97
	i32 284, ; 98
	i32 222, ; 99
	i32 246, ; 100
	i32 377, ; 101
	i32 298, ; 102
	i32 189, ; 103
	i32 8, ; 104
	i32 14, ; 105
	i32 181, ; 106
	i32 404, ; 107
	i32 326, ; 108
	i32 50, ; 109
	i32 354, ; 110
	i32 309, ; 111
	i32 269, ; 112
	i32 100, ; 113
	i32 204, ; 114
	i32 291, ; 115
	i32 336, ; 116
	i32 115, ; 117
	i32 275, ; 118
	i32 160, ; 119
	i32 407, ; 120
	i32 163, ; 121
	i32 66, ; 122
	i32 232, ; 123
	i32 382, ; 124
	i32 79, ; 125
	i32 251, ; 126
	i32 100, ; 127
	i32 331, ; 128
	i32 116, ; 129
	i32 387, ; 130
	i32 357, ; 131
	i32 343, ; 132
	i32 203, ; 133
	i32 77, ; 134
	i32 342, ; 135
	i32 176, ; 136
	i32 113, ; 137
	i32 120, ; 138
	i32 47, ; 139
	i32 241, ; 140
	i32 206, ; 141
	i32 175, ; 142
	i32 364, ; 143
	i32 127, ; 144
	i32 307, ; 145
	i32 278, ; 146
	i32 81, ; 147
	i32 109, ; 148
	i32 74, ; 149
	i32 353, ; 150
	i32 236, ; 151
	i32 256, ; 152
	i32 52, ; 153
	i32 333, ; 154
	i32 227, ; 155
	i32 68, ; 156
	i32 332, ; 157
	i32 226, ; 158
	i32 82, ; 159
	i32 169, ; 160
	i32 402, ; 161
	i32 115, ; 162
	i32 228, ; 163
	i32 153, ; 164
	i32 227, ; 165
	i32 272, ; 166
	i32 164, ; 167
	i32 325, ; 168
	i32 180, ; 169
	i32 299, ; 170
	i32 196, ; 171
	i32 244, ; 172
	i32 31, ; 173
	i32 239, ; 174
	i32 254, ; 175
	i32 121, ; 176
	i32 71, ; 177
	i32 61, ; 178
	i32 366, ; 179
	i32 363, ; 180
	i32 185, ; 181
	i32 158, ; 182
	i32 112, ; 183
	i32 87, ; 184
	i32 252, ; 185
	i32 413, ; 186
	i32 104, ; 187
	i32 18, ; 188
	i32 143, ; 189
	i32 117, ; 190
	i32 57, ; 191
	i32 293, ; 192
	i32 260, ; 193
	i32 17, ; 194
	i32 173, ; 195
	i32 51, ; 196
	i32 192, ; 197
	i32 187, ; 198
	i32 91, ; 199
	i32 261, ; 200
	i32 410, ; 201
	i32 54, ; 202
	i32 178, ; 203
	i32 128, ; 204
	i32 172, ; 205
	i32 149, ; 206
	i32 40, ; 207
	i32 223, ; 208
	i32 91, ; 209
	i32 222, ; 210
	i32 357, ; 211
	i32 337, ; 212
	i32 49, ; 213
	i32 380, ; 214
	i32 159, ; 215
	i32 13, ; 216
	i32 311, ; 217
	i32 275, ; 218
	i32 332, ; 219
	i32 35, ; 220
	i32 66, ; 221
	i32 108, ; 222
	i32 276, ; 223
	i32 170, ; 224
	i32 98, ; 225
	i32 365, ; 226
	i32 98, ; 227
	i32 11, ; 228
	i32 376, ; 229
	i32 216, ; 230
	i32 220, ; 231
	i32 190, ; 232
	i32 11, ; 233
	i32 179, ; 234
	i32 318, ; 235
	i32 204, ; 236
	i32 25, ; 237
	i32 127, ; 238
	i32 75, ; 239
	i32 310, ; 240
	i32 108, ; 241
	i32 336, ; 242
	i32 334, ; 243
	i32 105, ; 244
	i32 2, ; 245
	i32 26, ; 246
	i32 289, ; 247
	i32 154, ; 248
	i32 406, ; 249
	i32 21, ; 250
	i32 409, ; 251
	i32 48, ; 252
	i32 42, ; 253
	i32 125, ; 254
	i32 279, ; 255
	i32 370, ; 256
	i32 58, ; 257
	i32 214, ; 258
	i32 174, ; 259
	i32 118, ; 260
	i32 339, ; 261
	i32 374, ; 262
	i32 302, ; 263
	i32 243, ; 264
	i32 288, ; 265
	i32 3, ; 266
	i32 308, ; 267
	i32 328, ; 268
	i32 37, ; 269
	i32 375, ; 270
	i32 123, ; 271
	i32 403, ; 272
	i32 328, ; 273
	i32 359, ; 274
	i32 261, ; 275
	i32 403, ; 276
	i32 270, ; 277
	i32 146, ; 278
	i32 84, ; 279
	i32 89, ; 280
	i32 372, ; 281
	i32 312, ; 282
	i32 414, ; 283
	i32 369, ; 284
	i32 309, ; 285
	i32 194, ; 286
	i32 391, ; 287
	i32 284, ; 288
	i32 295, ; 289
	i32 340, ; 290
	i32 248, ; 291
	i32 345, ; 292
	i32 310, ; 293
	i32 132, ; 294
	i32 205, ; 295
	i32 95, ; 296
	i32 3, ; 297
	i32 399, ; 298
	i32 104, ; 299
	i32 402, ; 300
	i32 32, ; 301
	i32 151, ; 302
	i32 155, ; 303
	i32 152, ; 304
	i32 81, ; 305
	i32 188, ; 306
	i32 355, ; 307
	i32 180, ; 308
	i32 304, ; 309
	i32 268, ; 310
	i32 140, ; 311
	i32 86, ; 312
	i32 19, ; 313
	i32 305, ; 314
	i32 267, ; 315
	i32 50, ; 316
	i32 212, ; 317
	i32 274, ; 318
	i32 372, ; 319
	i32 406, ; 320
	i32 60, ; 321
	i32 53, ; 322
	i32 4, ; 323
	i32 190, ; 324
	i32 96, ; 325
	i32 273, ; 326
	i32 17, ; 327
	i32 375, ; 328
	i32 152, ; 329
	i32 83, ; 330
	i32 28, ; 331
	i32 44, ; 332
	i32 63, ; 333
	i32 65, ; 334
	i32 397, ; 335
	i32 169, ; 336
	i32 313, ; 337
	i32 1, ; 338
	i32 348, ; 339
	i32 46, ; 340
	i32 24, ; 341
	i32 176, ; 342
	i32 281, ; 343
	i32 368, ; 344
	i32 360, ; 345
	i32 235, ; 346
	i32 225, ; 347
	i32 178, ; 348
	i32 162, ; 349
	i32 107, ; 350
	i32 12, ; 351
	i32 307, ; 352
	i32 62, ; 353
	i32 265, ; 354
	i32 23, ; 355
	i32 92, ; 356
	i32 182, ; 357
	i32 165, ; 358
	i32 12, ; 359
	i32 352, ; 360
	i32 257, ; 361
	i32 28, ; 362
	i32 102, ; 363
	i32 14, ; 364
	i32 182, ; 365
	i32 125, ; 366
	i32 290, ; 367
	i32 250, ; 368
	i32 322, ; 369
	i32 90, ; 370
	i32 311, ; 371
	i32 373, ; 372
	i32 9, ; 373
	i32 200, ; 374
	i32 364, ; 375
	i32 85, ; 376
	i32 367, ; 377
	i32 301, ; 378
	i32 334, ; 379
	i32 188, ; 380
	i32 401, ; 381
	i32 70, ; 382
	i32 165, ; 383
	i32 1, ; 384
	i32 321, ; 385
	i32 5, ; 386
	i32 401, ; 387
	i32 43, ; 388
	i32 265, ; 389
	i32 378, ; 390
	i32 349, ; 391
	i32 201, ; 392
	i32 199, ; 393
	i32 155, ; 394
	i32 324, ; 395
	i32 111, ; 396
	i32 411, ; 397
	i32 226, ; 398
	i32 120, ; 399
	i32 361, ; 400
	i32 369, ; 401
	i32 221, ; 402
	i32 339, ; 403
	i32 280, ; 404
	i32 187, ; 405
	i32 156, ; 406
	i32 130, ; 407
	i32 344, ; 408
	i32 56, ; 409
	i32 358, ; 410
	i32 231, ; 411
	i32 135, ; 412
	i32 82, ; 413
	i32 29, ; 414
	i32 291, ; 415
	i32 10, ; 416
	i32 355, ; 417
	i32 341, ; 418
	i32 168, ; 419
	i32 358, ; 420
	i32 288, ; 421
	i32 147, ; 422
	i32 93, ; 423
	i32 183, ; 424
	i32 224, ; 425
	i32 301, ; 426
	i32 59, ; 427
	i32 214, ; 428
	i32 255, ; 429
	i32 154, ; 430
	i32 386, ; 431
	i32 260, ; 432
	i32 246, ; 433
	i32 63, ; 434
	i32 87, ; 435
	i32 78, ; 436
	i32 46, ; 437
	i32 253, ; 438
	i32 140, ; 439
	i32 383, ; 440
	i32 229, ; 441
	i32 350, ; 442
	i32 295, ; 443
	i32 73, ; 444
	i32 191, ; 445
	i32 90, ; 446
	i32 347, ; 447
	i32 363, ; 448
	i32 207, ; 449
	i32 134, ; 450
	i32 89, ; 451
	i32 333, ; 452
	i32 353, ; 453
	i32 356, ; 454
	i32 292, ; 455
	i32 215, ; 456
	i32 360, ; 457
	i32 381, ; 458
	i32 210, ; 459
	i32 111, ; 460
	i32 41, ; 461
	i32 156, ; 462
	i32 4, ; 463
	i32 102, ; 464
	i32 238, ; 465
	i32 69, ; 466
	i32 223, ; 467
	i32 59, ; 468
	i32 38, ; 469
	i32 282, ; 470
	i32 0, ; 471
	i32 150, ; 472
	i32 189, ; 473
	i32 55, ; 474
	i32 33, ; 475
	i32 211, ; 476
	i32 245, ; 477
	i32 255, ; 478
	i32 374, ; 479
	i32 279, ; 480
	i32 21, ; 481
	i32 160, ; 482
	i32 193, ; 483
	i32 237, ; 484
	i32 345, ; 485
	i32 392, ; 486
	i32 343, ; 487
	i32 338, ; 488
	i32 137, ; 489
	i32 177, ; 490
	i32 395, ; 491
	i32 248, ; 492
	i32 88, ; 493
	i32 144, ; 494
	i32 294, ; 495
	i32 159, ; 496
	i32 323, ; 497
	i32 224, ; 498
	i32 6, ; 499
	i32 166, ; 500
	i32 30, ; 501
	i32 106, ; 502
	i32 304, ; 503
	i32 266, ; 504
	i32 393, ; 505
	i32 338, ; 506
	i32 244, ; 507
	i32 217, ; 508
	i32 277, ; 509
	i32 331, ; 510
	i32 164, ; 511
	i32 305, ; 512
	i32 361, ; 513
	i32 137, ; 514
	i32 389, ; 515
	i32 58, ; 516
	i32 141, ; 517
	i32 199, ; 518
	i32 80, ; 519
	i32 73, ; 520
	i32 239, ; 521
	i32 240, ; 522
	i32 129, ; 523
	i32 25, ; 524
	i32 7, ; 525
	i32 92, ; 526
	i32 335, ; 527
	i32 270, ; 528
	i32 271, ; 529
	i32 112, ; 530
	i32 9, ; 531
	i32 264, ; 532
	i32 242, ; 533
	i32 266, ; 534
	i32 103, ; 535
	i32 19, ; 536
	i32 173, ; 537
	i32 197, ; 538
	i32 303, ; 539
	i32 317, ; 540
	i32 414, ; 541
	i32 297, ; 542
	i32 32, ; 543
	i32 285, ; 544
	i32 45, ; 545
	i32 394, ; 546
	i32 29, ; 547
	i32 286, ; 548
	i32 56, ; 549
	i32 133, ; 550
	i32 113, ; 551
	i32 219, ; 552
	i32 340, ; 553
	i32 379, ; 554
	i32 407, ; 555
	i32 351, ; 556
	i32 371, ; 557
	i32 54, ; 558
	i32 362, ; 559
	i32 249, ; 560
	i32 6, ; 561
	i32 76, ; 562
	i32 296, ; 563
	i32 217, ; 564
	i32 181, ; 565
	i32 377, ; 566
	i32 110, ; 567
	i32 194, ; 568
	i32 185, ; 569
	i32 195, ; 570
	i32 300, ; 571
	i32 373, ; 572
	i32 101, ; 573
	i32 381, ; 574
	i32 395, ; 575
	i32 379, ; 576
	i32 215, ; 577
	i32 167, ; 578
	i32 114, ; 579
	i32 389, ; 580
	i32 335, ; 581
	i32 290, ; 582
	i32 191, ; 583
	i32 75, ; 584
	i32 346, ; 585
	i32 84, ; 586
	i32 348, ; 587
	i32 409, ; 588
	i32 283, ; 589
	i32 410, ; 590
	i32 393, ; 591
	i32 236, ; 592
	i32 325, ; 593
	i32 157, ; 594
	i32 2, ; 595
	i32 200, ; 596
	i32 296, ; 597
	i32 197, ; 598
	i32 24, ; 599
	i32 276, ; 600
	i32 31, ; 601
	i32 116, ; 602
	i32 36, ; 603
	i32 16, ; 604
	i32 388, ; 605
	i32 51, ; 606
	i32 391, ; 607
	i32 349, ; 608
	i32 20, ; 609
	i32 122, ; 610
	i32 216, ; 611
	i32 151, ; 612
	i32 211, ; 613
	i32 234, ; 614
	i32 303, ; 615
	i32 130, ; 616
	i32 196, ; 617
	i32 383, ; 618
	i32 285, ; 619
	i32 145, ; 620
	i32 221, ; 621
	i32 272, ; 622
	i32 195, ; 623
	i32 119, ; 624
	i32 27, ; 625
	i32 131, ; 626
	i32 99, ; 627
	i32 354, ; 628
	i32 133, ; 629
	i32 323, ; 630
	i32 198, ; 631
	i32 150, ; 632
	i32 96, ; 633
	i32 124, ; 634
	i32 273, ; 635
	i32 68, ; 636
	i32 71, ; 637
	i32 404, ; 638
	i32 308, ; 639
	i32 326, ; 640
	i32 385, ; 641
	i32 198, ; 642
	i32 269, ; 643
	i32 123, ; 644
	i32 206, ; 645
	i32 70, ; 646
	i32 110, ; 647
	i32 318, ; 648
	i32 232, ; 649
	i32 149, ; 650
	i32 396, ; 651
	i32 209, ; 652
	i32 412, ; 653
	i32 0, ; 654
	i32 346, ; 655
	i32 117, ; 656
	i32 208, ; 657
	i32 294, ; 658
	i32 171, ; 659
	i32 413, ; 660
	i32 380, ; 661
	i32 126, ; 662
	i32 132, ; 663
	i32 233, ; 664
	i32 76, ; 665
	i32 45, ; 666
	i32 297, ; 667
	i32 212, ; 668
	i32 72, ; 669
	i32 62, ; 670
	i32 235, ; 671
	i32 97, ; 672
	i32 83, ; 673
	i32 397, ; 674
	i32 42, ; 675
	i32 60, ; 676
	i32 324, ; 677
	i32 208, ; 678
	i32 359, ; 679
	i32 228, ; 680
	i32 36, ; 681
	i32 39, ; 682
	i32 287, ; 683
	i32 352, ; 684
	i32 157, ; 685
	i32 202, ; 686
	i32 97, ; 687
	i32 370, ; 688
	i32 243, ; 689
	i32 292, ; 690
	i32 356, ; 691
	i32 365, ; 692
	i32 233, ; 693
	i32 179, ; 694
	i32 237, ; 695
	i32 134, ; 696
	i32 20, ; 697
	i32 64, ; 698
	i32 384, ; 699
	i32 124, ; 700
	i32 74, ; 701
	i32 192, ; 702
	i32 316, ; 703
	i32 175, ; 704
	i32 161, ; 705
	i32 234, ; 706
	i32 205, ; 707
	i32 153, ; 708
	i32 384, ; 709
	i32 5, ; 710
	i32 242, ; 711
	i32 392, ; 712
	i32 48, ; 713
	i32 330, ; 714
	i32 385, ; 715
	i32 141, ; 716
	i32 231, ; 717
	i32 136, ; 718
	i32 193, ; 719
	i32 99, ; 720
	i32 252, ; 721
	i32 122, ; 722
	i32 119, ; 723
	i32 139, ; 724
	i32 38, ; 725
	i32 67, ; 726
	i32 184, ; 727
	i32 247, ; 728
	i32 362, ; 729
	i32 40, ; 730
	i32 250, ; 731
	i32 161, ; 732
	i32 72, ; 733
	i32 398, ; 734
	i32 162, ; 735
	i32 245, ; 736
	i32 126, ; 737
	i32 213, ; 738
	i32 302, ; 739
	i32 351, ; 740
	i32 67, ; 741
	i32 166, ; 742
	i32 184, ; 743
	i32 207, ; 744
	i32 315, ; 745
	i32 289, ; 746
	i32 257, ; 747
	i32 322, ; 748
	i32 148, ; 749
	i32 44, ; 750
	i32 107, ; 751
	i32 262, ; 752
	i32 47, ; 753
	i32 95, ; 754
	i32 30, ; 755
	i32 209, ; 756
	i32 23, ; 757
	i32 163, ; 758
	i32 22, ; 759
	i32 135, ; 760
	i32 77, ; 761
	i32 405, ; 762
	i32 53, ; 763
	i32 315, ; 764
	i32 320, ; 765
	i32 10, ; 766
	i32 278, ; 767
	i32 319, ; 768
	i32 306, ; 769
	i32 230, ; 770
	i32 172, ; 771
	i32 16, ; 772
	i32 177, ; 773
	i32 412, ; 774
	i32 136, ; 775
	i32 258, ; 776
	i32 13, ; 777
	i32 15, ; 778
	i32 121, ; 779
	i32 240, ; 780
	i32 86, ; 781
	i32 146, ; 782
	i32 22, ; 783
	i32 203, ; 784
	i32 33, ; 785
	i32 78, ; 786
	i32 390, ; 787
	i32 344, ; 788
	i32 405, ; 789
	i32 144, ; 790
	i32 79, ; 791
	i32 388, ; 792
	i32 171, ; 793
	i32 271, ; 794
	i32 400, ; 795
	i32 41, ; 796
	i32 26, ; 797
	i32 411, ; 798
	i32 317, ; 799
	i32 314, ; 800
	i32 106, ; 801
	i32 186, ; 802
	i32 109, ; 803
	i32 210, ; 804
	i32 7, ; 805
	i32 378, ; 806
	i32 347, ; 807
	i32 258, ; 808
	i32 43, ; 809
	i32 158, ; 810
	i32 225, ; 811
	i32 145, ; 812
	i32 399, ; 813
	i32 283, ; 814
	i32 319, ; 815
	i32 37, ; 816
	i32 15, ; 817
	i32 267, ; 818
	i32 143, ; 819
	i32 8, ; 820
	i32 300, ; 821
	i32 321, ; 822
	i32 129, ; 823
	i32 394, ; 824
	i32 263, ; 825
	i32 337, ; 826
	i32 201, ; 827
	i32 268, ; 828
	i32 93 ; 829
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
