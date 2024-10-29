using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using Motian.Models;
using Newtonsoft.Json;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace Motian.AppDbContext
{
	public class CartDB
	{
		const string baseUrl = "http://10.0.2.2:5053/api/";
		HttpClient client = new HttpClient();
		public static string JWBToken = null;

		public void Token_Admin()
		{
			Admin ad = new Admin()
			{
				Username = "Hoo",
				Password = "Hoo"
			};

			using (var client = new HttpClient())
			{
				client.BaseAddress = new Uri(baseUrl);
				StringContent content = new StringContent(JsonConvert.SerializeObject(ad), Encoding.UTF8, "application/json");

				var respose = client.PostAsync("AdminToken", content).Result;

				if (respose.IsSuccessStatusCode)
				{
					string token = respose.Content.ReadAsStringAsync().Result;
					if (token != "Invalid credentials")
					{
						JWBToken = token;
					}
				}
			}
		}

		public void Token_User()
		{
			string Username = Preferences.Get("Username", string.Empty);
			string Password = Preferences.Get("Password", string.Empty);

			User user = new User()
			{
				Username = Username,
				Password = Password
			};

			using (var client = new HttpClient())
			{
				client.BaseAddress = new Uri(baseUrl);
				StringContent content = new StringContent(JsonConvert.SerializeObject(user), Encoding.UTF8, "application/json");
				var respose = client.PostAsync("UserToken", content).Result;

				if (respose.IsSuccessStatusCode)
				{
					string token = respose.Content.ReadAsStringAsync().Result;
					if (token != "Invalid credentials")
						JWBToken = token;
				}
			}
		}

		public async Task<ObservableCollection<Cart>> GetAllCart_Api()
		{
			client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", JWBToken);
			client.BaseAddress = new Uri(baseUrl);
			var respose = client.GetAsync("Carts").Result;

			if (respose.IsSuccessStatusCode)
			{
				string jsonString = respose.Content.ReadAsStringAsync().Result;
				return JsonConvert.DeserializeObject<ObservableCollection<Cart>>(jsonString);
			}

			return null;
		}

		public ObservableCollection<Cart> GetAllCart()
		{
			Token_Admin();
			return GetAllCart_Api().Result;
		}

		public ObservableCollection<Cart> GetAllCart_User()
		{
			Token_User();
			return GetAllCart_Api().Result;
		}


		public async void CreateCart_Api(Cart cart)
		{
			client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", JWBToken);
			client.BaseAddress = new Uri(baseUrl);
			var respose = client.GetAsync("Carts").Result;

			if (respose.IsSuccessStatusCode)
			{
				var jsonStr = new StringContent(JsonConvert.SerializeObject(cart), Encoding.UTF8, "application/json");
				await client.PostAsync(baseUrl + "Carts", jsonStr);
			}
		}

		public void CreateCart(Cart cart)
		{
			Token_User();
			CreateCart_Api(cart);
		}

		public async Task EditCart_Api(Cart cart)
		{
			var client2 = new HttpClient();

			// 设置 HttpClient 实例的属性
			client2.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", JWBToken);
			client2.BaseAddress = new Uri(baseUrl);

			var response = await client2.GetAsync("Carts");

			if (response.IsSuccessStatusCode)
			{
				var jsonStr = new StringContent(JsonConvert.SerializeObject(cart), Encoding.UTF8, "application/json");
				await client.PutAsync(baseUrl + "Carts/" + cart.CartId, jsonStr);
			}

		}

		public void EditCart(Cart cart)
		{
			Token_User();
			EditCart_Api(cart);
		}


	}
}
