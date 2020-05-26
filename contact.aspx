<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs"
Inherits="contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="img/logo.ico" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
      integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/style.css" />
    <title>Full-Stack Dreams | Contact</title>
  </head>
  <body>
    <!-- START HERE -->
    <!-- Start navbar -->
    <nav
      class="navbar navbar-expand-sm bg-primary navbar-light py-4"
      id="main-nav"
    >
      <div class="container">
        <a href="home.html" class="navbar-brand">
          <img src="img/logo.png" width="50" height="50" alt="" />
          <h3 class="d-inline align-middle">JH.dev</h3>
        </a>
        <button
          class="navbar-toggler"
          data-toggle="collapse"
          data-target="#navbarCollapse"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a href="index.html" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
              <a href="resume.html" class="nav-link">Resume</a>
            </li>
            <li class="nav-item">
              <a href="portfolio.html" class="nav-link">Portfolio</a>
            </li>
            <li class="nav-item">
              <a href="about.html" class="nav-link">About</a>
            </li>
            <li class="nav-item">
              <a href="contact.aspx" class="nav-link active">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End navbar -->
    <!-- Start Contact Form Section -->
    <header id="contact-section">
      <div class="container">
        <div class="row">
          <div class="col text-center py-5">
            <div class="card bg-info my-5">
              <div class="card-header">
                <h1 class="card-title text-white">Contact Me</h1>
                <span class="text-white mt-0"
                  >Response time is usually between 1-3 business days.</span
                >
              </div>
              <div class="card-body">
                <form id="contactForm" runat="server" class="my-2">
                  <asp:RequiredFieldValidator
                    ID="nameValidator"
                    runat="server"
                    ErrorMessage="Name is required"
                    ControlToValidate="name"
                    Display="Dynamic"
                    class="text-danger h4 float-right"
                  >
                  </asp:RequiredFieldValidator>
                  <div class="row ml-5 pl-1">
                    <h4 class="text-white">Name</h4>
                  </div>
                  <div id="fgName" runat="server" class="form-group">
                    <div class="input-group input-group-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text bg-success text-white">
                          <i class="fas fa-user"></i>
                        </span>
                      </div>
                      <asp:TextBox
                        id="name"
                        class="form-control bg-light"
                        runat="server"
                      >
                      </asp:TextBox>
                    </div>
                  </div>
                  <asp:RequiredFieldValidator
                    ID="emailValidator"
                    runat="server"
                    ErrorMessage="Email is required"
                    ControlToValidate="email"
                    Display="Dynamic"
                    class="text-danger h4 float-right"
                  >
                  </asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator
                    ID="emailRegExValidator"
                    runat="server"
                    ErrorMessage="Please enter a valid email"
                    ControlToValidate="email"
                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                    Display="Dynamic"
                    class="text-danger h4 float-right"
                  ></asp:RegularExpressionValidator>
                  <div class="row ml-5 pl-1">
                    <h4 class="text-white">Your Email</h4>
                  </div>
                  <div id="fgEmail" runat="server" class="form-group">
                    <div class="input-group input-group-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text bg-success text-white">
                          <i class="fas fa-envelope"></i>
                        </span>
                      </div>
                      <asp:TextBox
                        id="email"
                        class="form-control bg-light"
                        runat="server"
                      >
                      </asp:TextBox>
                    </div>
                  </div>
                  <asp:RequiredFieldValidator
                    ID="subjectValidator"
                    runat="server"
                    ErrorMessage="Subject is required"
                    ControlToValidate="subject"
                    Display="Dynamic"
                    class="text-danger h4 float-right"
                  >
                  </asp:RequiredFieldValidator>
                  <div class="row ml-5 pl-1">
                    <h4 class="text-white">Subject</h4>
                  </div>
                  <div id="fgSubject" runat="server" class="form-group">
                    <div class="input-group input-group-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text bg-success text-white">
                          <i class="fas fa-envelope-open-text"></i>
                        </span>
                      </div>
                      <asp:TextBox
                        ID="subject"
                        class="form-control bg-light"
                        runat="server"
                      ></asp:TextBox>
                    </div>
                  </div>
                  <asp:RequiredFieldValidator
                    ID="messageValidator"
                    runat="server"
                    ErrorMessage="Message is required"
                    ControlToValidate="message"
                    Display="Dynamic"
                    class="text-danger h4 float-right"
                  >
                  </asp:RequiredFieldValidator>
                  <div class="row ml-5 pl-1">
                    <h4 class="text-white">Message</h4>
                  </div>
                  <div id="fgMessage" runat="server" class="form-group">
                    <div class="input-group input-group-lg">
                      <div class="input-group-prepend">
                        <span class="input-group-text bg-success text-white">
                          <i class="fas fa-pencil-alt"></i>
                        </span>
                      </div>
                      <asp:TextBox
                        ID="message"
                        runat="server"
                        class="form-control bg-light"
                        Rows="5"
                        TextMode="MultiLine"
                      >
                      </asp:TextBox>
                    </div>
                  </div>
                  <asp:Button
                    ID="submitButton"
                    runat="server"
                    text="Submit"
                    class="btn btn-danger btn-block btn-lg text-white"
                    OnClick="submitButton_Click"
                  />
                </form>
                <h3
                  id="contactLabel"
                  runat="server"
                  Visible="False"
                  class="display-4 text-white mb-3"
                ></h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- End Home Section -->

    <!-- Start Footer -->
    <footer id="main-footer" class="bg-primary">
      <div class="container">
        <div class="row">
          <div class="col text-center py-4">
            <h3>JH.Dev</h3>
            <p>Copyright &copy;<span id="year"></span></p>
          </div>
        </div>
      </div>
    </footer>
    <!-- End Footer -->
    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
      integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
      crossorigin="anonymous"
    ></script>
    <script>
      // Get the current year for the copyright
      $('#year').text(new Date().getFullYear());

      // Create image hover effect
      function hover(element) {
        element.setAttribute('src', 'img/MyNameIs-Alt.png');
      }

      function unhover(element) {
        element.setAttribute('src', 'img/MyNameIs.png');
      }
    </script>
  </body>
</html>
