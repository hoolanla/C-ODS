<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmApplicationApprove.aspx.cs" Inherits="ODS.PROJECT.FrmApplicationApprove" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

<%--        <script type="text/javascript">
            document.write(screen.width + 'x' + screen.height);

</script>--%>

               <script type='text/javascript'>
                   function getMouseXY(e) {
                       //document.getElementById('x').value = e.pageX || event.clientX;
                       //document.getElementById('y').value = e.pageY || event.clientY;

                       //var d = document.getElementById('signature');
                       //d.style.position = "absolute";
                       //d.style.left = e.pageX - 220 + 'px';
                       //d.style.top = e.pageY - 20 + 'px';

                       var dv = document.getElementById('signature1');
                       dv.hidden = false;

                       var d = document.getElementById('signature');
                       d.style.position = "absolute";
                       d.style.left = e.pageX - 0 + 'px' ;
                       d.style.top = e.pageY - 0 + 'px';

                       var sizeScr = screen.width + 'x' + screen.height;
                       var l = e.pageX ;
                       var t = e.pageY ;

                       switch (sizeScr) {
                           case '1280x800':
                               l = e.pageX - 66;
                               t = e.pageY - 95;
                               break;
                           case '1280x960':
                               l = e.pageX - 66;
                               t = e.pageY - 95;
                               break;
                           case '1280x1024':
                               l = e.pageX - 66;
                               t = e.pageY - 97;
                               break;
                           case '1366x768':
                               l = e.pageX - 108;
                               t = e.pageY - 160;
                               break;
                           case '1400x1050':
                               l = e.pageX - 130;
                               t = e.pageY - 182;
                               break;
                           case '1440x900':
                               l = e.pageX - 157;
                               t = e.pageY - 200;
                               break;
                           case '1600x1200':
                               l = e.pageX - 250;
                               t = e.pageY - 299;
                               break;
                           case '1680x1050':
                               l = e.pageX - 268;
                               t = e.pageY - 348;
                               break;
                           case '1920x1080':
                               l = e.pageX - 398;
                               t = e.pageY - 504;
                               break;
                           case '1920x1200':
                               l = e.pageX - 398;
                               t = e.pageY - 504;
                               break;
                           case '1920x1440':
                               l = e.pageX - 398;
                               t = e.pageY - 504;
                               break;
                       }

                       var dL = document.getElementById('dLeft');
                       var dT = document.getElementById('dTop');
                       //dL.value="'" + d.style.left - 428 + "'";
                       //dT.value="'" + d.style.top - 490 + "'";
                       document.getElementById('<%= dLeft.ClientID %>').value = "'" + l + "px'";
                       document.getElementById('<%= dTop.ClientID %>').value = "'" + t + "px'";
                       return true;
                   }
</script>

    <style>
p.serif {
    font-family:Tahoma;
}

p.sansserif {
    font-family:"PSL Chamnarn Pro";
}
    p.form-pdf {
        font-family:"PSL Chamnarn Pro";
        /*font-size: 13px;*/
        color: #333;
        width: 137px;
        position:absolute;
        top:123px;
        left:123px;
    }

     img {
      width: 100%;
      height: auto;
   }

    p.form-pdf-checkbox {
        font-family: "PSL Chamnarn Pro";
        font-size: 18px;
        color: #333;
        font: bold 12px/30px Tahoma;
       
    }
      p.form-pdf-checkbox {
        font-family:"PSL Chamnarn Pro";
        font-size: 20px;
        color: #333;
        position:absolute;
       
    }
      .container{
text-align: center;

      }



   @page {
        size: A4;
        margin: 0;
    }
   @media print {
        html, body {
            width: 210mm;
            height: 297mm;
        }
    }

      row { margin-right: 0px!important;}
      .wrapper {
    background: none!important;
}

      body {
  background-color:#ffffff;

}

</style>

<div  id="signature1" hidden='hidden'><p id="signature" class="form-pdf"><img src="Images/<%=signature_file.Value %>" width ="160" height="50" /></p></div>
 <div class="container container-table" style="background-color: #ffffff" >


 <div class="row vertical-center-row"  >
       <img   src="PdfToImageApprove/<%=doc_id.Value %>.PNG"   alt="background image" onmousedown='return  getMouseXY(event);' id="log"  />
</div>

<%--      <div class="row vertical-center-row"  >
       <img  src="ImagesDoc/convertToZoom1.PNG"  alt="background image" onmousedown='return  getMouseXY(event);' id="log"  />
</div>
          <div class="row vertical-center-row"  >
       <img  src="ImagesDoc/convertToZoom1.PNG"  alt="background image" onmousedown='return  getMouseXY(event);' id="log"  />
</div>--%>


</div>
  <div class="row vertical-center-row">
      <div class="text-center col-md-1 col-md-offset-1" >
              <asp:Button ID="btnSubmit" runat="server" Text="Go" OnClick="btnSubmit_Click" />
 </div>
       </div>
   </div>
        <asp:HiddenField ID="dLeft" runat="server"  />
        <asp:HiddenField ID="dTop" runat="server" />
        <asp:HiddenField ID="doc_id" runat="server"  />
        <asp:HiddenField ID="signature_file" runat="server" />
        <asp:HiddenField ID="email" runat="server" />
    </form>

 <%--           <script>
                $(document).on("mousemove", function (event) {
                    $("#log").text("pageX: " + event.pageX + ", pageY: " + event.pageY);
                });
</script>--%>
</body>
</html>
