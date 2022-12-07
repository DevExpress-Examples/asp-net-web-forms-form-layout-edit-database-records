Imports DevExpress.Web
Imports System
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Linq
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ASPxFormLayout4_LayoutItemDataBound(ByVal sender As Object, ByVal e As DevExpress.Web.LayoutItemDataBoundEventArgs)
        Dim c As Control = e.LayoutItem.GetNestedControl()
        If TypeOf c Is ASPxBinaryImage Then
            Dim img As ASPxBinaryImage = CType(c, ASPxBinaryImage)
            Dim view As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
            Dim tb As DataTable = view.ToTable()
            img.Value = ImageHelper.ConvertOleObjectToByteArray(tb.Rows(0)("Picture"))
            img.ToolTip = tb.Rows(0)("Description").ToString()
        End If
    End Sub
    Protected Sub ASPxPager1_Init(ByVal sender As Object, ByVal e As EventArgs)
        Dim view As DataView = DirectCast(sdRecordsCount.Select(DataSourceSelectArguments.Empty), DataView)
        DirectCast(sender, ASPxPager).ItemCount = CInt((view.Table.Rows(0)(0)))
    End Sub
    Protected Sub ASPxPager1_PageIndexChanging(ByVal source As Object, ByVal e As PagerPageEventArgs)
        SqlDataSource1.SelectParameters("ProductID").DefaultValue = (e.NewPageIndex + 1).ToString()
    End Sub
    Protected Sub UpdButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        Try
            Dim view As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
            Dim tb As DataTable = view.ToTable()
            SqlDataSource1.UpdateParameters("ProductID").DefaultValue = tb.Rows(0)("ProductID").ToString()
            SqlDataSource1.Update()
        Catch ex As SqlException
            errorMessageLabel.Text = ex.Message
            errorMessageLabel.Visible = True
        End Try
    End Sub
End Class