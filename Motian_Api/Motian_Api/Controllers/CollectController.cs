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
	public class CollectController : ControllerBase
	{
		private IRepositoryWrapper _repoWrapper;
		public CollectController(IRepositoryWrapper repoWrapper)
		{
			_repoWrapper = repoWrapper;
		}

		[HttpGet]
		public IEnumerable<Collect> GetAllCollect()
		{
			return _repoWrapper.Collect.FindAll();
		}

		[HttpGet("{id}")]
		public async Task<ActionResult<Collect>> GetCollect(int id)
		{
			var Collect = await _repoWrapper.Collect.FindByCondition(e => e.CollectId == id).FirstOrDefaultAsync();
			if (Collect == null)
			{
				return NotFound();
			}
			return Collect;
		}

		[HttpPut("{id}")]
		public IActionResult PutCollect(int id, Collect Collect)
		{
			if (id != Collect.CollectId)
			{
				return BadRequest();
			}

			_repoWrapper.Collect.Update(Collect);

			try
			{
				_repoWrapper.Save();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!CollectExists(id))
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
		public ActionResult<Collect> PostCollect(Collect Collect)
		{
			_repoWrapper.Collect.Create(Collect);
			_repoWrapper.Save();
			return CreatedAtAction("GetCollect", new { id = Collect.CollectId }, Collect);
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteCollect(int id)
		{
			var Collect = await _repoWrapper.Collect.FindByCondition(e => e.CollectId == id).FirstOrDefaultAsync();
			if (Collect == null)
			{
				return NotFound();
			}
			_repoWrapper.Collect.Delete(Collect);
			_repoWrapper.Save();
			return NoContent();
		}

		private bool CollectExists(int id)
		{
			return _repoWrapper.Collect.FindByCondition(e => e.CollectId == id).Any(e => e.CollectId == id);
		}
	}
}
