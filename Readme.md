<!-- default file list -->
*Files to look at*:

* [ImageHelper.cs](./CS/App_Code/ImageHelper.cs) (VB: [ImageHelper.vb](./VB/App_Code/ImageHelper.vb))
* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to edit fields in a data source using the ASPxFormLayout control


<p>The ASPxPager control can be used for navigating database records. The edited data is specified via the ASPxFormLayout.DataSourceID property value in markup. The ASPxFormLayout layout items are gathered in the Items collection and are bound to data source fields using the LayoutItem.FieldName property. Each layout item contains a data editor from the DevExpress ASPxEditors library.  This data editor allows editing corresponding field type values.</p><p>A LayoutItem with the "Picture" caption  is populated dynamically because images are stored in columns of the Ole Object type and won't be recognized  by default.</p><p>When the edit form is submitted to the server, the edited record is updated via the SqlDataSource.Update method.</p>

<br/>


