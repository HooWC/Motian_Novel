using System;
using System.Collections.Generic;
using System.Text;

namespace Motian.Models
{
	public class User
	{
		public int UserId { get; set; }
		public string Name { get; set; }
		public string Email { get; set; }
		public string Avatar { get; set; }
		public string Username { get; set; }
		public string Password { get; set; }
		public bool Active { get; set; }
	}
}
