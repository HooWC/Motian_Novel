using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DomainModelEntity.Models
{
	public class Novel
	{
		public int NovelId { get; set; }
		public string? Author { get; set; }
		public string? NovelName { get; set; }
		public string? NovelDescription { get; set; }
		public decimal NovelPrice { get; set; }
		public string? NovelImg { get; set; }
		public string? MaleType { get; set; }
		public string? ListTyle { get; set; }
		public decimal Popularity { get; set; }
		public string? PopularityWork { get; set; }
	}
}
