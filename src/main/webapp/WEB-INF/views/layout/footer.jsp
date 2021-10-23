 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
 <!-- Page Footer-->
            <footer class="section footer-advanced bg-gray-dark">
              <div class="footer-advanced-aside">
                <div class="container">
                  <div class="footer-advanced-layout">
                    <div>
                      <ul class="list-nav"> 
                        <li><a href="/">홈</a></li>
                        <li><a href="<c:url value='/libraryInfo/libraryMap'/>">도서관 정보</a></li>
                        <li><a href="<c:url value='/bookReview/reviewList'/>">도서리뷰</a></li>
                        <li><a href="<c:url value='/bookSearch/bookSearch'/>">도서정보</a></li>
                        <li><a href="/bookReview/reviewRank">랭킹보기</a></li>
                        <li><a href="<c:url value='/bookChat/nonfaceDebateCollect'/>">토론모임</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="container">
                <hr>
              </div>
              <div class="footer-advanced-aside">
                <div class="container">
                    <!-- Rights-->
                    <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>All Rights Reserved.</span><span>&nbsp;</span><br class="d-sm-none"/><a href="privacy-policy.html">Privacy Policy</a></p>
                  </div>
                </div>
              </div>
            </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="/resources/js/core.min.js"></script>
    <script src="/resources/js/script.js"></script>
  </body>
</html>