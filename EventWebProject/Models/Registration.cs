//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EventWebProject.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Registration
    {
        public int Registration_Id { get; set; }
        public string Person { get; set; }
        public string EventName { get; set; }
        public int EventsEvent_Id { get; set; }
    
        public virtual Events Events { get; set; }
    }
}
