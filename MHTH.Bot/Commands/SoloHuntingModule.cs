using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MHTH.Bot.Commands
{
    using System.Runtime.Remoting.Messaging;

    using DSharpPlus.CommandsNext;
    using DSharpPlus.CommandsNext.Attributes;

    using MHTH.Service.Service;

    /// <summary>
    /// The solo hunting module.
    /// </summary>
    public class SoloHuntingModule : BaseCommandModule
    {
        private Dictionary<int, Tuple<float, float, float>> soloHuntData =
            new Dictionary<int, Tuple<float, float, float>>();

        public SoloHuntingModule()
        {
            this.soloHuntData.Add(1,new Tuple<float, float, float>(0,0.25f,0.25f));
            this.soloHuntData.Add(2, new Tuple<float, float, float>(0.125f, 0.5f, 1));
            this.soloHuntData.Add(3, new Tuple<float, float, float>(0.5f, 1, 2));
            this.soloHuntData.Add(4, new Tuple<float, float, float>(1, 2, 2));
            this.soloHuntData.Add(5, new Tuple<float, float, float>(2, 3, 4));
            this.soloHuntData.Add(6, new Tuple<float, float, float>(2, 3, 4));
            this.soloHuntData.Add(7, new Tuple<float, float, float>(3, 4, 4));
            this.soloHuntData.Add(8, new Tuple<float, float, float>(3, 4, 5));
            this.soloHuntData.Add(9, new Tuple<float, float, float>(3, 4, 5));
            this.soloHuntData.Add(10, new Tuple<float, float, float>(4, 5, 6));
            this.soloHuntData.Add(11, new Tuple<float, float, float>(4, 6, 7));
            this.soloHuntData.Add(12, new Tuple<float, float, float>(5, 7, 8));
            this.soloHuntData.Add(13, new Tuple<float, float, float>(5, 7, 8));
            this.soloHuntData.Add(14, new Tuple<float, float, float>(6, 7, 8));
            this.soloHuntData.Add(15, new Tuple<float, float, float>(6, 8, 9));
            this.soloHuntData.Add(16, new Tuple<float, float, float>(7, 8, 10));
            this.soloHuntData.Add(17, new Tuple<float, float, float>(8, 9, 11));
            this.soloHuntData.Add(18, new Tuple<float, float, float>(8, 10, 11));
            this.soloHuntData.Add(19, new Tuple<float, float, float>(8, 11, 12));
            this.soloHuntData.Add(20, new Tuple<float, float, float>(9, 12, 13));
        }

        [Command("information")]
        public async Task information(CommandContext ctx,string monsterName)
        {
            MonsterService MS = new MonsterService();
            var result = MS.GetByName(monsterName);

            await ctx.RespondAsync("Monster CR is "+result.CR);
        }

        [Command("Solohunt")]
        public async Task Solohunt(CommandContext ctx,int characterLevel , string monsterName , int perceptionBonus , int investigationBonus , int lastSkillBonus , string skillUsed)
        {
            if (characterLevel > 20 || characterLevel < 1)
            {
                await ctx.RespondAsync($"```Your character level should between 1 and 20```");
                return;
            }

            MonsterService ms = new MonsterService();

            var monster = ms.GetByName(monsterName);
            if (monster == null)
            {
                await ctx.RespondAsync($"```I don't know this monster sorry```");
                return;
            }

            if (monster.CR > (decimal)this.soloHuntData[characterLevel].Item3)
            {
                await ctx.RespondAsync($"```solohunt is impossible Monster CR {monster.CR} is too high for you```");
                return;
            }

            int difficulty = 0;
            int numberOfSucces = 0;
            Random roller = new Random();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.AppendLine($"```");

            //Calculate difficulty
            if (monster.CR == (decimal)this.soloHuntData[characterLevel].Item3)
            {
                difficulty = 6;
            }
            else if (monster.CR >= (decimal)this.soloHuntData[characterLevel].Item2 && monster.CR < (decimal)this.soloHuntData[characterLevel].Item3)
            {
                difficulty = 3;
            }

            decimal totalDC = monster.CR + difficulty;
            int roll = roller.Next(1, 21) + perceptionBonus;

            stringBuilder.AppendLine($"Perception check : {roll}");
            if (roll  >= totalDC)
            {
                numberOfSucces++;
            }

            roll = roller.Next(1, 21) + investigationBonus;
            stringBuilder.AppendLine($"Investigation check : {roll}");
            if (roll >= totalDC)
            {
                
                numberOfSucces++;
            }

            roll = roller.Next(1, 21) + lastSkillBonus;
            stringBuilder.AppendLine($"{skillUsed} check : {roll}");
            if (roll  >= totalDC)
            {
                
                numberOfSucces++;
            }

            switch (numberOfSucces)
            {
                case 0:
                    stringBuilder.AppendLine($"0 succes you paid 50g for hospital");
                    break;
                case 1:
                    stringBuilder.AppendLine($"1 succes");
                    break;
                case 2:
                    stringBuilder.AppendLine($"2 succes");
                    break;
                case 3:
                    stringBuilder.AppendLine($"3 succes");
                    break;
            }
            stringBuilder.AppendLine($"```");
            await ctx.RespondAsync(stringBuilder.ToString());
        }
    }
}
