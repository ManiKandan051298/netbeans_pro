

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    String html="   <!-- footer -->"+
   " <footer class='bg-primary'>"+
        "<div class='container'>"+
            "<div class='row '>"+
               " <div class='col-md-4 text-center text-md-left '>"+

                  "  <div class='py-0'>"+
                    "    <h3 class='my-4 text-white'>About<span class='mx-2 font-italic text-warning '>Purple Books</span></h3>"+

                    "    <p class='footer-links font-weight-bold'>"+
                     "       <a class='text-white' href='index.html'>Home</a> |"+
                     "       <a class='text-white' href='#dropdownMenuButton'>Category</a> |"+
                     "       <a class='text-white' href='cart.html'>Cart</a> |"+
                     "       <a class='text-white' href='#'>Contact</a>"+
                      "  </p>"+
                    "    <p class='text-light py-4 mb-4'>&copy;2020 Purple Books Pvt. Ltd.</p>"+
                 "   </div>"+
              "  </div>"+

              "  <div class='col-md-4 text-white text-center text-md-left '>"+
                    "<div class='py-2 my-4'>"+
                     "   <div>"+
                     "       <p class='text-white'> <i class='fa fa-map-marker mx-2 '></i> 309, A - 1, 1st main road, Moolakadai Chennai - 400710</p>"+
                     "   </div>"+

                      "  <div>"+
                     "       <p><i class='fa fa-phone  mx-2 '></i> +91 86670 34067</p>"+
                     "   </div>"+
                     "   <div>"+
                      "      <p><i class='fa fa-envelope  mx-2'></i><a href='purplebookspvt.ltd@gmail.com' class='text-white'>purplebookspvt.ltd@gmail.com</a></p>"+
                     "   </div>"+
                  "  </div>"+
                "</div>"+

                "<div class='col-md-4 text-white my-4 text-center text-md-left '>"+
                 "  <span class=' font-weight-bold '>About the Company</span>"+
                   " <p class='text-warning my-2'>We offer Books at low cost, as soon as possible, and good quality.</p>"+
                  "  <a class='text-warning my-2' target='_blank' href='https://play.google.com/store/apps/details?id=com.purplebookspvtltd.org&hl=en_IN&gl=US'> Mobile application also..</a>"+

                "    <div class='py-2'>"+
                  "      <a href='#'><i class='fa fa-facebook fa-2x text-light mx-3'></i></a>"+
                "        <a href='#'><i class='fa fa-google-plus fa-2x text-success mx-3'></i></a>"+
                "        <a href='#'><i class='fa fa-twitter fa-2x text-info mx-3'></i></a>"+
                   " <a href='#'><i class='fa fa-youtube fa-2x text-danger mx-3'></i></a>"+
                  "  </div>"+
             "   </div>"+
       "     </div>"+
  "     </div>"+
  "  </footer>";
out.print(html);
%>