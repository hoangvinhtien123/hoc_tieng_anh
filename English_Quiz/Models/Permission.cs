//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace English_Quiz.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Permission
    {
        public int Id { get; set; }
        public Nullable<int> Role_Id { get; set; }
        public Nullable<int> Function_Id { get; set; }
        public Nullable<bool> Is_View { get; set; }
        public Nullable<bool> Is_Add { get; set; }
        public Nullable<bool> Is_Edit { get; set; }
        public Nullable<bool> Is_Delete { get; set; }
    
        public virtual Function Function { get; set; }
        public virtual Role Role { get; set; }
    }
}