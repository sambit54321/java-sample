//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace e_auction.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class BidMethodMaster
    {
        public BidMethodMaster()
        {
            this.TenderItems = new HashSet<TenderItem>();
        }
    
        public int Methodid { get; set; }
        public string MethodName { get; set; }
    
        public virtual ICollection<TenderItem> TenderItems { get; set; }
    }
}
