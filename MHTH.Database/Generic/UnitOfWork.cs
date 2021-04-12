namespace MHTH.Service.Service
{
    using System;

    using MHTH.Database.Database;

    public class UnitOfWork : IDisposable
    {
        private MHTHEntities context = new MHTHEntities();
        private GenericRepository<Monster> monsterRepository;
        private GenericRepository<QuestTemplate> questRepository;

        public GenericRepository<Monster> MonsterRepository
        {
            get
            {

                if (this.monsterRepository == null)
                {
                    this.monsterRepository = new GenericRepository<Monster>(this.context);
                }
                return this.monsterRepository;
            }
        }
        public GenericRepository<QuestTemplate> QuestRepository
        {
            get
            {

                if (this.questRepository == null)
                {
                    this.questRepository = new GenericRepository<QuestTemplate>(this.context);
                }
                return this.questRepository;
            }
        }
        public void Save()
        {
            this.context.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    this.context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            this.Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}