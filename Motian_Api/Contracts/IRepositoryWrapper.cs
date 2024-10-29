using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contracts
{
	public interface IRepositoryWrapper
	{
		IAdmin Admin { get; }
		ICart Cart { get; }
		INovel Novel { get; }
		IUser User { get; }
		ICollect Collect { get; }
		ITransaction Transaction { get; }
		void Save();
	}
}
