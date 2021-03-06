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
    public partial class SHOPPING_CART
    {
        #region Primitive Properties
    
        public virtual string ID
        {
            get;
            set;
        }
    
        public virtual int Quantity
        {
            get;
            set;
        }
    
        public virtual System.DateTime DateAdded
        {
            get;
            set;
        }
    
        public virtual int ProdAttrID
        {
            get { return _prodAttrID; }
            set
            {
                if (_prodAttrID != value)
                {
                    if (PRODUCT_ATTRIBUTE != null && PRODUCT_ATTRIBUTE.ID != value)
                    {
                        PRODUCT_ATTRIBUTE = null;
                    }
                    _prodAttrID = value;
                }
            }
        }
        private int _prodAttrID;
    
        public virtual int CustomerID
        {
            get { return _customerID; }
            set
            {
                if (_customerID != value)
                {
                    if (CUSTOMER != null && CUSTOMER.ID != value)
                    {
                        CUSTOMER = null;
                    }
                    _customerID = value;
                }
            }
        }
        private int _customerID;
    
        public virtual int CampaignID
        {
            get { return _campaignID; }
            set
            {
                if (_campaignID != value)
                {
                    if (CAMPAIGN != null && CAMPAIGN.ID != value)
                    {
                        CAMPAIGN = null;
                    }
                    _campaignID = value;
                }
            }
        }
        private int _campaignID;
    
        public virtual Nullable<bool> FrontEnd
        {
            get;
            set;
        }

        #endregion

        #region Navigation Properties
    
        public virtual CAMPAIGN CAMPAIGN
        {
            get { return _cAMPAIGN; }
            set
            {
                if (!ReferenceEquals(_cAMPAIGN, value))
                {
                    var previousValue = _cAMPAIGN;
                    _cAMPAIGN = value;
                    FixupCAMPAIGN(previousValue);
                }
            }
        }
        private CAMPAIGN _cAMPAIGN;
    
        public virtual PRODUCT_ATTRIBUTE PRODUCT_ATTRIBUTE
        {
            get { return _pRODUCT_ATTRIBUTE; }
            set
            {
                if (!ReferenceEquals(_pRODUCT_ATTRIBUTE, value))
                {
                    var previousValue = _pRODUCT_ATTRIBUTE;
                    _pRODUCT_ATTRIBUTE = value;
                    FixupPRODUCT_ATTRIBUTE(previousValue);
                }
            }
        }
        private PRODUCT_ATTRIBUTE _pRODUCT_ATTRIBUTE;
    
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
    
        private void FixupCAMPAIGN(CAMPAIGN previousValue)
        {
            if (previousValue != null && previousValue.SHOPPING_CART.Contains(this))
            {
                previousValue.SHOPPING_CART.Remove(this);
            }
    
            if (CAMPAIGN != null)
            {
                if (!CAMPAIGN.SHOPPING_CART.Contains(this))
                {
                    CAMPAIGN.SHOPPING_CART.Add(this);
                }
                if (CampaignID != CAMPAIGN.ID)
                {
                    CampaignID = CAMPAIGN.ID;
                }
            }
        }
    
        private void FixupPRODUCT_ATTRIBUTE(PRODUCT_ATTRIBUTE previousValue)
        {
            if (previousValue != null && previousValue.SHOPPING_CART.Contains(this))
            {
                previousValue.SHOPPING_CART.Remove(this);
            }
    
            if (PRODUCT_ATTRIBUTE != null)
            {
                if (!PRODUCT_ATTRIBUTE.SHOPPING_CART.Contains(this))
                {
                    PRODUCT_ATTRIBUTE.SHOPPING_CART.Add(this);
                }
                if (ProdAttrID != PRODUCT_ATTRIBUTE.ID)
                {
                    ProdAttrID = PRODUCT_ATTRIBUTE.ID;
                }
            }
        }
    
        private void FixupCUSTOMER(CUSTOMER previousValue)
        {
            if (previousValue != null && previousValue.SHOPPING_CART.Contains(this))
            {
                previousValue.SHOPPING_CART.Remove(this);
            }
    
            if (CUSTOMER != null)
            {
                if (!CUSTOMER.SHOPPING_CART.Contains(this))
                {
                    CUSTOMER.SHOPPING_CART.Add(this);
                }
                if (CustomerID != CUSTOMER.ID)
                {
                    CustomerID = CUSTOMER.ID;
                }
            }
        }

        #endregion

    }
}
