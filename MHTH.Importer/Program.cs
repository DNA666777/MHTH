﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MHTH.Importer
{
    using System.IO;

    using MHTH.Database.Database;

    using Microsoft.VisualBasic.FileIO;

    class Program
    {
        static void Main(string[] args)
        {
            UpdateQuestMHGU();
        }

        static void UpdateMonster()
        {

            MHTHEntities mhthEntities = new MHTHEntities();
            mhthEntities.Database.Connection.Open();
            var allLine =File.ReadAllLines("C:\\Users\\kevin\\Desktop\\MonsterList.txt");
            decimal currentCr = 0;
            foreach (var line in allLine)
            {
                if (line.Contains("Challenge"))
                {
                    currentCr = decimal.Parse(line.Split(' ')[1]);
                    continue;
                }
                else
                {
                    Monster newMonster = new Monster();
                    newMonster.CR = currentCr;
                    newMonster.Name = line;
                    mhthEntities.Monsters.Add(newMonster);
                    mhthEntities.SaveChanges();
                }
            }
        }
        static void UpdateQuestMHGU()
        {
            using (TextFieldParser parser = new TextFieldParser(@"C:\Users\kevin\Documents\quests.csv"))
            {
                MHTHEntities mhthEntities = new MHTHEntities();

                parser.TextFieldType = FieldType.Delimited;
                parser.SetDelimiters("|");
                bool firstLine = true;
                Dictionary<string, int> indexOfColumn = new Dictionary<string, int>();
                int i = 1;
                while (!parser.EndOfData)
                {
                    //Processing row
                    string[] fields = parser.ReadFields();
                    if (firstLine)
                    {
                        indexOfColumn.Add("NameEN",fields.ToList().IndexOf("name"));
                        indexOfColumn.Add("NameFR", fields.ToList().IndexOf("name_fr"));
                        indexOfColumn.Add("Goal", fields.ToList().IndexOf("goal"));
                        indexOfColumn.Add("GoalFR", fields.ToList().IndexOf("goal_fr"));
                        indexOfColumn.Add("Type", fields.ToList().IndexOf("goal_type"));
                        indexOfColumn.Add("LoreEN", fields.ToList().IndexOf("flavor"));
                        indexOfColumn.Add("LoreFR", fields.ToList().IndexOf("flavor_fr"));
                        firstLine = false;
                        continue;
                    }

                    QuestTemplate QT = new QuestTemplate();
                    QuestTemplateLore QTL = new QuestTemplateLore();
                    QuestTemplateName QTN = new QuestTemplateName();
                    
                    //Read Data from line
                    
                    var questType = fields[indexOfColumn["Type"]];
                    switch (questType)
                    {
                        case "3":
                            QT.QuestTypeId = QuestType.Gathering;
                            break;
                        case "0":
                        case "1":
                            QT.QuestTypeId = QuestType.Hunting;
                            break;
                        case "2":
                            QT.QuestTypeId = QuestType.Capture;
                            break;
                        default:
                            continue;
                    }

                    int ? targetId = null;
                    if (QT.QuestTypeId == QuestType.Capture || QT.QuestTypeId == QuestType.Hunting)
                    {
                        string target = fields[indexOfColumn["Goal"]];
                        target = target.Replace("Slay an ", "");
                        target = target.Replace("Hunt an ", "");
                        target = target.Replace("Slay a ","");
                        target = target.Replace("Hunt a ", "");
                        target = target.Replace("Capture an ", "");
                        target = target.Replace("Capture a ", "");
                        target = target.Replace(" or repel it", "");
                        
                        targetId = mhthEntities.Monsters.FirstOrDefault(t => t.Name == target)?.Id;
                        if (targetId == null)
                        {
                            continue;
                        }
                    }
                    else
                    {
                        continue;
                    }

                    QTN.EN = fields[indexOfColumn["NameEN"]];
                    QTN.FR = fields[indexOfColumn["NameFR"]];

                    QTL.EN = fields[indexOfColumn["LoreEN"]];
                    QTL.FR = fields[indexOfColumn["LoreFR"]];

                    if (targetId != null) QT.MonsterId = targetId;

                    QT.QuestTemplateClientId = 1;

                    QT.QuestTemplateName = QTN;
                    QT.QuestTemplateLore = QTL;

                    mhthEntities.QuestTemplates.Add(QT);
                    mhthEntities.SaveChanges();
                    Console.Out.WriteLine(i++);
                }
            }
        }
    }
}
