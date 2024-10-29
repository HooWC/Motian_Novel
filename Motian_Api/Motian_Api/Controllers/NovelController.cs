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
	public class NovelController : ControllerBase
	{
		private IRepositoryWrapper _repoWrapper;
		public NovelController(IRepositoryWrapper repoWrapper)
		{
			_repoWrapper = repoWrapper;
		}

		[HttpGet]
		public IEnumerable<Novel> GetAllNovel()
		{
			return _repoWrapper.Novel.FindAll();
		}

		[HttpGet("{id}")]
		public async Task<ActionResult<Novel>> GetNovel(int id)
		{
			var Novel = await _repoWrapper.Novel.FindByCondition(e => e.NovelId == id).FirstOrDefaultAsync();
			if (Novel == null)
			{
				return NotFound();
			}
			return Novel;
		}

		[HttpPut("{id}")]
		public IActionResult PutNovel(int id, Novel Novel)
		{
			if (id != Novel.NovelId)
			{
				return BadRequest();
			}

			_repoWrapper.Novel.Update(Novel);

			try
			{
				_repoWrapper.Save();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!NovelExists(id))
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
		public ActionResult<Novel> PostNovel(Novel Novel)
		{
			_repoWrapper.Novel.Create(Novel);
			_repoWrapper.Save();
			return CreatedAtAction("GetNovel", new { id = Novel.NovelId }, Novel);
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteNovel(int id)
		{
			var Novel = await _repoWrapper.Novel.FindByCondition(e => e.NovelId == id).FirstOrDefaultAsync();
			if (Novel == null)
			{
				return NotFound();
			}
			_repoWrapper.Novel.Delete(Novel);
			_repoWrapper.Save();
			return NoContent();
		}

		private bool NovelExists(int id)
		{
			return _repoWrapper.Novel.FindByCondition(e => e.NovelId == id).Any(e => e.NovelId == id);
		}
	}
}
