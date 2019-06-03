namespace MeetUpEvent.DAL
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using MeetUpEvent.Entity;

    public partial class DataContext : DbContext
    {
        public DataContext()
            : base("name=DataContext")
        {
        }

        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<Message> Message { get; set; }
        public virtual DbSet<Organization> Organization { get; set; }
        public virtual DbSet<OrganizationAndPerson> OrganizationAndPerson { get; set; }
        public virtual DbSet<Person> Person { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>()
                .HasMany(e => e.Organization)
                .WithRequired(e => e.Category)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Organization>()
                .Property(e => e.City)
                .IsFixedLength();

            modelBuilder.Entity<Organization>()
                .HasMany(e => e.OrganizationAndPerson)
                .WithRequired(e => e.Organization)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Person>()
                .HasMany(e => e.Message)
                .WithRequired(e => e.Person)
                .HasForeignKey(e => e.FromID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Person>()
                .HasMany(e => e.Message1)
                .WithRequired(e => e.Person1)
                .HasForeignKey(e => e.ToID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Person>()
                .HasMany(e => e.Organization)
                .WithRequired(e => e.Person)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Person>()
                .HasMany(e => e.OrganizationAndPerson)
                .WithRequired(e => e.Person)
                .WillCascadeOnDelete(false);
        }
    }
}
