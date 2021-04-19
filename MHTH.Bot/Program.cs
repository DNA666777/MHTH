using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MHTH.Bot
{
    using DSharpPlus;
    using DSharpPlus.CommandsNext;

    using MHTH.Bot.Commands;

    class Program
    {
        static void Main(string[] args)
        {
            MainAsync().GetAwaiter().GetResult();
        }

        static async Task MainAsync()
        {
            var discord = new DiscordClient(new DiscordConfiguration()
                                                {
                                                    Token = "",
                                                    TokenType = TokenType.Bot,
                                                    Intents = DiscordIntents.AllUnprivileged
                                                });

            var commands = discord.UseCommandsNext(new CommandsNextConfiguration()
                                                       {
                                                           StringPrefixes = new[] { "!" }
                                                       });

            commands.RegisterCommands<SoloHuntingModule>();
            commands.RegisterCommands<CharactersModule>();
            await discord.ConnectAsync();
            await Task.Delay(-1);
        }
    }
}
