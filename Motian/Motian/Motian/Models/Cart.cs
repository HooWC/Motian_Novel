using System;
using System.Collections.Generic;
using System.Text;

namespace Motian.Models
{
	public class Cart
	{
		public int CartId { get; set; }
		public int NovelId { get; set; }
		public int UserId { get; set; }
		public bool Status { get; set; }
		public string CustomersIdNo { get; set; }
	}
}
