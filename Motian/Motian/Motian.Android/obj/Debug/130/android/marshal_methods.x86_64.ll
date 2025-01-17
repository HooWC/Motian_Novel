; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [328 x i64] [
	i64 2646484529726201, ; 0: FFImageLoading.Forms.Platform => 0x966f6b24c42f9 => 13
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 77
	i64 30579257353033782, ; 2: Syncfusion.Buttons.XForms => 0x6ca3ac2c05d836 => 36
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 24
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 25
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 67
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 102
	i64 263803244706540312, ; 7: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 34
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 103
	i64 347331204332682223, ; 9: ImageCircle.Forms.Plugin => 0x4d1f7e3dda87bef => 16
	i64 634308326490598313, ; 10: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 86
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 9
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 80
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 76
	i64 940822596282819491, ; 14: System.Transactions => 0xd0e792aa81923a3 => 148
	i64 996343623809489702, ; 15: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 129
	i64 1000557547492888992, ; 16: Mono.Security.dll => 0xde2b1c9cba651a0 => 163
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 134
	i64 1315114680217950157, ; 18: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 62
	i64 1425944114962822056, ; 19: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 10
	i64 1465843056802068477, ; 20: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 119
	i64 1476839205573959279, ; 21: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 158
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 60
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 89
	i64 1635754240436669259, ; 24: Motian.dll => 0x16b35dd0a9110b4b => 26
	i64 1636321030536304333, ; 25: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 81
	i64 1731380447121279447, ; 26: Newtonsoft.Json => 0x18071957e9b889d7 => 28
	i64 1743969030606105336, ; 27: System.Memory.dll => 0x1833d297e88f2af8 => 49
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 61
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 102
	i64 1837131419302612636, ; 30: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x197ecd4ad53dce9c => 132
	i64 1875917498431009007, ; 31: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 58
	i64 1981742497975770890, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 88
	i64 1984538867944326539, ; 33: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 14
	i64 2064708342624596306, ; 34: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 145
	i64 2076847052340733488, ; 35: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 38
	i64 2133195048986300728, ; 36: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 28
	i64 2136356949452311481, ; 37: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 93
	i64 2165725771938924357, ; 38: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 65
	i64 2262844636196693701, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 76
	i64 2284400282711631002, ; 40: System.Web.Services => 0x1fb3d1f42fd4249a => 153
	i64 2329709569556905518, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 84
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 53
	i64 2469392061734276978, ; 43: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 37
	i64 2470498323731680442, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 71
	i64 2479423007379663237, ; 45: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 110
	i64 2497223385847772520, ; 46: System.Runtime => 0x22a7eb7046413568 => 54
	i64 2547086958574651984, ; 47: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 57
	i64 2592350477072141967, ; 48: System.Xml.dll => 0x23f9e10627330e8f => 55
	i64 2624866290265602282, ; 49: mscorlib.dll => 0x246d65fbde2db8ea => 27
	i64 2656907746661064104, ; 50: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 19
	i64 2689772414458801262, ; 51: Syncfusion.SfTabView.XForms.Android => 0x2553fdc28a762c6e => 43
	i64 2694427813909235223, ; 52: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 97
	i64 2783046991838674048, ; 53: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 53
	i64 2787234703088983483, ; 54: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 106
	i64 2863324215353042462, ; 55: FFImageLoading.Forms => 0x27bc92340ce4661e => 12
	i64 2960931600190307745, ; 56: Xamarin.Forms.Core => 0x2917579a49927da1 => 126
	i64 3017704767998173186, ; 57: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 134
	i64 3289520064315143713, ; 58: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 83
	i64 3303437397778967116, ; 59: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 59
	i64 3311221304742556517, ; 60: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 52
	i64 3339480741387858005, ; 61: Xamarin.AndroidX.Work.Runtime => 0x2e58380a7cae7055 => 115
	i64 3364695309916733813, ; 62: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 118
	i64 3411255996856937470, ; 63: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 137
	i64 3446289425061894800, ; 64: OneSignalSDK.Xamarin => 0x2fd3adf90dffda90 => 31
	i64 3493805808809882663, ; 65: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 108
	i64 3522470458906976663, ; 66: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 107
	i64 3531994851595924923, ; 67: System.Numerics => 0x31042a9aade235bb => 51
	i64 3571415421602489686, ; 68: System.Runtime.dll => 0x319037675df7e556 => 54
	i64 3716579019761409177, ; 69: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 70: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 99
	i64 3772598417116884899, ; 71: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 77
	i64 3788644642786275579, ; 72: PanCardView => 0x3493f83ac17670fb => 32
	i64 3869221888984012293, ; 73: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 22
	i64 3874283402872150772, ; 74: Motian.Android.dll => 0x35c4383a6362daf4 => 0
	i64 3943415582112705276, ; 75: Syncfusion.Buttons.XForms.dll => 0x36b9d3942d916afc => 36
	i64 3966267475168208030, ; 76: System.Memory => 0x370b03412596249e => 49
	i64 4152527201570278149, ; 77: Syncfusion.SfRotator.Android.dll => 0x39a0bd7d21be4b05 => 40
	i64 4247996603072512073, ; 78: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 140
	i64 4248804899347366872, ; 79: Xamarin.AndroidX.Room.Common.dll => 0x3af6c98b798a03d8 => 100
	i64 4335356748765836238, ; 80: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3c2a47fe48c7b3ce => 132
	i64 4500292229471022193, ; 81: Xamarin.Google.Dagger.dll => 0x3e743ff06b122c71 => 135
	i64 4525561845656915374, ; 82: System.ServiceModel.Internals => 0x3ece06856b710dae => 154
	i64 4636684751163556186, ; 83: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 112
	i64 4657212095206026001, ; 84: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 20
	i64 4702770163853758138, ; 85: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 119
	i64 4782108999019072045, ; 86: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 64
	i64 4794310189461587505, ; 87: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 57
	i64 4795410492532947900, ; 88: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 107
	i64 4941606650460547470, ; 89: Syncfusion.SfTabView.XForms.dll => 0x44941d111c68a98e => 44
	i64 5081566143765835342, ; 90: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 91: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5142919913060024034, ; 92: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 128
	i64 5203618020066742981, ; 93: Xamarin.Essentials => 0x4836f704f0e652c5 => 116
	i64 5205316157927637098, ; 94: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 91
	i64 5348796042099802469, ; 95: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 92
	i64 5375264076663995773, ; 96: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 127
	i64 5376510917114486089, ; 97: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 110
	i64 5408338804355907810, ; 98: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 109
	i64 5446034149219586269, ; 99: System.Diagnostics.Debug => 0x4b94333452e150dd => 157
	i64 5451019430259338467, ; 100: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 70
	i64 5507995362134886206, ; 101: System.Core.dll => 0x4c705499688c873e => 46
	i64 5514426807633697079, ; 102: Xamarin.AndroidX.Sqlite => 0x4c872df700e5d937 => 104
	i64 5692067934154308417, ; 103: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 114
	i64 5757522595884336624, ; 104: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 68
	i64 5759039185982771185, ; 105: Xamarin.AndroidX.Lifecycle.Service => 0x4fec37a0800ecff1 => 87
	i64 5814345312393086621, ; 106: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 97
	i64 5896680224035167651, ; 107: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 85
	i64 6085203216496545422, ; 108: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 129
	i64 6086316965293125504, ; 109: FormsViewGroup.dll => 0x5476f10882baef80 => 15
	i64 6092862891035488599, ; 110: Xamarin.Firebase.Measurement.Connector.dll => 0x548e32849d547157 => 124
	i64 6167443447940383130, ; 111: OneSignal.Android.Binding.dll => 0x55972923aecc019a => 29
	i64 6319713645133255417, ; 112: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 86
	i64 6401687960814735282, ; 113: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 84
	i64 6414004466313930583, ; 114: Syncfusion.SfRotator.XForms => 0x59031f144a692757 => 42
	i64 6504860066809920875, ; 115: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 65
	i64 6548213210057960872, ; 116: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 74
	i64 6554405243736097249, ; 117: Xamarin.GooglePlayServices.Stats => 0x5af5ecd7aad901e1 => 139
	i64 6560151584539558821, ; 118: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 23
	i64 6591024623626361694, ; 119: System.Web.Services.dll => 0x5b7805f9751a1b5e => 153
	i64 6653548606077419190, ; 120: Motian.Android => 0x5c562734890a3eb6 => 0
	i64 6659513131007730089, ; 121: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 80
	i64 6876862101832370452, ; 122: System.Xml.Linq => 0x5f6f85a57d108914 => 56
	i64 6878582369430612696, ; 123: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x5f75a238802d2ad8 => 133
	i64 6894844156784520562, ; 124: System.Numerics.Vectors => 0x5faf683aead1ad72 => 52
	i64 6975328107116786489, ; 125: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 117
	i64 7026608356547306326, ; 126: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 38
	i64 7036436454368433159, ; 127: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 82
	i64 7103753931438454322, ; 128: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 79
	i64 7270811800166795866, ; 129: System.Linq => 0x64e71ccf51a90a5a => 161
	i64 7338192458477945005, ; 130: System.Reflection => 0x65d67f295d0740ad => 3
	i64 7363614467969488359, ; 131: Xamarin.AndroidX.Sqlite.Framework.dll => 0x6630d058323f95e7 => 105
	i64 7385250113861300937, ; 132: Xamarin.Firebase.Iid.Interop.dll => 0x667dadd98e1db2c9 => 121
	i64 7488575175965059935, ; 133: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 56
	i64 7489048572193775167, ; 134: System.ObjectModel => 0x67ee71ff6b419e3f => 162
	i64 7635363394907363464, ; 135: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 126
	i64 7637365915383206639, ; 136: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 116
	i64 7654504624184590948, ; 137: System.Net.Http => 0x6a3a4366801b8264 => 50
	i64 7735352534559001595, ; 138: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 144
	i64 7820441508502274321, ; 139: System.Data => 0x6c87ca1e14ff8111 => 147
	i64 7836164640616011524, ; 140: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 60
	i64 7842383726582361265, ; 141: Xamarin.AndroidX.Sqlite.dll => 0x6cd5be72d73eecb1 => 104
	i64 7888451308934344906, ; 142: OneSignalSDK.Xamarin.Core.dll => 0x6d7968abb0ff30ca => 30
	i64 7904570928025870493, ; 143: Xamarin.Firebase.Installations => 0x6db2ad60fadca09d => 122
	i64 7940488133782528123, ; 144: Xamarin.GooglePlayServices.CloudMessaging => 0x6e3247e31d4fe07b => 138
	i64 7969431548154767168, ; 145: Xamarin.Firebase.Installations.dll => 0x6e991bc4e98e6740 => 122
	i64 8044118961405839122, ; 146: System.ComponentModel.Composition => 0x6fa2739369944712 => 152
	i64 8064050204834738623, ; 147: System.Collections.dll => 0x6fe942efa61731bf => 4
	i64 8083354569033831015, ; 148: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 83
	i64 8087206902342787202, ; 149: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 47
	i64 8103644804370223335, ; 150: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 149
	i64 8113615946733131500, ; 151: System.Reflection.Extensions => 0x70995ab73cf916ec => 6
	i64 8167236081217502503, ; 152: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 17
	i64 8185542183669246576, ; 153: System.Collections => 0x7198e33f4794aa70 => 4
	i64 8205064624148743999, ; 154: OneSignal.Android.Binding => 0x71de3ecda982873f => 29
	i64 8290740647658429042, ; 155: System.Runtime.Extensions => 0x730ea0b15c929a72 => 5
	i64 8398329775253868912, ; 156: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 69
	i64 8400357532724379117, ; 157: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 96
	i64 8465511506719290632, ; 158: Xamarin.Firebase.Messaging.dll => 0x757b89dcf7fc3508 => 125
	i64 8517710342570482946, ; 159: Syncfusion.Buttons.XForms.Android => 0x7634fc6d84959d02 => 35
	i64 8601935802264776013, ; 160: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 109
	i64 8626175481042262068, ; 161: Java.Interop => 0x77b654e585b55834 => 17
	i64 8639588376636138208, ; 162: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 95
	i64 8684531736582871431, ; 163: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 151
	i64 8725526185868997716, ; 164: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 47
	i64 8853378295825400934, ; 165: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 143
	i64 9099924959696254698, ; 166: Syncfusion.SfRotator.XForms.Android.dll => 0x7e496d899167f6ea => 41
	i64 9113372623695166316, ; 167: Syncfusion.SfRotator.XForms.Android => 0x7e79341dd51ebb6c => 41
	i64 9114191852432800567, ; 168: FFImageLoading.dll => 0x7e7c1d3363043b37 => 11
	i64 9238306115887712111, ; 169: FFImageLoading.Forms.dll => 0x80350e773bce476f => 12
	i64 9238909584418939062, ; 170: Xamarin.AndroidX.Sqlite.Framework => 0x80373351333e20b6 => 105
	i64 9312692141327339315, ; 171: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 114
	i64 9324707631942237306, ; 172: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 61
	i64 9584643793929893533, ; 173: System.IO.dll => 0x85037ebfbbd7f69d => 156
	i64 9659729154652888475, ; 174: System.Text.RegularExpressions => 0x860e407c9991dd9b => 160
	i64 9662334977499516867, ; 175: System.Numerics.dll => 0x8617827802b0cfc3 => 51
	i64 9678050649315576968, ; 176: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 71
	i64 9684590680804540597, ; 177: OneSignalSDK.Xamarin.Core => 0x866693e9bc69c0b5 => 30
	i64 9695067051349111183, ; 178: PanCardView.Droid.dll => 0x868bcc1dd541f18f => 33
	i64 9711637524876806384, ; 179: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 92
	i64 9774216967140627647, ; 180: Xamarin.Firebase.Datatransport.dll => 0x87a4fe8bac0354bf => 120
	i64 9796610708422913120, ; 181: Xamarin.Firebase.Iid.Interop => 0x87f48d88de55ec60 => 121
	i64 9808709177481450983, ; 182: Mono.Android.dll => 0x881f890734e555e7 => 25
	i64 9825649861376906464, ; 183: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 68
	i64 9834056768316610435, ; 184: System.Transactions.dll => 0x8879968718899783 => 148
	i64 9998632235833408227, ; 185: Mono.Security => 0x8ac2470b209ebae3 => 163
	i64 10038780035334861115, ; 186: System.Net.Http.dll => 0x8b50e941206af13b => 50
	i64 10226222362177979215, ; 187: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 145
	i64 10229024438826829339, ; 188: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 74
	i64 10269716227397343482, ; 189: Syncfusion.SfRotator.XForms.dll => 0x8e855c7f5e1558fa => 42
	i64 10321854143672141184, ; 190: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 142
	i64 10352330178246763130, ; 191: Xamarin.Firebase.Measurement.Connector => 0x8faadd72b7f4627a => 124
	i64 10360651442923773544, ; 192: System.Text.Encoding => 0x8fc86d98211c1e68 => 7
	i64 10376576884623852283, ; 193: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 108
	i64 10421511051509811956, ; 194: Xamarin.AndroidX.Room.Runtime.dll => 0x90a0a515f80ccaf4 => 101
	i64 10430153318873392755, ; 195: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 72
	i64 10566960649245365243, ; 196: System.Globalization.dll => 0x92a562b96dcd13fb => 8
	i64 10679925812255520825, ; 197: Xamarin.AndroidX.Work.Runtime.dll => 0x9436b7f10b03f839 => 115
	i64 10714184849103829812, ; 198: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 5
	i64 10785150219063592792, ; 199: System.Net.Primitives => 0x95ac8cfb68830758 => 158
	i64 10847732767863316357, ; 200: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 62
	i64 10849603794298325860, ; 201: Xamarin.AndroidX.Room.Common => 0x9691892ad0e1cb64 => 100
	i64 11002576679268595294, ; 202: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 21
	i64 11023048688141570732, ; 203: System.Core => 0x98f9bc61168392ac => 46
	i64 11037814507248023548, ; 204: System.Xml => 0x992e31d0412bf7fc => 55
	i64 11162124722117608902, ; 205: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 113
	i64 11171845786728836392, ; 206: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x9b0a5e8d536aad28 => 138
	i64 11226290749488709958, ; 207: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 23
	i64 11336891506707244397, ; 208: Xamarin.Firebase.Datatransport => 0x9d54bac28a6da56d => 120
	i64 11340910727871153756, ; 209: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 73
	i64 11376351552967644903, ; 210: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 117
	i64 11392833485892708388, ; 211: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 98
	i64 11529969570048099689, ; 212: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 113
	i64 11530571088791430846, ; 213: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 22
	i64 11578238080964724296, ; 214: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 82
	i64 11580057168383206117, ; 215: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 58
	i64 11591352189662810718, ; 216: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 106
	i64 11597940890313164233, ; 217: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11619874950061906932, ; 218: Syncfusion.SfTabView.XForms => 0xa14216b3cce65bf4 => 44
	i64 11672361001936329215, ; 219: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 79
	i64 11743665907891708234, ; 220: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 155
	i64 11855946309386773903, ; 221: Xamarin.Google.Dagger => 0xa488c85a571a258f => 135
	i64 11958013547207876529, ; 222: OneSignalSDK.Xamarin.dll => 0xa5f365f704a25fb1 => 31
	i64 12102847907131387746, ; 223: System.Buffers => 0xa7f5f40c43256f62 => 45
	i64 12123043025855404482, ; 224: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 6
	i64 12137774235383566651, ; 225: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 111
	i64 12346958216201575315, ; 226: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 141
	i64 12451044538927396471, ; 227: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 78
	i64 12466513435562512481, ; 228: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 90
	i64 12487638416075308985, ; 229: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 75
	i64 12538491095302438457, ; 230: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 66
	i64 12550732019250633519, ; 231: System.IO.Compression => 0xae2d28465e8e1b2f => 150
	i64 12700432012701888177, ; 232: Motian => 0xb040ffa033186eb1 => 26
	i64 12700543734426720211, ; 233: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 67
	i64 12708238894395270091, ; 234: System.IO => 0xb05cbbf17d3ba3cb => 156
	i64 12828192437253469131, ; 235: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 146
	i64 12843321153144804894, ; 236: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 24
	i64 12963446364377008305, ; 237: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 9
	i64 13370592475155966277, ; 238: System.Runtime.Serialization => 0xb98de304062ea945 => 10
	i64 13391361154981494717, ; 239: Syncfusion.Buttons.XForms.Android.dll => 0xb9d7ac051da2ffbd => 35
	i64 13401370062847626945, ; 240: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 111
	i64 13404347523447273790, ; 241: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 69
	i64 13454009404024712428, ; 242: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 136
	i64 13465488254036897740, ; 243: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 144
	i64 13491513212026656886, ; 244: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 63
	i64 13572454107664307259, ; 245: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 99
	i64 13622732128915678507, ; 246: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 37
	i64 13647894001087880694, ; 247: System.Data.dll => 0xbd670f48cb071df6 => 147
	i64 13828521679616088467, ; 248: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 143
	i64 13829530607229561650, ; 249: Xamarin.Firebase.Installations.InterOp => 0xbfec5cd0b64f6b32 => 123
	i64 13852575513600495870, ; 250: ImageCircle.Forms.Plugin.dll => 0xc03e3c09186e90fe => 16
	i64 13959074834287824816, ; 251: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 78
	i64 13967638549803255703, ; 252: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 128
	i64 13970307180132182141, ; 253: Syncfusion.Licensing => 0xc1e0805ccade287d => 39
	i64 13987974187833695008, ; 254: Xamarin.AndroidX.Lifecycle.Service.dll => 0xc21f446991291b20 => 87
	i64 14124974489674258913, ; 255: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 66
	i64 14125464355221830302, ; 256: System.Threading.dll => 0xc407bafdbc707a9e => 159
	i64 14172845254133543601, ; 257: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 93
	i64 14261073672896646636, ; 258: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 98
	i64 14327695147300244862, ; 259: System.Reflection.dll => 0xc6d632d338eb4d7e => 3
	i64 14343779804637125676, ; 260: PanCardView.Droid => 0xc70f57bc57d15c2c => 33
	i64 14454106681488828596, ; 261: PanCardView.dll => 0xc8974d7217bde8b4 => 32
	i64 14486659737292545672, ; 262: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 85
	i64 14524915121004231475, ; 263: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 141
	i64 14538127318538747197, ; 264: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 39
	i64 14644440854989303794, ; 265: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 91
	i64 14669215534098758659, ; 266: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 19
	i64 14789919016435397935, ; 267: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 118
	i64 14792063746108907174, ; 268: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 136
	i64 14809388726477333247, ; 269: Xamarin.GooglePlayServices.Stats.dll => 0xcd8584954e5b22ff => 139
	i64 14852515768018889994, ; 270: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 73
	i64 14954917835170835695, ; 271: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 18
	i64 14987728460634540364, ; 272: System.IO.Compression.dll => 0xcfff1ba06622494c => 150
	i64 14988210264188246988, ; 273: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 75
	i64 15076659072870671916, ; 274: System.ObjectModel.dll => 0xd13b0d8c1620662c => 162
	i64 15133485256822086103, ; 275: System.Linq.dll => 0xd204f0a9127dd9d7 => 161
	i64 15370334346939861994, ; 276: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 72
	i64 15391712275433856905, ; 277: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 18
	i64 15398511348637731642, ; 278: FFImageLoading.Forms.Platform.dll => 0xd5b2807c9d5f8b3a => 13
	i64 15526743539506359484, ; 279: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 7
	i64 15582737692548360875, ; 280: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 89
	i64 15609085926864131306, ; 281: System.dll => 0xd89e9cf3334914ea => 48
	i64 15777549416145007739, ; 282: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 103
	i64 15810740023422282496, ; 283: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 130
	i64 15817206913877585035, ; 284: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 155
	i64 15930129725311349754, ; 285: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 140
	i64 16154507427712707110, ; 286: System => 0xe03056ea4e39aa26 => 48
	i64 16321164108206115771, ; 287: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 21
	i64 16423015068819898779, ; 288: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 146
	i64 16467346005009053642, ; 289: Xamarin.Google.Android.DataTransport.TransportApi => 0xe487c3f19e0337ca => 131
	i64 16558262036769511634, ; 290: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 20
	i64 16565028646146589191, ; 291: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 152
	i64 16621146507174665210, ; 292: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 70
	i64 16677317093839702854, ; 293: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 96
	i64 16822611501064131242, ; 294: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 149
	i64 16833383113903931215, ; 295: mscorlib => 0xe99c30c1484d7f4f => 27
	i64 16890310621557459193, ; 296: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 160
	i64 16980913776273025751, ; 297: Syncfusion.SfRotator.Android => 0xeba8531c5c4a6ad7 => 40
	i64 17024911836938395553, ; 298: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 59
	i64 17031351772568316411, ; 299: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 94
	i64 17037200463775726619, ; 300: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 81
	i64 17285063141349522879, ; 301: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 34
	i64 17434242208926550937, ; 302: Xamarin.Google.Android.DataTransport.TransportRuntime => 0xf1f2deeb1f304b99 => 133
	i64 17544493274320527064, ; 303: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 64
	i64 17627500474728259406, ; 304: System.Globalization => 0xf4a176498a351f4e => 8
	i64 17643123953373031521, ; 305: FFImageLoading => 0xf4d8f7c220fc2c61 => 11
	i64 17677828421478984182, ; 306: Xamarin.Firebase.Installations.InterOp.dll => 0xf5544349c68f29f6 => 123
	i64 17685921127322830888, ; 307: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 157
	i64 17704177640604968747, ; 308: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 90
	i64 17710060891934109755, ; 309: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 88
	i64 17827832363535584534, ; 310: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 127
	i64 17838668724098252521, ; 311: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 45
	i64 17865949717230441556, ; 312: Xamarin.AndroidX.Room.Runtime => 0xf7f09a9c2682d454 => 101
	i64 17882897186074144999, ; 313: FormsViewGroup => 0xf82cd03e3ac830e7 => 15
	i64 17891337867145587222, ; 314: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 142
	i64 17892495832318972303, ; 315: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 130
	i64 17928294245072900555, ; 316: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 151
	i64 17945795017270165205, ; 317: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0xf90c457cc05cfed5 => 131
	i64 17947624217716767869, ; 318: FFImageLoading.Platform => 0xf912c522ab34bc7d => 14
	i64 17986907704309214542, ; 319: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 137
	i64 18025913125965088385, ; 320: System.Threading => 0xfa28e87b91334681 => 159
	i64 18116111925905154859, ; 321: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 63
	i64 18121036031235206392, ; 322: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 94
	i64 18129453464017766560, ; 323: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 154
	i64 18305135509493619199, ; 324: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 95
	i64 18337470502355292274, ; 325: Xamarin.Firebase.Messaging => 0xfe7bc8440c175072 => 125
	i64 18380184030268848184, ; 326: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 112
	i64 18409051266390776985 ; 327: Syncfusion.SfTabView.XForms.Android.dll => 0xff7a1697692d5c99 => 43
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [328 x i32] [
	i32 13, i32 77, i32 36, i32 24, i32 25, i32 67, i32 102, i32 34, ; 0..7
	i32 103, i32 16, i32 86, i32 9, i32 80, i32 76, i32 148, i32 129, ; 8..15
	i32 163, i32 134, i32 62, i32 10, i32 119, i32 158, i32 60, i32 89, ; 16..23
	i32 26, i32 81, i32 28, i32 49, i32 61, i32 102, i32 132, i32 58, ; 24..31
	i32 88, i32 14, i32 145, i32 38, i32 28, i32 93, i32 65, i32 76, ; 32..39
	i32 153, i32 84, i32 53, i32 37, i32 71, i32 110, i32 54, i32 57, ; 40..47
	i32 55, i32 27, i32 19, i32 43, i32 97, i32 53, i32 106, i32 12, ; 48..55
	i32 126, i32 134, i32 83, i32 59, i32 52, i32 115, i32 118, i32 137, ; 56..63
	i32 31, i32 108, i32 107, i32 51, i32 54, i32 1, i32 99, i32 77, ; 64..71
	i32 32, i32 22, i32 0, i32 36, i32 49, i32 40, i32 140, i32 100, ; 72..79
	i32 132, i32 135, i32 154, i32 112, i32 20, i32 119, i32 64, i32 57, ; 80..87
	i32 107, i32 44, i32 2, i32 2, i32 128, i32 116, i32 91, i32 92, ; 88..95
	i32 127, i32 110, i32 109, i32 157, i32 70, i32 46, i32 104, i32 114, ; 96..103
	i32 68, i32 87, i32 97, i32 85, i32 129, i32 15, i32 124, i32 29, ; 104..111
	i32 86, i32 84, i32 42, i32 65, i32 74, i32 139, i32 23, i32 153, ; 112..119
	i32 0, i32 80, i32 56, i32 133, i32 52, i32 117, i32 38, i32 82, ; 120..127
	i32 79, i32 161, i32 3, i32 105, i32 121, i32 56, i32 162, i32 126, ; 128..135
	i32 116, i32 50, i32 144, i32 147, i32 60, i32 104, i32 30, i32 122, ; 136..143
	i32 138, i32 122, i32 152, i32 4, i32 83, i32 47, i32 149, i32 6, ; 144..151
	i32 17, i32 4, i32 29, i32 5, i32 69, i32 96, i32 125, i32 35, ; 152..159
	i32 109, i32 17, i32 95, i32 151, i32 47, i32 143, i32 41, i32 41, ; 160..167
	i32 11, i32 12, i32 105, i32 114, i32 61, i32 156, i32 160, i32 51, ; 168..175
	i32 71, i32 30, i32 33, i32 92, i32 120, i32 121, i32 25, i32 68, ; 176..183
	i32 148, i32 163, i32 50, i32 145, i32 74, i32 42, i32 142, i32 124, ; 184..191
	i32 7, i32 108, i32 101, i32 72, i32 8, i32 115, i32 5, i32 158, ; 192..199
	i32 62, i32 100, i32 21, i32 46, i32 55, i32 113, i32 138, i32 23, ; 200..207
	i32 120, i32 73, i32 117, i32 98, i32 113, i32 22, i32 82, i32 58, ; 208..215
	i32 106, i32 1, i32 44, i32 79, i32 155, i32 135, i32 31, i32 45, ; 216..223
	i32 6, i32 111, i32 141, i32 78, i32 90, i32 75, i32 66, i32 150, ; 224..231
	i32 26, i32 67, i32 156, i32 146, i32 24, i32 9, i32 10, i32 35, ; 232..239
	i32 111, i32 69, i32 136, i32 144, i32 63, i32 99, i32 37, i32 147, ; 240..247
	i32 143, i32 123, i32 16, i32 78, i32 128, i32 39, i32 87, i32 66, ; 248..255
	i32 159, i32 93, i32 98, i32 3, i32 33, i32 32, i32 85, i32 141, ; 256..263
	i32 39, i32 91, i32 19, i32 118, i32 136, i32 139, i32 73, i32 18, ; 264..271
	i32 150, i32 75, i32 162, i32 161, i32 72, i32 18, i32 13, i32 7, ; 272..279
	i32 89, i32 48, i32 103, i32 130, i32 155, i32 140, i32 48, i32 21, ; 280..287
	i32 146, i32 131, i32 20, i32 152, i32 70, i32 96, i32 149, i32 27, ; 288..295
	i32 160, i32 40, i32 59, i32 94, i32 81, i32 34, i32 133, i32 64, ; 296..303
	i32 8, i32 11, i32 123, i32 157, i32 90, i32 88, i32 127, i32 45, ; 304..311
	i32 101, i32 15, i32 142, i32 130, i32 151, i32 131, i32 14, i32 137, ; 312..319
	i32 159, i32 63, i32 94, i32 154, i32 95, i32 125, i32 112, i32 43 ; 328..327
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
