//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DE
{
    using System;
    using System.Collections.Generic;
    
    public partial class Control_Tasks
    {
        public int ID_Row { get; set; }
        public int ID_Employee { get; set; }
        public int ID_Task { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.TimeSpan> TimeBegin { get; set; }
        public Nullable<System.TimeSpan> TimeEnd { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual Task Task { get; set; }
    }
}
