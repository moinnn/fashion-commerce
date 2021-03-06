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
    public partial class PRODUCT
    {
        #region Primitive Properties
    
        public virtual int ID
        {
            get;
            set;
        }
    
        public virtual string Name
        {
            get;
            set;
        }
    
        public virtual string Description
        {
            get;
            set;
        }
    
        public virtual decimal OurPrice
        {
            get;
            set;
        }
    
        public virtual decimal OriginalPrice
        {
            get;
            set;
        }
    
        public virtual Nullable<int> Discount
        {
            get;
            private set;
        }
    
        public virtual Nullable<bool> Approved
        {
            get;
            set;
        }
    
        public virtual Nullable<int> ApprovedBy
        {
            get { return _approvedBy; }
            set
            {
                try
                {
                    _settingFK = true;
                    if (_approvedBy != value)
                    {
                        if (USER != null && USER.ID != value)
                        {
                            USER = null;
                        }
                        _approvedBy = value;
                    }
                }
                finally
                {
                    _settingFK = false;
                }
            }
        }
        private Nullable<int> _approvedBy;
    
        public virtual Nullable<bool> Closed
        {
            get;
            set;
        }
    
        public virtual string Code
        {
            get;
            set;
        }
    
        public virtual Nullable<decimal> SupplierPrice
        {
            get;
            set;
        }

        #endregion

        #region Navigation Properties
    
        public virtual ICollection<PROD_IMAGES> PROD_IMAGES
        {
            get
            {
                if (_pROD_IMAGES == null)
                {
                    var newCollection = new FixupCollection<PROD_IMAGES>();
                    newCollection.CollectionChanged += FixupPROD_IMAGES;
                    _pROD_IMAGES = newCollection;
                }
                return _pROD_IMAGES;
            }
            set
            {
                if (!ReferenceEquals(_pROD_IMAGES, value))
                {
                    var previousValue = _pROD_IMAGES as FixupCollection<PROD_IMAGES>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupPROD_IMAGES;
                    }
                    _pROD_IMAGES = value;
                    var newValue = value as FixupCollection<PROD_IMAGES>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupPROD_IMAGES;
                    }
                }
            }
        }
        private ICollection<PROD_IMAGES> _pROD_IMAGES;
    
        public virtual ICollection<PRODUCT_ATTRIBUTE> PRODUCT_ATTRIBUTE
        {
            get
            {
                if (_pRODUCT_ATTRIBUTE == null)
                {
                    var newCollection = new FixupCollection<PRODUCT_ATTRIBUTE>();
                    newCollection.CollectionChanged += FixupPRODUCT_ATTRIBUTE;
                    _pRODUCT_ATTRIBUTE = newCollection;
                }
                return _pRODUCT_ATTRIBUTE;
            }
            set
            {
                if (!ReferenceEquals(_pRODUCT_ATTRIBUTE, value))
                {
                    var previousValue = _pRODUCT_ATTRIBUTE as FixupCollection<PRODUCT_ATTRIBUTE>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupPRODUCT_ATTRIBUTE;
                    }
                    _pRODUCT_ATTRIBUTE = value;
                    var newValue = value as FixupCollection<PRODUCT_ATTRIBUTE>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupPRODUCT_ATTRIBUTE;
                    }
                }
            }
        }
        private ICollection<PRODUCT_ATTRIBUTE> _pRODUCT_ATTRIBUTE;
    
        public virtual USER USER
        {
            get { return _uSER; }
            set
            {
                if (!ReferenceEquals(_uSER, value))
                {
                    var previousValue = _uSER;
                    _uSER = value;
                    FixupUSER(previousValue);
                }
            }
        }
        private USER _uSER;
    
        public virtual ICollection<CATEGORY> CATEGORY
        {
            get
            {
                if (_cATEGORY == null)
                {
                    var newCollection = new FixupCollection<CATEGORY>();
                    newCollection.CollectionChanged += FixupCATEGORY;
                    _cATEGORY = newCollection;
                }
                return _cATEGORY;
            }
            set
            {
                if (!ReferenceEquals(_cATEGORY, value))
                {
                    var previousValue = _cATEGORY as FixupCollection<CATEGORY>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupCATEGORY;
                    }
                    _cATEGORY = value;
                    var newValue = value as FixupCollection<CATEGORY>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupCATEGORY;
                    }
                }
            }
        }
        private ICollection<CATEGORY> _cATEGORY;

        #endregion

        #region Association Fixup
    
        private bool _settingFK = false;
    
        private void FixupUSER(USER previousValue)
        {
            if (previousValue != null && previousValue.PRODUCT.Contains(this))
            {
                previousValue.PRODUCT.Remove(this);
            }
    
            if (USER != null)
            {
                if (!USER.PRODUCT.Contains(this))
                {
                    USER.PRODUCT.Add(this);
                }
                if (ApprovedBy != USER.ID)
                {
                    ApprovedBy = USER.ID;
                }
            }
            else if (!_settingFK)
            {
                ApprovedBy = null;
            }
        }
    
        private void FixupPROD_IMAGES(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (PROD_IMAGES item in e.NewItems)
                {
                    item.ProductID = ID;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (PROD_IMAGES item in e.OldItems)
                {
                }
            }
        }
    
        private void FixupPRODUCT_ATTRIBUTE(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (PRODUCT_ATTRIBUTE item in e.NewItems)
                {
                    item.PRODUCT = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (PRODUCT_ATTRIBUTE item in e.OldItems)
                {
                    if (ReferenceEquals(item.PRODUCT, this))
                    {
                        item.PRODUCT = null;
                    }
                }
            }
        }
    
        private void FixupCATEGORY(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (CATEGORY item in e.NewItems)
                {
                    if (!item.PRODUCT.Contains(this))
                    {
                        item.PRODUCT.Add(this);
                    }
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (CATEGORY item in e.OldItems)
                {
                    if (item.PRODUCT.Contains(this))
                    {
                        item.PRODUCT.Remove(this);
                    }
                }
            }
        }

        #endregion

    }
}
