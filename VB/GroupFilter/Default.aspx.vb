Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.XtraPivotGrid

Namespace GroupFilter
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

			If (Not IsPostBack) AndAlso (Not IsCallback) Then

				' Creates a group and adds two fields to it.
				Dim OrderDateGroup As PivotGridGroup = ASPxPivotGrid1.Groups.Add(fieldOrderDateYear, fieldOrderDateMonth)

				' Locks the PivotGroupFilterValues object by disabling visual updates.
				OrderDateGroup.FilterValues.BeginUpdate()

				' Sets a filter type. 
				' It specifies that the PivotGridControl should display only filter values.
				OrderDateGroup.FilterValues.FilterType = PivotFilterType.Included

				' Creates a filter value and adds it to the PivotGroupFilterValues.Values collection.
				OrderDateGroup.FilterValues.Values.Add(1994)

				' Creates a filter value and adds it to the PivotGroupFilterValues.Values collection.
				' Then creates a child value of the filter value and adds it to the parent value 
				' collection.
				OrderDateGroup.FilterValues.Values.Add(1995).ChildValues.Add(1)

				' Unlocks the PivotGroupFilterValues object.
				OrderDateGroup.FilterValues.EndUpdate()
			End If
		End Sub
	End Class
End Namespace
