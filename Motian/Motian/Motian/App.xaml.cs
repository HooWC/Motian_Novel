using System;
using System.Collections.Generic;
using Motian.View;
using OneSignalSDK.Xamarin;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Motian
{
	public partial class App : Application
	{
		public App()
		{
			Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("Mgo+DSMBaFt+QHJqVEZrXVNbdV5dVGpAd0N3RGlcdlR1fUUmHVdTRHRcQltiQH9SdERgXHZccHM=;Mgo+DSMBPh8sVXJ1S0R+XVFPd11dXmJWd1p/THNYflR1fV9DaUwxOX1dQl9gSXhSf0RiW35ddX1WQ2c=;ORg4AjUWIQA/Gnt2VFhiQlBEfV5AQmBIYVp/TGpJfl96cVxMZVVBJAtUQF1hSn5Vd0xiWH1fc3FcQ2Bb;MjQ2NTQ0NEAzMjMxMmUzMDJlMzBRemQ1d0Jqd3VHcXhsYmVJekxrTG5KajQ5UGMwKzZHa1J4U3gvWmxKdmdrPQ==;MjQ2NTQ0NUAzMjMxMmUzMDJlMzBiWlgzaHJLRUVGSklSMWcyQ3p1REoveUwvNnRvYkRvOFNRcDN6QUNMVHpVPQ==;NRAiBiAaIQQuGjN/V0d+Xk9FdlRDX3xKf0x/TGpQb19xflBPallYVBYiSV9jS31TcERqWH5ccXdTRmJfVg==;MjQ2NTQ0N0AzMjMxMmUzMDJlMzBveXpFcDZYY0d2ZG9MSHhwenVhN1IxUHU2cHcwZkRRclpxLyswL0YvalE0PQ==;MjQ2NTQ0OEAzMjMxMmUzMDJlMzBURXRpdHVOV3RKUERmQkVZNzRqZFJpNzMwcEltRWZtOElwQ2xzekx4TDEwPQ==;Mgo+DSMBMAY9C3t2VFhiQlBEfV5AQmBIYVp/TGpJfl96cVxMZVVBJAtUQF1hSn5Vd0xiWH1fc3JVT2Vb;MjQ2NTQ1MEAzMjMxMmUzMDJlMzBoQzBHYWNuS0RwZHpxOTRQYlN3amlhem0zbFg3V2c2UkQvWEFKcGxXNlRzPQ==;MjQ2NTQ1MUAzMjMxMmUzMDJlMzBvQ2lWU1JuV3ZGQ1Z0RTA1TDZkck5IWXc2QkUrSWRISmt3WXB3NkF4M3ZNPQ==;MjQ2NTQ1MkAzMjMxMmUzMDJlMzBveXpFcDZYY0d2ZG9MSHhwenVhN1IxUHU2cHcwZkRRclpxLyswL0YvalE0PQ==");
			InitializeComponent();
			MainPage = new NavigationPage(new Login_View());
			//MainPage = new NavigationPage(new Cart_View());

			OneSignal.Default.Initialize("5a0ab962-2942-4ac5-ae56-f75363b350f6");
			OneSignal.Default.PromptForPushNotificationsWithUserResponse();
		}

		protected override void OnStart()
		{
		}

		protected override void OnSleep()
		{
		}

		protected override void OnResume()
		{
		}
	}
}
