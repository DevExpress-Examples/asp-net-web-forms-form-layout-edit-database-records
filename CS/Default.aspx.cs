using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    protected void ASPxFormLayout4_LayoutItemDataBound(object sender, DevExpress.Web.LayoutItemDataBoundEventArgs e)
    {
        Control c = e.LayoutItem.GetNestedControl();
        if (c is ASPxBinaryImage)
        {
            ASPxBinaryImage img = (ASPxBinaryImage)c;
            DataView view = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable tb = view.ToTable();
            img.Value = ImageHelper.ConvertOleObjectToByteArray(tb.Rows[0]["Picture"]);
            img.ToolTip = tb.Rows[0]["Description"].ToString();
        }
    }
    protected void ASPxPager1_Init(object sender, EventArgs e)
    {
        DataView view = (DataView)sdRecordsCount.Select(DataSourceSelectArguments.Empty);
        ((ASPxPager)sender).ItemCount = (int)view.Table.Rows[0][0];
    }
    protected void ASPxPager1_PageIndexChanging(object source, PagerPageEventArgs e)
    {
        SqlDataSource1.SelectParameters["ProductID"].DefaultValue = (e.NewPageIndex + 1).ToString();
    }
    protected void UpdButton_Click(object sender, EventArgs e)
    {
        try
        {
            DataView view = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable tb = view.ToTable();
            SqlDataSource1.UpdateParameters["ProductID"].DefaultValue = tb.Rows[0]["ProductID"].ToString();
            SqlDataSource1.Update();
        }
        catch (SqlException ex)
        {
            errorMessageLabel.Text = ex.Message;
            errorMessageLabel.Visible = true;
        }
    }
}