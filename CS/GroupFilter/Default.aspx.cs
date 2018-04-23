using System;
using DevExpress.XtraPivotGrid;

namespace GroupFilter {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            if (!IsPostBack && !IsCallback) {

                // Creates a group and adds two fields to it.
                PivotGridGroup OrderDateGroup = ASPxPivotGrid1.Groups.Add(fieldOrderDateYear, 
                    fieldOrderDateMonth);

                // Locks the PivotGroupFilterValues object by disabling visual updates.
                OrderDateGroup.FilterValues.BeginUpdate();

                // Sets a filter type. 
                // It specifies that the PivotGridControl should display only filter values.
                OrderDateGroup.FilterValues.FilterType = PivotFilterType.Included;

                // Creates a filter value and adds it to the PivotGroupFilterValues.Values collection.
                OrderDateGroup.FilterValues.Values.Add(1994);

                // Creates a filter value and adds it to the PivotGroupFilterValues.Values collection.
                // Then creates a child value of the filter value and adds it to the parent value 
                // collection.
                OrderDateGroup.FilterValues.Values.Add(1995).ChildValues.Add(1);

                // Unlocks the PivotGroupFilterValues object.
                OrderDateGroup.FilterValues.EndUpdate();
            }
        }
    }
}
