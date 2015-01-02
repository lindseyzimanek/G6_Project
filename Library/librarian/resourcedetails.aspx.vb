
Partial Class librarian_resource_details
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim itemdeleted As String = e.Values("Title").ToString()

        lbl_deleted.Text = itemdeleted & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=viewresources.aspx")


    End Sub
End Class
