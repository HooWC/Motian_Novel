using System;
using System.Collections.Generic;
using System.Text;

namespace Motian.Models
{
	public class Transaction
	{
		public int TransactionId { get; set; }
		public int UserId { get; set; }
		public string CartId { get; set; }
		public string Date { get; set; }
		public bool Status { get; set; }
	}
}
