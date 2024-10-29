using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using Motian.Models;
using Newtonsoft.Json;
using System.Threading.Tasks;
using System.Runtime.ConstrainedExecution;
using Xamarin.Essentials;

namespace Motian.AppDbContext
{
	public class UserDB
	{
		const string baseUrl = "http://10.0.2.2:5053/api/";
		HttpClient client = new HttpClient();
		public static string JWBToken = null;
		public static int userID = 0;

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

		public async Task<ObservableCollection<User>> GetAllUser_Api()
		{
			client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", JWBToken);
			client.BaseAddress = new Uri(baseUrl);
			var respose = client.GetAsync("User").Result;

			if (respose.IsSuccessStatusCode)
			{
				string jsonString = respose.Content.ReadAsStringAsync().Result;
				return JsonConvert.DeserializeObject<ObservableCollection<User>>(jsonString);
			}

			return null;
		}

		public ObservableCollection<User> GetAllUser()
		{
			Token_Admin();
			return GetAllUser_Api().Result;
		}

		public ObservableCollection<User> GetAllUser_User()
		{
			Token_User();
			return GetAllUser_Api().Result;
		}


		public async void CreateUser_Api(User user)
		{
			client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", JWBToken);
			client.BaseAddress = new Uri(baseUrl);
			var respose = client.GetAsync("User").Result;

			if (respose.IsSuccessStatusCode)
			{
				var jsonStr = new StringContent(JsonConvert.SerializeObject(user), Encoding.UTF8, "application/json");
				await client.PostAsync(baseUrl + "User", jsonStr);
			}
		}

		public void CreateUser(User user)
		{
			Token_Admin();
			CreateUser_Api(user);
		}




	}
}
