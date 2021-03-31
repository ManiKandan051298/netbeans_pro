

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
     String email=(String)session.getAttribute("email");
     String name=(String)session.getAttribute("name");
//    String user=${msg_err};
    String html=" <nav class='navbar navbar-top navbar-expand-md navbar-dark bg-primary'>"+
        "<div class='container-fluid'>"+
         "<a class='navbar-brand text-white'>"+
                "<img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROpOeObfCY7uDG2q4Dqum7wQPVxrJ3KPFDSA&usqp=CAU' width='30' height='30' class='d-inline-block align-top' > PURPLE BOOKS  welcome"+ 
          " "+email+" "+
        
            "</a>"+

            "<ul class='navbar-nav align-items-center d-none d-md-flex'>"+
                "<li class='nav-item active'>"+
                    "<a class='nav-link' href='index.jsp'><i class='fa fa-home mx-2' aria-hidden='true'></i>Home <span class='sr-only'>(current)</span></a>"+
            "</li>"+
                "<li>"+

                   "<div class='dropdown'>"+
                       "<button class='btn btn-primary ' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>"+
                "<i class='fa fa-caret-square-o-down mx-2' aria-hidden='true'></i> Category     </button>"+
                        "<div class='dropdown-menu' aria-labelledby='dropdownMenuButton'>"+
                      
                            "<a class='dropdown-item' href='novel.jsp'>Novel</a>"+
                            "<a class='dropdown-item' href='selfdevelopment.jsp'>Self Development</a>"+
                            "<a class='dropdown-item' href='engineering.jsp'>Engineering</a>"+


                        "</div>"+
                    "</div>"+
               " </li>"+

                "<li class='nav-item active'>"+
                   " <a class='nav-link' href='cart.jsp'><i class='fa fa-cart-plus mr-2' aria-hidden='true'></i> Cart </a>"+
              "  </li>"+
                "<li class='nav-item dropdown'>"+
                   " <a class='nav-link pr-0' href='#' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>"+
                       " <div class='media align-items-center mr-2'>"+
                           " <span class='avatar avatar-sm rounded-circle'>"+
                "<img alt='Image placeholder' width='30px' height='30px' src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROpOeObfCY7uDG2q4Dqum7wQPVxrJ3KPFDSA&usqp=CAU'>"+
                "</span>"+

                       " </div>"+
                   " </a>"+
                   " <div class='dropdown-menu dropdown-menu-arrow dropdown-menu-right'>"+
                      "  <div class=' dropdown-header noti-title'>"+
                      "      <h6 class='text-overflow m-0'></h6>"+
                      "  </div>"+
                      "  <p class='dropdown-item'>"+
                         "   <i class='fa fa-user-circle mr-2' aria-hidden='true'></i>"+
                          "  <span>  "+  
                    " "+name+" "+
               " </span>"+
                       " </p>"+
                       " <p class='dropdown-item'><i class='fa fa-envelope mr-2' aria-hidden='true'></i>"+
                          "  <span>   "+email+"</span>"+
                       " </p>"+
                       " <a class='dropdown-item' href='profilesetting.jsp'>"+
                         "   <i class='fa fa-play-circle-o mr-2' aria-hidden='true'></i> <span>Profile setting</span>"+
                        "</a>"+
                        "<div class='dropdown-divider'></div>"+
                     "   <a class='dropdown-item' href='myorder.jsp'>"+
                         "   <i class='fa fa-first-order mr-2' aria-hidden='true'></i> <span>My Order</span>"+
                       " </a>"+
                       " <a class='dropdown-item' href='login.jsp'>"+
                       "     <i class='fa fa-long-arrow-left mr-2' aria-hidden='true'></i> <span>Logout</span>"+
                       " </a>"+
                  "  </div>"+
              "  </li>"+
         "   </ul>"+
      "  </div>"+
    "</nav>";
out.print(html);
%>