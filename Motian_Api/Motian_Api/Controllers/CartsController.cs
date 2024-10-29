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
	public class CartsController : ControllerBase
	{
		private IRepositoryWrapper _repoWrapper;
		public CartsController(IRepositoryWrapper repoWrapper)
		{
			_repoWrapper = repoWrapper;
		}

		[HttpGet]
		public IEnumerable<Cart> GetAllCart()
		{
			return _repoWrapper.Cart.FindAll();
		}

		[HttpGet("{id}")]
		public async Task<ActionResult<Cart>> GetCart(int id)
		{
			var Cart = await _repoWrapper.Cart.FindByCondition(e => e.CartId == id).FirstOrDefaultAsync();
			if (Cart == null)
			{
				return NotFound();
			}
			return Cart;
		}

		[HttpPut("{id}")]
		public IActionResult PutCart(int id, Cart Cart)
		{
			if (id != Cart.CartId)
			{
				return BadRequest();
			}

			_repoWrapper.Cart.Update(Cart);

			try
			{
				_repoWrapper.Save();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!CartExists(id))
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
		public ActionResult<Cart> PostCart(Cart Cart)
		{
			_repoWrapper.Cart.Create(Cart);
			_repoWrapper.Save();
			return CreatedAtAction("GetCart", new { id = Cart.CartId }, Cart);
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteCart(int id)
		{
			var Cart = await _repoWrapper.Cart.FindByCondition(e => e.CartId == id).FirstOrDefaultAsync();
			if (Cart == null)
			{
				return NotFound();
			}
			_repoWrapper.Cart.Delete(Cart);
			_repoWrapper.Save();
			return NoContent();
		}

		private bool CartExists(int id)
		{
			return _repoWrapper.Cart.FindByCondition(e => e.CartId == id).Any(e => e.CartId == id);
		}
	}
}
