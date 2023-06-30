<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128564291/13.2.13%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4808)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# Form Layout for ASP.NET Web Forms - How to edit fields in a data source
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4808/)**
<!-- run online end -->

This example demonstrates how to edit database records in the [ASPxFormLayout](https://docs.devexpress.com/AspNet/14384/components/site-navigation-and-layout/form-layout) control's items.

![Edit Field Values in Form Layout](image.png)

In the example, the Form Layout control is bound to a data sorce record and contains multiple nested [DevExpress editors](https://docs.devexpress.com/AspNet/7897/components/data-editors). The editors allow you to edit the record's field values. Note that the code example dynamically [converts](https://github.com/DevExpress-Examples/how-to-edit-fields-in-a-data-source-using-the-aspxformlayout-control-e4808/blob/13.2.13%2B/CS/Default.aspx.cs#L24) the record's picture from the Ole Object data type to a byte array and then populates the [ASPxBinaryImage](https://docs.devexpress.com/AspNet/11646/components/data-editors/binaryimage) editor.

Modify editor values and click the **Update** button to save changes. The button calls the [SqlDataSource.Update](https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.sqldatasource.update?view=netframework-4.8.1) method and updates the edited record. To navigate between records, use the [ASPxPager](https://docs.devexpress.com/AspNet/8288/components/data-and-image-navigation/pager?p=netframework) control.

> **Note**  
> In this example, the Form Layout control is bound to the Northwind sample database. Refer to the following topic for more information on how to load this database: [Get the sample databases for ADO.NET code samples](https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/sql/linq/downloading-sample-databases).

## Files to Review

* [ImageHelper.cs](./CS/App_Code/ImageHelper.cs) (VB: [ImageHelper.vb](./VB/App_Code/ImageHelper.vb))
* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))

## Documentation

* [Bind Form Layout to Data](https://docs.devexpress.com/AspNet/15633/components/site-navigation-and-layout/form-layout/concepts/binding-to-data)
