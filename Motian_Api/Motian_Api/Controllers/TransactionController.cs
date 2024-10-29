using Contracts;
using DomainModelEntity.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Motian_Api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	[Authorize]
	public class TransactionController : ControllerBase
	{
		private IRepositoryWrapper _repoWrapper;
		public TransactionController(IRepositoryWrapper repoWrapper)
		{
			_repoWrapper = repoWrapper;
		}

		[HttpGet]
		public IEnumerable<Transaction> GetAllTransaction()
		{
			return _repoWrapper.Transaction.FindAll();
		}

		[HttpGet("{id}")]
		public async Task<ActionResult<Transaction>> GetTransaction(int id)
		{
			var Transaction = await _repoWrapper.Transaction.FindByCondition(e => e.TransactionId == id).FirstOrDefaultAsync();
			if (Transaction == null)
			{
				return NotFound();
			}
			return Transaction;
		}

		[HttpPut("{id}")]
		public IActionResult PutTransaction(int id, Transaction Transaction)
		{
			if (id != Transaction.TransactionId)
			{
				return BadRequest();
			}

			_repoWrapper.Transaction.Update(Transaction);

			try
			{
				_repoWrapper.Save();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!TransactionExists(id))
				{
					return NotFound();
				}
				else
				{
					throw;
				}
			}
			return NoContent();
		}

		[HttpPost]
		public ActionResult<Transaction> PostTransaction(Transaction Transaction)
		{
			_repoWrapper.Transaction.Create(Transaction);
			_repoWrapper.Save();
			return CreatedAtAction("GetTransaction", new { id = Transaction.TransactionId }, Transaction);
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteTransaction(int id)
		{
			var Transaction = await _repoWrapper.Transaction.FindByCondition(e => e.TransactionId == id).FirstOrDefaultAsync();
			if (Transaction == null)
			{
				return NotFound();
			}
			_repoWrapper.Transaction.Delete(Transaction);
			_repoWrapper.Save();
			return NoContent();
		}

		private bool TransactionExists(int id)
		{
			return _repoWrapper.Transaction.FindByCondition(e => e.TransactionId == id).Any(e => e.TransactionId == id);
		}
	}
}
