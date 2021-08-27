<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128564291/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4808)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [ImageHelper.cs](./CS/WebSite/App_Code/ImageHelper.cs)
* [Default.aspx](./CS/WebSite/Default.aspx)
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs)
<!-- default file list end -->
# How to edit fields in a data source using the ASPxFormLayout control
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4808/)**
<!-- run online end -->


<p>The ASPxPager control can be used for navigating database records. The edited data is specified via the ASPxFormLayout.DataSourceID property value in markup. The ASPxFormLayout layout items are gathered in the Items collection and are bound to data source fields using the LayoutItem.FieldName property. Each layout item contains a data editor from the DevExpress ASPxEditors library.  This data editor allows editing corresponding field type values.</p><p>A LayoutItem with the "Picture" caption  is populated dynamically because images are stored in columns of the Ole Object type and won't be recognized  by default.</p><p>When the edit form is submitted to the server, the edited record is updated via the SqlDataSource.Update method.</p>

<br/>


