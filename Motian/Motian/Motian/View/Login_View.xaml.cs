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
	public partial class Login_View : ContentPage
	{
		public Login_View()
		{
			InitializeComponent();
		}

		private void SignUp(object sender, EventArgs e)
		{
			Navigation.PushAsync(new Signup());
		}

	}
}