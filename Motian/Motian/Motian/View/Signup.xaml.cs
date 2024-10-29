using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Motian.View
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Signup : ContentPage
	{
		public Signup()
		{
			InitializeComponent();
		}

		private void Login(object sender, EventArgs e)
		{
			Navigation.PopAsync();
		}
	}
}