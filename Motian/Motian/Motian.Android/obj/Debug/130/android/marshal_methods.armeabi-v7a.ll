; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [328 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 86
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 136
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 28
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 126
	i32 80722984, ; 4: Syncfusion.SfRotator.XForms.Android => 0x4cfbc28 => 41
	i32 99762151, ; 5: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 36
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 103
	i32 103834273, ; 7: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 117
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 103
	i32 134690465, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 145
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 67
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 107
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 65
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 157
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 81
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 8
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 153
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 70
	i32 266277096, ; 18: OneSignal.Android.Binding => 0xfdf10e8 => 29
	i32 278686392, ; 19: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 85
	i32 280482487, ; 20: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 79
	i32 291275502, ; 21: Microsoft.Extensions.Http.dll => 0x115c82ee => 20
	i32 307891448, ; 22: Xamarin.AndroidX.Work.Runtime.dll => 0x125a0cf8 => 115
	i32 318968648, ; 23: Xamarin.AndroidX.Activity.dll => 0x13031348 => 57
	i32 321597661, ; 24: System.Numerics => 0x132b30dd => 51
	i32 333836683, ; 25: OneSignalSDK.Xamarin.Core.dll => 0x13e5f18b => 30
	i32 342366114, ; 26: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 83
	i32 385762202, ; 27: System.Memory.dll => 0x16fe439a => 49
	i32 423914325, ; 28: Syncfusion.SfRotator.Android.dll => 0x19446b55 => 40
	i32 441335492, ; 29: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 69
	i32 442521989, ; 30: Xamarin.Essentials => 0x1a605985 => 116
	i32 442565967, ; 31: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 32: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 78
	i32 465846621, ; 33: mscorlib => 0x1bc4415d => 27
	i32 469710990, ; 34: System.dll => 0x1bff388e => 48
	i32 476646585, ; 35: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 79
	i32 484505379, ; 36: PanCardView => 0x1ce0f723 => 32
	i32 485140951, ; 37: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 133
	i32 486930444, ; 38: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 91
	i32 495452658, ; 39: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 133
	i32 498788369, ; 40: System.ObjectModel => 0x1dbae811 => 162
	i32 507148113, ; 41: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 131
	i32 513247710, ; 42: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 24
	i32 520798577, ; 43: FFImageLoading.Platform => 0x1f0ac171 => 14
	i32 526420162, ; 44: System.Transactions.dll => 0x1f6088c2 => 148
	i32 527452488, ; 45: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 145
	i32 539058512, ; 46: Microsoft.Extensions.Logging => 0x20216150 => 22
	i32 542030372, ; 47: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 139
	i32 545304856, ; 48: System.Runtime.Extensions => 0x2080b118 => 5
	i32 567678919, ; 49: Motian.Android.dll => 0x21d617c7 => 0
	i32 605376203, ; 50: System.IO.Compression.FileSystem => 0x24154ecb => 151
	i32 627609679, ; 51: Xamarin.AndroidX.CustomView => 0x2568904f => 74
	i32 663517072, ; 52: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 112
	i32 666292255, ; 53: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 62
	i32 690569205, ; 54: System.Xml.Linq.dll => 0x29293ff5 => 56
	i32 700284507, ; 55: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 142
	i32 715243097, ; 56: Syncfusion.SfTabView.XForms.Android.dll => 0x2aa1be59 => 43
	i32 719061231, ; 57: Syncfusion.Core.XForms.dll => 0x2adc00ef => 38
	i32 720511267, ; 58: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 146
	i32 775507847, ; 59: System.IO.Compression => 0x2e394f87 => 150
	i32 789151979, ; 60: Microsoft.Extensions.Options => 0x2f0980eb => 23
	i32 809851609, ; 61: System.Drawing.Common.dll => 0x30455ad9 => 9
	i32 836755697, ; 62: Xamarin.AndroidX.Lifecycle.Service => 0x31dfe0f1 => 87
	i32 843511501, ; 63: Xamarin.AndroidX.Print => 0x3246f6cd => 98
	i32 846667644, ; 64: Xamarin.Firebase.Installations.dll => 0x32771f7c => 122
	i32 877678880, ; 65: System.Globalization.dll => 0x34505120 => 8
	i32 882434999, ; 66: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 123
	i32 902159924, ; 67: Rg.Plugins.Popup => 0x35c5de34 => 34
	i32 928116545, ; 68: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 136
	i32 946305544, ; 69: Syncfusion.SfTabView.XForms.Android => 0x38677a08 => 43
	i32 955402788, ; 70: Newtonsoft.Json => 0x38f24a24 => 28
	i32 956575887, ; 71: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 146
	i32 967690846, ; 72: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 83
	i32 974778368, ; 73: FormsViewGroup.dll => 0x3a19f000 => 15
	i32 992768348, ; 74: System.Collections.dll => 0x3b2c715c => 4
	i32 996733531, ; 75: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 132
	i32 1010125794, ; 76: Motian => 0x3c354be2 => 26
	i32 1012816738, ; 77: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 102
	i32 1028951442, ; 78: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 18
	i32 1035644815, ; 79: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 61
	i32 1036359102, ; 80: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 138
	i32 1042160112, ; 81: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 129
	i32 1052210849, ; 82: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 88
	i32 1084122840, ; 83: Xamarin.Kotlin.StdLib => 0x409e66d8 => 144
	i32 1098259244, ; 84: System => 0x41761b2c => 48
	i32 1141947663, ; 85: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 124
	i32 1175144683, ; 86: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 110
	i32 1178241025, ; 87: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 95
	i32 1204270330, ; 88: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 62
	i32 1264511973, ; 89: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 106
	i32 1267360935, ; 90: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 111
	i32 1293217323, ; 91: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 76
	i32 1324164729, ; 92: System.Linq => 0x4eed2679 => 161
	i32 1333047053, ; 93: Xamarin.Firebase.Common => 0x4f74af0d => 118
	i32 1364015309, ; 94: System.IO => 0x514d38cd => 156
	i32 1365406463, ; 95: System.ServiceModel.Internals.dll => 0x516272ff => 154
	i32 1376866003, ; 96: Xamarin.AndroidX.SavedState => 0x52114ed3 => 102
	i32 1379779777, ; 97: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1379897097, ; 98: Xamarin.JavaX.Inject => 0x523f8f09 => 141
	i32 1395857551, ; 99: Xamarin.AndroidX.Media.dll => 0x5333188f => 92
	i32 1406073936, ; 100: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 71
	i32 1411638395, ; 101: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 53
	i32 1457743152, ; 102: System.Runtime.Extensions.dll => 0x56e36530 => 5
	i32 1458393339, ; 103: Syncfusion.SfRotator.XForms.Android.dll => 0x56ed50fb => 41
	i32 1460219004, ; 104: Xamarin.Forms.Xaml => 0x57092c7c => 130
	i32 1462112819, ; 105: System.IO.Compression.dll => 0x57261233 => 150
	i32 1469204771, ; 106: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 60
	i32 1470490898, ; 107: Microsoft.Extensions.Primitives => 0x57a5e912 => 24
	i32 1505131794, ; 108: Microsoft.Extensions.Http => 0x59b67d12 => 20
	i32 1516315406, ; 109: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 37
	i32 1530772511, ; 110: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 13
	i32 1531040989, ; 111: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 121
	i32 1543031311, ; 112: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 160
	i32 1550322496, ; 113: System.Reflection.Extensions.dll => 0x5c680b40 => 6
	i32 1582372066, ; 114: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 75
	i32 1592978981, ; 115: System.Runtime.Serialization.dll => 0x5ef2ee25 => 10
	i32 1622152042, ; 116: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 90
	i32 1624863272, ; 117: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 114
	i32 1634619362, ; 118: Xamarin.AndroidX.Room.Common => 0x616e4fe2 => 100
	i32 1636350590, ; 119: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 73
	i32 1639515021, ; 120: System.Net.Http.dll => 0x61b9038d => 50
	i32 1639986890, ; 121: System.Text.RegularExpressions => 0x61c036ca => 160
	i32 1657153582, ; 122: System.Runtime => 0x62c6282e => 54
	i32 1658241508, ; 123: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 108
	i32 1658251792, ; 124: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 134
	i32 1670060433, ; 125: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 70
	i32 1677501392, ; 126: System.Net.Primitives.dll => 0x63fca3d0 => 158
	i32 1698840827, ; 127: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 143
	i32 1701541528, ; 128: System.Diagnostics.Debug.dll => 0x656b7698 => 157
	i32 1726116996, ; 129: System.Reflection.dll => 0x66e27484 => 3
	i32 1729485958, ; 130: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 66
	i32 1736948048, ; 131: Xamarin.AndroidX.Sqlite.dll => 0x6787b950 => 104
	i32 1752994989, ; 132: Motian.dll => 0x687c94ad => 26
	i32 1758026047, ; 133: Xamarin.AndroidX.Room.Runtime.dll => 0x68c9593f => 101
	i32 1765942094, ; 134: System.Reflection.Extensions => 0x6942234e => 6
	i32 1766324549, ; 135: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 107
	i32 1770582343, ; 136: Microsoft.Extensions.Logging.dll => 0x6988f147 => 22
	i32 1776026572, ; 137: System.Core.dll => 0x69dc03cc => 46
	i32 1788241197, ; 138: Xamarin.AndroidX.Fragment => 0x6a96652d => 78
	i32 1793089559, ; 139: FFImageLoading.Forms.dll => 0x6ae06017 => 12
	i32 1796983048, ; 140: Syncfusion.SfTabView.XForms.dll => 0x6b1bc908 => 44
	i32 1808609942, ; 141: Xamarin.AndroidX.Loader => 0x6bcd3296 => 90
	i32 1813058853, ; 142: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 144
	i32 1813201214, ; 143: Xamarin.Google.Android.Material => 0x6c13413e => 134
	i32 1818569960, ; 144: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 96
	i32 1828688058, ; 145: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 21
	i32 1840964413, ; 146: FFImageLoading.Forms => 0x6dbae33d => 12
	i32 1867746548, ; 147: Xamarin.Essentials.dll => 0x6f538cf4 => 116
	i32 1878053835, ; 148: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 130
	i32 1885316902, ; 149: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 63
	i32 1900610850, ; 150: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1908813208, ; 151: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 137
	i32 1919157823, ; 152: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 93
	i32 1933215285, ; 153: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 125
	i32 1983156543, ; 154: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 143
	i32 2011961780, ; 155: System.Buffers.dll => 0x77ec19b4 => 45
	i32 2019465201, ; 156: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 88
	i32 2055257422, ; 157: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 84
	i32 2071563619, ; 158: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 35
	i32 2079903147, ; 159: System.Runtime.dll => 0x7bf8cdab => 54
	i32 2090596640, ; 160: System.Numerics.Vectors => 0x7c9bf920 => 52
	i32 2094676648, ; 161: Syncfusion.SfRotator.XForms.dll => 0x7cda3aa8 => 42
	i32 2097448633, ; 162: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 80
	i32 2113902067, ; 163: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 127
	i32 2124230737, ; 164: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 132
	i32 2126786730, ; 165: Xamarin.Forms.Platform.Android => 0x7ec430aa => 128
	i32 2174878672, ; 166: Xamarin.Firebase.Annotations => 0x81a203d0 => 117
	i32 2181898931, ; 167: Microsoft.Extensions.Options.dll => 0x820d22b3 => 23
	i32 2192057212, ; 168: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 21
	i32 2193016926, ; 169: System.ObjectModel.dll => 0x82b6c85e => 162
	i32 2201231467, ; 170: System.Net.Http => 0x8334206b => 50
	i32 2217644978, ; 171: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 110
	i32 2244775296, ; 172: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 91
	i32 2256548716, ; 173: Xamarin.AndroidX.MultiDex => 0x8680336c => 93
	i32 2261435625, ; 174: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 82
	i32 2279703579, ; 175: Xamarin.AndroidX.Sqlite.Framework.dll => 0x87e1841b => 105
	i32 2279755925, ; 176: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 99
	i32 2315684594, ; 177: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 58
	i32 2340826669, ; 178: FFImageLoading.dll => 0x8b862e2d => 11
	i32 2343171156, ; 179: Syncfusion.Core.XForms => 0x8ba9f454 => 38
	i32 2353062107, ; 180: System.Net.Primitives => 0x8c40e0db => 158
	i32 2354730003, ; 181: Syncfusion.Licensing => 0x8c5a5413 => 39
	i32 2397082276, ; 182: Xamarin.Forms.PancakeView => 0x8ee092a4 => 127
	i32 2409053734, ; 183: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 97
	i32 2454642406, ; 184: System.Text.Encoding.dll => 0x924edee6 => 7
	i32 2460200098, ; 185: OneSignalSDK.Xamarin.Core => 0x92a3aca2 => 30
	i32 2465532216, ; 186: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 69
	i32 2471215200, ; 187: ImageCircle.Forms.Plugin => 0x934bc060 => 16
	i32 2471841756, ; 188: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 189: Java.Interop.dll => 0x93918882 => 17
	i32 2483661569, ; 190: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 124
	i32 2483742551, ; 191: Xamarin.Firebase.Messaging => 0x940ae757 => 125
	i32 2486410006, ; 192: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 138
	i32 2501346920, ; 193: System.Data.DataSetExtensions => 0x95178668 => 149
	i32 2505896520, ; 194: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 86
	i32 2523584055, ; 195: Motian.Android => 0x966ad637 => 0
	i32 2581819634, ; 196: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 111
	i32 2593964533, ; 197: Xamarin.Google.Dagger => 0x9a9cc1f5 => 135
	i32 2620871830, ; 198: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 73
	i32 2623491480, ; 199: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 123
	i32 2624644809, ; 200: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 77
	i32 2633051222, ; 201: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 85
	i32 2635300604, ; 202: Syncfusion.Buttons.XForms => 0x9d137efc => 36
	i32 2693849962, ; 203: System.IO.dll => 0xa090e36a => 156
	i32 2701096212, ; 204: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 108
	i32 2715334215, ; 205: System.Threading.Tasks.dll => 0xa1d8b647 => 155
	i32 2732626843, ; 206: Xamarin.AndroidX.Activity => 0xa2e0939b => 57
	i32 2737747696, ; 207: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 60
	i32 2739926663, ; 208: Xamarin.AndroidX.Sqlite.Framework => 0xa34ff687 => 105
	i32 2766581644, ; 209: Xamarin.Forms.Core => 0xa4e6af8c => 126
	i32 2770495804, ; 210: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 142
	i32 2772412848, ; 211: Xamarin.Google.Dagger.dll => 0xa53fa9b0 => 135
	i32 2778768386, ; 212: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 113
	i32 2804607052, ; 213: Xamarin.Firebase.Components.dll => 0xa72ae84c => 119
	i32 2810250172, ; 214: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 71
	i32 2819470561, ; 215: System.Xml.dll => 0xa80db4e1 => 55
	i32 2842369275, ; 216: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 13
	i32 2853208004, ; 217: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 113
	i32 2855708567, ; 218: Xamarin.AndroidX.Transition => 0xaa36a797 => 109
	i32 2861816565, ; 219: Rg.Plugins.Popup.dll => 0xaa93daf5 => 34
	i32 2868557005, ; 220: Syncfusion.Licensing.dll => 0xaafab4cd => 39
	i32 2873222696, ; 221: FFImageLoading => 0xab41e628 => 11
	i32 2874148507, ; 222: Syncfusion.Core.XForms.Android => 0xab50069b => 37
	i32 2883826422, ; 223: Xamarin.Firebase.Installations => 0xabe3b2f6 => 122
	i32 2885205685, ; 224: Syncfusion.SfTabView.XForms => 0xabf8beb5 => 44
	i32 2901442782, ; 225: System.Reflection => 0xacf080de => 3
	i32 2903344695, ; 226: System.ComponentModel.Composition => 0xad0d8637 => 152
	i32 2905242038, ; 227: mscorlib.dll => 0xad2a79b6 => 27
	i32 2914202368, ; 228: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 121
	i32 2916838712, ; 229: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 114
	i32 2919462931, ; 230: System.Numerics.Vectors.dll => 0xae037813 => 52
	i32 2921128767, ; 231: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 59
	i32 2953735189, ; 232: Xamarin.AndroidX.Lifecycle.Service.dll => 0xb00e6c15 => 87
	i32 2978675010, ; 233: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 76
	i32 3016983068, ; 234: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 106
	i32 3024354802, ; 235: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 81
	i32 3044182254, ; 236: FormsViewGroup => 0xb57288ee => 15
	i32 3057625584, ; 237: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 94
	i32 3058099980, ; 238: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 140
	i32 3071899978, ; 239: Xamarin.Firebase.Common.dll => 0xb719794a => 118
	i32 3075834255, ; 240: System.Threading.Tasks => 0xb755818f => 155
	i32 3079937701, ; 241: PanCardView.dll => 0xb7941ea5 => 32
	i32 3106737866, ; 242: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 120
	i32 3108538180, ; 243: PanCardView.Droid => 0xb9488744 => 33
	i32 3111772706, ; 244: System.Runtime.Serialization => 0xb979e222 => 10
	i32 3144132135, ; 245: Xamarin.AndroidX.Sqlite => 0xbb67a627 => 104
	i32 3149941735, ; 246: Syncfusion.SfRotator.Android => 0xbbc04be7 => 40
	i32 3155362983, ; 247: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 131
	i32 3204380047, ; 248: System.Data.dll => 0xbefef58f => 147
	i32 3211777861, ; 249: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 75
	i32 3220365878, ; 250: System.Threading => 0xbff2e236 => 159
	i32 3230466174, ; 251: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 137
	i32 3247949154, ; 252: Mono.Security => 0xc197c562 => 163
	i32 3258312781, ; 253: Xamarin.AndroidX.CardView => 0xc235e84d => 66
	i32 3258802011, ; 254: OneSignal.Android.Binding.dll => 0xc23d5f5b => 29
	i32 3267021929, ; 255: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 64
	i32 3299363146, ; 256: System.Text.Encoding => 0xc4a8494a => 7
	i32 3317135071, ; 257: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 74
	i32 3317144872, ; 258: System.Data => 0xc5b79d28 => 147
	i32 3331531814, ; 259: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 139
	i32 3340431453, ; 260: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 63
	i32 3346324047, ; 261: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 95
	i32 3353484488, ; 262: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 80
	i32 3362522851, ; 263: Xamarin.AndroidX.Core => 0xc86c06e3 => 72
	i32 3366347497, ; 264: Java.Interop => 0xc8a662e9 => 17
	i32 3374999561, ; 265: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 99
	i32 3395150330, ; 266: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 53
	i32 3404865022, ; 267: System.ServiceModel.Internals => 0xcaf21dfe => 154
	i32 3428513518, ; 268: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 19
	i32 3429136800, ; 269: System.Xml => 0xcc6479a0 => 55
	i32 3430777524, ; 270: netstandard => 0xcc7d82b4 => 1
	i32 3434749838, ; 271: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 35
	i32 3441283291, ; 272: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 77
	i32 3476120550, ; 273: Mono.Android => 0xcf3163e6 => 25
	i32 3483112796, ; 274: ImageCircle.Forms.Plugin.dll => 0xcf9c155c => 16
	i32 3486566296, ; 275: System.Transactions => 0xcfd0c798 => 148
	i32 3493954962, ; 276: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 68
	i32 3501239056, ; 277: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 64
	i32 3509114376, ; 278: System.Xml.Linq => 0xd128d608 => 56
	i32 3536029504, ; 279: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 128
	i32 3544827059, ; 280: OneSignalSDK.Xamarin.dll => 0xd349c4b3 => 31
	i32 3567349600, ; 281: System.ComponentModel.Composition.dll => 0xd4a16f60 => 152
	i32 3608519521, ; 282: System.Linq.dll => 0xd715a361 => 161
	i32 3612947231, ; 283: Xamarin.AndroidX.Work.Runtime => 0xd759331f => 115
	i32 3618140916, ; 284: Xamarin.AndroidX.Preference => 0xd7a872f4 => 97
	i32 3623276856, ; 285: PanCardView.Droid.dll => 0xd7f6d138 => 33
	i32 3627220390, ; 286: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 98
	i32 3632359727, ; 287: Xamarin.Forms.Platform => 0xd881692f => 129
	i32 3633644679, ; 288: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 59
	i32 3641597786, ; 289: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 84
	i32 3672681054, ; 290: Mono.Android.dll => 0xdae8aa5e => 25
	i32 3676310014, ; 291: System.Web.Services.dll => 0xdb2009fe => 153
	i32 3682565725, ; 292: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 65
	i32 3684561358, ; 293: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 68
	i32 3689375977, ; 294: System.Drawing.Common => 0xdbe768e9 => 9
	i32 3718780102, ; 295: Xamarin.AndroidX.Annotation => 0xdda814c6 => 58
	i32 3724971120, ; 296: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 94
	i32 3735092365, ; 297: Xamarin.AndroidX.Room.Common.dll => 0xdea0fc8d => 100
	i32 3748608112, ; 298: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 47
	i32 3758932259, ; 299: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 82
	i32 3786282454, ; 300: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 67
	i32 3822602673, ; 301: Xamarin.AndroidX.Media => 0xe3d849b1 => 92
	i32 3829621856, ; 302: System.Numerics.dll => 0xe4436460 => 51
	i32 3841636137, ; 303: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 18
	i32 3885922214, ; 304: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 109
	i32 3896760992, ; 305: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 72
	i32 3920810846, ; 306: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 151
	i32 3921031405, ; 307: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 112
	i32 3931092270, ; 308: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 96
	i32 3934056515, ; 309: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 141
	i32 3945713374, ; 310: System.Data.DataSetExtensions.dll => 0xeb2ecede => 149
	i32 3955647286, ; 311: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 61
	i32 3970018735, ; 312: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 140
	i32 4025784931, ; 313: System.Memory => 0xeff49a63 => 49
	i32 4073602200, ; 314: System.Threading.dll => 0xf2ce3c98 => 159
	i32 4105002889, ; 315: Mono.Security.dll => 0xf4ad5f89 => 163
	i32 4108064750, ; 316: Syncfusion.SfRotator.XForms => 0xf4dc17ee => 42
	i32 4126470640, ; 317: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 19
	i32 4137181845, ; 318: Xamarin.AndroidX.Room.Runtime => 0xf6986295 => 101
	i32 4151237749, ; 319: System.Core => 0xf76edc75 => 46
	i32 4182413190, ; 320: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 89
	i32 4184283386, ; 321: FFImageLoading.Platform.dll => 0xf96718fa => 14
	i32 4213026141, ; 322: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 47
	i32 4233681054, ; 323: OneSignalSDK.Xamarin => 0xfc58d89e => 31
	i32 4260525087, ; 324: System.Buffers => 0xfdf2741f => 45
	i32 4269159614, ; 325: Xamarin.Firebase.Datatransport => 0xfe7634be => 120
	i32 4284549794, ; 326: Xamarin.Firebase.Components => 0xff610aa2 => 119
	i32 4292120959 ; 327: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 89
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [328 x i32] [
	i32 86, i32 136, i32 28, i32 126, i32 41, i32 36, i32 103, i32 117, ; 0..7
	i32 103, i32 145, i32 67, i32 107, i32 65, i32 157, i32 81, i32 8, ; 8..15
	i32 153, i32 70, i32 29, i32 85, i32 79, i32 20, i32 115, i32 57, ; 16..23
	i32 51, i32 30, i32 83, i32 49, i32 40, i32 69, i32 116, i32 4, ; 24..31
	i32 78, i32 27, i32 48, i32 79, i32 32, i32 133, i32 91, i32 133, ; 32..39
	i32 162, i32 131, i32 24, i32 14, i32 148, i32 145, i32 22, i32 139, ; 40..47
	i32 5, i32 0, i32 151, i32 74, i32 112, i32 62, i32 56, i32 142, ; 48..55
	i32 43, i32 38, i32 146, i32 150, i32 23, i32 9, i32 87, i32 98, ; 56..63
	i32 122, i32 8, i32 123, i32 34, i32 136, i32 43, i32 28, i32 146, ; 64..71
	i32 83, i32 15, i32 4, i32 132, i32 26, i32 102, i32 18, i32 61, ; 72..79
	i32 138, i32 129, i32 88, i32 144, i32 48, i32 124, i32 110, i32 95, ; 80..87
	i32 62, i32 106, i32 111, i32 76, i32 161, i32 118, i32 156, i32 154, ; 88..95
	i32 102, i32 2, i32 141, i32 92, i32 71, i32 53, i32 5, i32 41, ; 96..103
	i32 130, i32 150, i32 60, i32 24, i32 20, i32 37, i32 13, i32 121, ; 104..111
	i32 160, i32 6, i32 75, i32 10, i32 90, i32 114, i32 100, i32 73, ; 112..119
	i32 50, i32 160, i32 54, i32 108, i32 134, i32 70, i32 158, i32 143, ; 120..127
	i32 157, i32 3, i32 66, i32 104, i32 26, i32 101, i32 6, i32 107, ; 128..135
	i32 22, i32 46, i32 78, i32 12, i32 44, i32 90, i32 144, i32 134, ; 136..143
	i32 96, i32 21, i32 12, i32 116, i32 130, i32 63, i32 2, i32 137, ; 144..151
	i32 93, i32 125, i32 143, i32 45, i32 88, i32 84, i32 35, i32 54, ; 152..159
	i32 52, i32 42, i32 80, i32 127, i32 132, i32 128, i32 117, i32 23, ; 160..167
	i32 21, i32 162, i32 50, i32 110, i32 91, i32 93, i32 82, i32 105, ; 168..175
	i32 99, i32 58, i32 11, i32 38, i32 158, i32 39, i32 127, i32 97, ; 176..183
	i32 7, i32 30, i32 69, i32 16, i32 1, i32 17, i32 124, i32 125, ; 184..191
	i32 138, i32 149, i32 86, i32 0, i32 111, i32 135, i32 73, i32 123, ; 192..199
	i32 77, i32 85, i32 36, i32 156, i32 108, i32 155, i32 57, i32 60, ; 200..207
	i32 105, i32 126, i32 142, i32 135, i32 113, i32 119, i32 71, i32 55, ; 208..215
	i32 13, i32 113, i32 109, i32 34, i32 39, i32 11, i32 37, i32 122, ; 216..223
	i32 44, i32 3, i32 152, i32 27, i32 121, i32 114, i32 52, i32 59, ; 224..231
	i32 87, i32 76, i32 106, i32 81, i32 15, i32 94, i32 140, i32 118, ; 232..239
	i32 155, i32 32, i32 120, i32 33, i32 10, i32 104, i32 40, i32 131, ; 240..247
	i32 147, i32 75, i32 159, i32 137, i32 163, i32 66, i32 29, i32 64, ; 248..255
	i32 7, i32 74, i32 147, i32 139, i32 63, i32 95, i32 80, i32 72, ; 256..263
	i32 17, i32 99, i32 53, i32 154, i32 19, i32 55, i32 1, i32 35, ; 264..271
	i32 77, i32 25, i32 16, i32 148, i32 68, i32 64, i32 56, i32 128, ; 272..279
	i32 31, i32 152, i32 161, i32 115, i32 97, i32 33, i32 98, i32 129, ; 280..287
	i32 59, i32 84, i32 25, i32 153, i32 65, i32 68, i32 9, i32 58, ; 288..295
	i32 94, i32 100, i32 47, i32 82, i32 67, i32 92, i32 51, i32 18, ; 296..303
	i32 109, i32 72, i32 151, i32 112, i32 96, i32 141, i32 149, i32 61, ; 304..311
	i32 140, i32 49, i32 159, i32 163, i32 42, i32 19, i32 101, i32 46, ; 312..319
	i32 89, i32 14, i32 47, i32 31, i32 45, i32 120, i32 119, i32 89 ; 328..327
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
