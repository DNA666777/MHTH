using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MHTH.Bot.Commands
{

    using DSharpPlus.CommandsNext;
    using DSharpPlus.CommandsNext.Attributes;

    class CharactersModule : BaseCommandModule
    {
        [Command("creation")]
        public async Task creation(CommandContext ctx)
        {
            
            
            await ctx.RespondAsync("id " + ctx.User.Id);
        }
    }
}
