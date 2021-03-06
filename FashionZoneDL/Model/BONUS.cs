//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

namespace FashionZone.DataLayer.Model
{
    public partial class BONUS
    {
        #region Primitive Properties
    
        public virtual int ID
        {
            get;
            set;
        }
    
        public virtual Nullable<int> CustomerID
        {
            get { return _customerID; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_customerID != value)
                    {
                        if (CUSTOMER != null && CUSTOMER.ID != value)
                        {
                            CUSTOMER = null;
                        }
                        _customerID = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private Nullable<int> _customerID;
    
        public virtual Nullable<decimal> Value
        {
            get;
            set;
        }
    
        public virtual Nullable<decimal> ValueRemainder
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> DateAssigned
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> Validity
        {
            get;
            set;
        }
    
        public virtual string Description
        {
            get;
            set;
        }
    
        public virtual byte[] Version
        {
            get;
            set;
        }

        #endregion

        #region Navigation Properties
    
        public virtual ICollection<ORDER_BONUS> ORDER_BONUS
        {
            get
            {
                if (_oRDER_BONUS == null)
                {
                    var newCollection = new FixupCollection<ORDER_BONUS>();
                    newCollection.CollectionChanged += FixupORDER_BONUS;
                    _oRDER_BONUS = newCollection;
                }
                return _oRDER_BONUS;
            }
            set
            {
                if (!ReferenceEquals(_oRDER_BONUS, value))
                {
                    var previousValue = _oRDER_BONUS as FixupCollection<ORDER_BONUS>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupORDER_BONUS;
                    }
                    _oRDER_BONUS = value;
                    var newValue = value as FixupCollection<ORDER_BONUS>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupORDER_BONUS;
                    }
                }
            }
        }
        private ICollection<ORDER_BONUS> _oRDER_BONUS;
    
        public virtual CUSTOMER CUSTOMER
        {
            get { return _cUSTOMER; }
            set
            {
                if (!ReferenceEquals(_cUSTOMER, value))
                {
                    var previousValue = _cUSTOMER;
                    _cUSTOMER = value;
                    FixupCUSTOMER(previousValue);
                }
            }
        }
        private CUSTOMER _cUSTOMER;

        #endregion

        #region Association Fixup
    
        private bool _settingFK = false;
    
        private void FixupCUSTOMER(CUSTOMER previousValue)
        {
            if (previousValue != null && previousValue.BONUS.Contains(this))
            {
                previousValue.BONUS.Remove(this);
            }
    
            if (CUSTOMER != null)
            {
                if (!CUSTOMER.BONUS.Contains(this))
                {
                    CUSTOMER.BONUS.Add(this);
                }
                if (CustomerID != CUSTOMER.ID)
                {
                    CustomerID = CUSTOMER.ID;
                }
            }
            else if (!_settingFK)
            {
                CustomerID = null;
            }
        }
    
        private void FixupORDER_BONUS(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (ORDER_BONUS item in e.NewItems)
                {
                    item.BONUS = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (ORDER_BONUS item in e.OldItems)
                {
                    if (ReferenceEquals(item.BONUS, this))
                    {
                        item.BONUS = null;
                    }
                }
            }
        }

        #endregion

    }
}
